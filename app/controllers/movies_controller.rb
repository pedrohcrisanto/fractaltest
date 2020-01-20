class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]
  before_action :reindex_movie, only: [:search]
  # GET /movies
  def index
    @movies = Movie.all.order(:id).page(params[:page].try(:[], :number))

    render json: @movies
  end
  
  def search
    data = if params[:query].blank?
      []
    else
      Movie.search(params[:query]).map do |movie|
        {
          title: movie.title,
        }
      end
    end

    render json: { data: data }
  end

  def reindex_movie
    Movie.reindex
  end
  
  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      # params.require(:movie).permit(:title, :year, :user_id)
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
