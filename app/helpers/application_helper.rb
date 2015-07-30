module ApplicationHelper

  def full_title(page_title = '')
    base_title = "AllyBaBa"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
    end
  end
end
