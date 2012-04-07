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
        @number = params[:number]

        @room = Room.find_by_

    end

  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end
