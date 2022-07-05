class ThingsController < ApplicationController

  def index
    array = Array.new
    things = Thing.all
    things.each do |thing|
      array << { id: thing.id, title: thing.title, year: thing.year, plot: thing.plot }
    end
    render json: array.as_json
  end

  def find_thing
    things = Thing.find_by(id: params["id"])
    render json: things.as_json
  end

  def create
    things = Thing.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    )
    Thing.save
    render json: things.as_json
  end

  def update
    things = Thing.find_by(id: params["id"])

    thing.title = params["title"] || thing.title
    thing.year = params["year"] || thing.year
    thing.plot = params["plot"] || thing.plot

    thing.save
    render json: thing.as_json
  end

  def destroy
    thing = Thing.find_by(id: params["id"])
    thing.destroy
    render json: { message: "thing was deleted!" }
  end

  def home
    if params[:wildcard] == "hello"
      render :json {message: "'Well hello there...' - Obi-Wan"}
    elsif params[:wildcard] == "goodbye"
      render :json {message: "'Where We Go From There Is A Choice I Leave To You.' - Neo"}
    elsif params[:wildcard] == "123"
      render :json {message: "456"}
  end
end

