require "open-uri"

class FlatsController < ApplicationController
  # CALLBACK
  before_action :set_flats

  def index
  end

  def show
    @id = params[:id]
    # raise
    @flat = @flats.find do |flat|
      flat['id'] == @id.to_i
    end
    # send the right flat to the view
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
