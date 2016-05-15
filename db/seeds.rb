require 'faker'


20.times do
  movie = Movie.new
  movie.title = Faker::Book.title
  movie.director = Faker::Book.author
  movie.year = Random.new.rand(1900..2016)
  movie.synopsis = Faker::Lorem.paragraph
  movie.duration = Random.new.rand(60..180)
  movie.save
  10.times do
    review = Review.new
    review.description = Faker::Lorem.paragraph
    review.author = Faker::Name.first_name 
    review.stars = Random.new.rand(1..5)
    review.movie = movie
    review.save
  end
end