module ApplicationHelper

  def full_title(page_title = '')
    base_title = "The Bulk"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def progress(num, total)
    num = num.to_f
    total = total.to_f
    percent = (num / total) * 100
  end

end
