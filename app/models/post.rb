# frozen_string_literal: true

class Post < ApplicationRecord
  before_create :set_defaults

  validates :title, presence: true
  validates :body, presence: true

  WORDS_PER_MINUTE = 250 # average reading speed

  private

  def set_defaults
    self.views_count ||= 0
    self.read_time ||= calculate_read_time
  end

  def calculate_read_time
    word_count = body.split.size
    (word_count.to_f / WORDS_PER_MINUTE).round
  end
end
