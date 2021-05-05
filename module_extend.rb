# frozen_string_literal: true

# Module Commentable
module Commentable
  def comment
    'I love comments!'
  end
end

# Class Post
class Post
  extend Commentable

  def comment
    'I love Post comments!'
  end
end

# Class Quote
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