require_dependency "taiwan_city/application_controller"

module TaiwanCity
  class DataController < ApplicationController
    def show
      I18n.locale=session[:locale]
      data = TaiwanCity.list(params[:id])
      render json: data, layout: nil
    end

    def index
    end
  end
end
