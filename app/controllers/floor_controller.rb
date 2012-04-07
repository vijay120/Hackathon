class FloorController < ApplicationController
    def show
        @floor_plan = params[:dorm] + params[:floor]
        render 'floor'
    end
end
