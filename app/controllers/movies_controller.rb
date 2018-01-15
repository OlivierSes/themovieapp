class MoviesController < ApplicationController
  def index
    @movies = Tmdb::Movie.find(params[:search])
  end

  def show
  end

  def new
  end

  def destroy
  end
end


# Below movie commands from TMDB
# movie = Tmdb::Movie.detail(550)
# movie.adult => false
# movie.backdrop_path => "/8uO0gUM8aNqYLs1OsTBQiXu0fEv.jpg"
# movie.belongs_to_collection => nil
# movie.budget => 63000000
# movie.genres => [{"id"=>28, "name"=>"Action"}, {"id"=>18, "name"=>"Drama"}, {"id"=>53, "name"=>"Thriller"}]
# movie.homepage => ""
# movie.id => 550
# movie.imdb_id => "tt0137523"
# movie.original_title => "Fight Club"
# movie.overview => "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion."
# movie.popularity => 7.4
# movie.poster_path => "/2lECpi35Hnbpa4y46JX0aY3AWTy.jpg"
# movie.production_companies => [{"name"=>"20th Century Fox", "id"=>25}, {"name"=>"Fox 2000 Pictures", "id"=> 711}, {"name"=>"Regency Enterprises", "id"=>508}]
# movie.production_countries => [{"iso_3166_1"=>"DE", "name"=>"Germany"}, {"iso_3166_1"=>"US", "name"=>"United States of America"}]
# movie.release_date => "1999-10-14"
# movie.revenue => 100853753
# movie.runtime => 139
# movie.spoken_languages => [{"iso_639_1"=>"en", "name"=>"English"}]
# movie.status => "Released"
# movie.tagline => "How much can you know about yourself if you've never been in a fight?"
# movie.title => "Fight Club"
# movie.vote_average => 8.8
# movie.vote_count => 234
