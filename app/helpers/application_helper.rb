module ApplicationHelper
  def full_title(page_title)
    return page_title.empty? ? "License Management" : page_title
  end
end
