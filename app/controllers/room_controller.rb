class RoomController < ApplicationController
    def floor
        #image file of specific dorm
        name = params[:dorm] + params[:floor]
        @floor_plan =  name + '.jpg'
        # @floor_plan = 'floorplan.png'
        render name
    end

    
    def room
        @dorm = params[:dorm]
        @floor = params[:floor]
        @room = params[:room]
    end

end
