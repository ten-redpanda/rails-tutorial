module ApplicationHelper

  # ページごとの完全なタイトルを返します。
  def full_title(page_title = "")
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def space_name(fullname = "")
    fullname_space = ""
    fullname.split("").reject(&:blank?).each_with_index do |str, i|
      next fullname_space += str if (i == 0)
      fullname_space += " " if (str == str.upcase)
      fullname_space += str
    end
    return fullname_space
  end
end
