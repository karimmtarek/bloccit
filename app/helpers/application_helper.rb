module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def error_class?(errors)
    'has-error' if errors.any?
  end

  def my_name
    "Karim Tarek"
  end
end
