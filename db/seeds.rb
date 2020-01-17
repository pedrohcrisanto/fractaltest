
puts "Criando User..."
User.create!(email: "user7@fractal.com", password: "userfractal", password_confirmation: "userfractal")

puts "Criando Posts..."
10.times do |i|
    Post.create!(
      user: User.all.sample,
      text:Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
      )
    end

puts "Criando Categorias..."
10.times do |i|
    Category.create!(
      name: Faker::Esport.game
      )
    end
puts "Criando Comentarios..."
10.times do |i|
    Comment.create!(
      user: User.all.sample,
      text: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
      date: Faker::Date.between(from: 20.days.ago, to: Date.today)
      )
    end

puts "Adicinando Categorias em Posts..."
posts = Post.all

posts.each do |post|
    post.update(category_id: Category.all.sample.id)
end

puts "Adicionando Posts em Categorias..."
categories = Category.all
categories.each do |category|
    category.update(post_id: Post.all.sample.id)
end

puts "Adicionando Comentarios em Posts..."
comments = Comment.all
comments.each do |comment|
    comment.update(post_id: Post.all.sample.id)
end


