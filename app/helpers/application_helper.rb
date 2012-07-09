module ApplicationHelper
  # Returns the full title on a per-page basis.
    def full_title(page_title)
      base_title = "studentathlete.me"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end
      
  # Icons for User Profile Services Section.
  def facebook_icon
    image_tag('facebook.png', border: 0)
  end
  
  def flickr_icon
    image_tag('flickr.png', border: 0)
  end
  
  def youtube_icon
    image_tag('youtube.png', border: 0)
  end
  
end
