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
  
  def instagram_icon
    image_tag('instagram.png', border: 0)
  end
  
  def youtube_icon
    image_tag('youtube.png', border: 0)
  end
  
  def default_avatar
    image_tag('avatar.gif', border: 0)
  end
  
  def show_user_bg
    if current_user != nil && current_user.background_image?
      image = @user.background_image_url(:full)
      "background:#000 url(#{image}) fixed center top no-repeat;"  
    end
  end
end
