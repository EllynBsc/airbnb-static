require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def index
    # url = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json").read
    # @flats = JSON.parse(url)
    # set_flats
  end

  def show
  # raise
  # url = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json").read
  #   @flats = JSON.parse(url)
  # set_flats
    @flat = @flats.find do |flat_baby_hash|
      flat_baby_hash['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    url = open("https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json").read
    @flats = JSON.parse(url)
  end
end
