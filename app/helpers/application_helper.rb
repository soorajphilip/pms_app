module ApplicationHelper

  def active_link url
    'active' if current_page?(url)
  end
end
