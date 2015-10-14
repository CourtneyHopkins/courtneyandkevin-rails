require 'fileutils'

namespace :s3 do
  desc 'Sync production image uploads to local development filesystem'
  task sync: :environment do
    bucket = ENV.fetch('AWS_S3_BUCKET')

    connection = Fog::Storage.new({provider: "AWS", aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"], aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]})

    FileUtils.rmdir "#{Rails.root}/public/uploads/development" if Dir.exists?("#{Rails.root}/public/uploads/development")

    connection.directories.get(bucket).files.each do |file|
      if file.key.include?('uploads/production/')
        file_clean_path = file.key.gsub('uploads/production/', '')

        if file_clean_path.include?('.')
          file_path = File.dirname(file_clean_path)
          FileUtils.mkdir_p("#{Rails.root}/public/uploads/development/#{file_path}")

          file_local_path = "#{Rails.root}/public/uploads/development/#{file_clean_path}"
          File.open(file_local_path, 'wb') do |local_file|
            begin
              local_file.write(file.body)
            rescue Exception => e
              puts "Could not write #{file.key} -- #{e.message}"
            end
          end
        end
      end
    end
  end
end
