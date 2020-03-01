# frozen_string_literal: true

require 'jhall_palindrome/version'

module JhallPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include JhallPalindrome
end

class Integer
  include JhallPalindrome
end
