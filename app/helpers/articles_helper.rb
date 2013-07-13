module ArticlesHelper
  # Outputs given announcement in HTML (with optional twitter bootstrap style).
  #
  # Basic usage: <%= announce Announcement.newest %>
  # Alt usage: <%= announce Announcement.newest, :format => "boostrap" %>
  #
  # Options:
  # div_class -- name for a custom div class, which wraps the announcement text and hide message, default is "info"
  # hide_message -- clickable text which hides the announcement, default is "hide message"
  # format[:boostrap] -- format announcement to use the twitter bootstrap Alert style, defaults to normals stylings.
  # alert_heading -- Adding an alert heading when used with the bootstrap option.
  def announce article, options = {}
    result = nil
    data_attribute = { :articleid => article.id }

    if article != nil && cookies['article_' + article.id.to_s] != 'hidden'
      if options[:format] == 'bootstrap'
        text = options[:hide_message] || 'x'
        div_class = options[:div_class] || 'alert alert-block'
        alert_heading = article.body

        close_content_tag = content_tag(:a, text, :class => 'close', data: data_attribute)
        alert_content_tag = content_tag(:h4, alert_heading, :class => 'alert-heading')

        result = content_tag(:div, close_content_tag + alert_content_tag + link_to('Read More',article_path(article)), class: div_class)
      else
        text = options[:hide_message] || 'hide message'
        div_class = options[:div_class] || 'info'

        close_content_tag = content_tag(:span, text, :class => 'hide_article', data: data_attribute)

        result = content_tag(:div, link_to('Read More',article_path(article)) + close_content_tag, class: div_class)
      end
    end

    result
  end

end
