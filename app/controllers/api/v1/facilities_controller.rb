class Api::V1::FacilitiesController < ApplicationController
  skip_before_action :authorized

  def index
    facilities = Facility.all
    render json: facilities
  end
end
