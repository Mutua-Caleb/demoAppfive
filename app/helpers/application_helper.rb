module ApplicationHelper

  #returns the full helper on per page basis
  def full_title(page_title = '')
    base_title = "Ruby on Rails tutorial Sample App" # variable assignment
    if page_title.empty? # if there is no page title use the base_title instead
      base_title
    else
      page_title + " | " + base_title  # when there is a page title concatenate it with the base title
    end
  end
end
