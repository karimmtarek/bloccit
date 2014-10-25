module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extentions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extentions)
    (redcarpet.render text).html_safe
  end

  def is_up_voted(post)
    'up-voted' if (current_user.voted(post) && current_user.voted(post).up_vote?)
  end

  def is_down_voted(post)
    'down-voted' if (current_user.voted(post) && current_user.voted(post).down_vote?)
  end

  def error_class(errors)
    'has-error' if errors.any?
  end

  def my_name
    "Karim Tarek"
  end
end
