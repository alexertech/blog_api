require 'faker'

# Create 5 random posts
5.times do
  Post.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    body: Faker::Lorem.paragraph(sentence_count: 10)
  )
end

