class MoviesController < ApplicationController
  def movies_index
    @list_of_movies = Movie.all
    render({ :template => "movies_templates/movies_index.html.erb"})
  end

  def movies_details
    the_id = params.fetch("an_id")
    @the_movie = Movie.where({ :id => the_id}).at(0)
    render({ :template => "movies_templates/movie.html.erb"})
  end
end
