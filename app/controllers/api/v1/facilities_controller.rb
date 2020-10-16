class Api::V1::FacilitiesController < ApplicationController
  def index
    facilities = Facility.all
    render json: facilities
  end
end
