module ApplicationHelper
  def right_url(url)
    return url if ['jpg', 'png', 'jpeg'].include? url.split('.').last
    "no_image.jpg"
  end
end
