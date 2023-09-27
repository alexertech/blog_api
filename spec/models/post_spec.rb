require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'read_time calculation' do
    it 'calculates read time based on word count' do
      body = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' * 100 # 900 words
      post = Post.create(title: 'Test', body: body)

      # Average reading speed is 250 WPM, so 900 words should be approximately 3 minutes
      expect(post.read_time).to eq(3)
    end
  end
end
