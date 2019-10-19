class SupermarketsController < ApplicationController
  def index
    render json: Supermarket.geodata.map{|r| {
      name: r.name,
      geo: JSON.parse(r.geo),
      shopClass: r.name.downcase.gsub(' ', '-')
    }}
  end
end
