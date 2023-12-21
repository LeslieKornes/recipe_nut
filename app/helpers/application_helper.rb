module ApplicationHelper

  def nav_link_to(text, url, options={})
    link_to(text, url, options.merge(class: url))
  end

  def nav_link_class(url)
    page_active?(url) ? "active" : ""
  end
end
