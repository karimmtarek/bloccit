class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :topic

  default_scope {order('created_at DESC')}

  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {minimum: 20}, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  mount_uploader :image, ImageUploader

  # not being used at the moment, instead markdown() method in application_helper is used to conver text to markdown
  def markdown_title
    render_as_markdown(title)
  end

  def markdown_body
    render_as_markdown(body)
  end

  private

  def render_as_markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extentions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extentions)
    (redcarpet.render text).html_safe
  end
end
