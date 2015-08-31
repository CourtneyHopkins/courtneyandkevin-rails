module Sluggable
  def set_slug
    if slug.nil?
      s = title.downcase.gsub( ' ', '-' )
      records_present = 0
      while self.class.find_by( slug: s ).present?
        records_present += 1
        split_s = s.split( '-' )
        s = split_s[ 0...split_s.count - 1 ].join( '-' )
        s += "-#{ records_present }"
      end
      self.slug = s
    end  
  end    
end
