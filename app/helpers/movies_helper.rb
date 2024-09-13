module MoviesHelper
  def sortable(column, title = nil)
    title = title || column.titleize
    direction = (column == session[:sort] && session[:direction] == "asc") ? "desc" : "asc"
    # css_class = column == session[:sort] ? "current " : nil
    css_class = column == session[:sort] ? (session[:direction] == "asc" ? "current-asc" : "current-desc") : nil
    arrow = column == session[:sort] ? (session[:direction] == "asc" ? "↓": "↑" ) : ""
    # link_to title, sort: column, direction: direction
    link_to "#{title} #{arrow}".html_safe, { sort: column, direction: direction }, { class: css_class }
  end
end
