user = User.create! :email => "user123@gmail.com", :password => "senha123", :password_confirmation => "senha123"
puts "Criando Filmes..."
5.times do |i|
    Movie.create!(
      title: Faker::Movies::HarryPotter.book,
      year: Faker::Date.between(from: 2.days.ago, to: Date.today),
      user: User.all.sample
      )
    end

puts "Criando Atores..."
5.times do |i|
    Actor.create!(
      name: Faker::Name.name,
      user: User.all.sample
      )
    end

puts "Criando Atuações..."
  10.times do |i|
        Act.create!(
          movie: Movie.all.sample,
          actor: Actor.all.sample,
          user: User.all.sample
          )
        end

acts = Act.all
movies = Movie.all
actors = Actor.all

puts "Relacionando Filmes..."
movies.each do |movie|
  acts_movie = acts.find_by(movie_id: movie.id)
  if acts_movie != nil
    movie.acts << acts_movie
    movie.save!
  end
end
puts "Relacionando Atores..."
actors.each do |actor|
  acts_actor = acts.find_by(actor_id: actor.id)
  if acts_actor != nil
    actor.acts << acts_actor
    actor.save!
  end
end
