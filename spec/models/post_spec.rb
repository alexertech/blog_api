require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'read_time calculation' do
    it 'calculates read time based on word count' do
      body = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' * 10 # 90 words
      post = Post.create(title: 'Test', body: body)

      # Average reading speed is 250 WPM, so 90 words should be approximately 0.36 minutes
      expect(post.read_time).to eq(0)
    end
  end
end
