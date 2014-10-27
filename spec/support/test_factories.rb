module TestFactories
  def associated_post(options={})
    post_options = {
      title: 'post title',
      body: 'post bodies must be pretty long.',
      user: authenticated_user,
      topic: Topic.create(name: 'Topic name')
    }.merge(options)
    Post.create(post_options)
  end

  def authenticated_user(options={})
    user_options = {email: "email#{rand}@fake.com", password: 'password'}.merge(options)
    user = User.new(user_options)
    user.skip_confirmation!
    user.save
    user
  end

  def post_without_user(options={})
    post_options = {title: 'This is a post title', body: "A post body has to be a bit long."}.merge(options)
    post = Post.new(post_options)
    post.save
    post
  end

  def comment_without_email(options={})
    comment_options = {body: "A Comment"}.merge(options)
    comment = Comment.new(comment_options)
    allow(comment).to receive(:send_favorite_emails)
    comment.save
    comment
  end
end