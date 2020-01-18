
puts "Criando Filmes..."
10.times do |i|
    Movie.create!(
      title: Faker::Movies::HarryPotter.book,
      year: Faker::Date.between(from: 2.days.ago, to: Date.today)
      )
    end

puts "Criando Atores..."
10.times do |i|
    Actor.create!(
      name: Faker::Name.name
      )
    end

puts "Criando Atuações..."
  10.times do |i|
        Act.create!(
          movie: Movie.all.sample,
          actor: Actor.all.sample
          )
        end    

puts "Relacionando Tabelas..."

acts = Act.all

Movie.all.each do |movie|
  acts_movie = acts.find_by(movie_id: movie.id)
  if acts_movie != nil
    movie.acts << acts_movie
    movie.save!
  end
end

Actor.all.each do |actor|
  acts_actor = acts.find_by(actor_id: actor.id)
  if acts_actor != nil
    actor.acts << acts_actor
    actor.save!
  end
end


