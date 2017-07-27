module ApplicationHelper

  # ページタイトル
  def page_title
    title = ""
    title = @page_title + " | " + title if @page_title
    title
  end

end
