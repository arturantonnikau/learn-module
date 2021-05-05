# frozen_string_literal: true
# Add Header Comment

module Commentable
  def comment
    'I love comments!'
  end
end

class Post
  extend Commentable

  def comment
    'I love Post comments!'
  end
end

class Quote
  include Commentable

  def comment
    'I love Quote comments!'
  end
end

puts Post.comment
puts Quote.new.comment

puts Post.ancestors.inspect
puts Quote.ancestors.inspect
