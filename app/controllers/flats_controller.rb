require "open-uri"

class FlatsController < ApplicationController
  def index
    @flats = fetch_flats
  end

  def show
    flats = fetch_flats

    id = params['id'].to_i

    @flat = flats.find { |flat| flat['id'] == id }
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(open(url).read)
  end
end
