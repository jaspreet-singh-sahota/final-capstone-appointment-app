class FacilitiesController < ApplicationController
  def index
    facilities = Facility.all
    render json: facilities
  end
end
