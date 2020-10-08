class HomepageController < ApplicationController
  def index
    render json: {status: 'testing'}
  end
end