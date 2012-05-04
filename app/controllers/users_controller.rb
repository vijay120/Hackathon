class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  before_filter :get_page
  
    def get_page
      @page = Page.find(params[:page_id])
    end
    
      def _index
        @users = @page.users

        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @users }
        end
      end

      # GET /comments/1
      # GET /comments/1.json
      def show
        @user = @page.users.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: [@page, @user] }
        end
      end

      # GET /comments/new
      # GET /comments/new.json
      def new
        @user = User.new

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @user }
        end
      end

      # GET /comments/1/edit
      def edit
        @user = @page.users.find(params[:id])
      end

      # POST /comments
      # POST /comments.json
      def create
        @user = @page.users.new(params[:user])
        @dorm = session[:dorm]
        @floor = session[:floor]
        @number = session[:number]

        respond_to do |format|
          if @page.users.count >= @page.capacity  # if there no capacity left!
            
            @array = @page.users.sort {|x,y| y.roomDrawNumber <=> x.roomDrawNumber}
            
            @array.each do |i|
              if i.roomDrawNumber > @user.roomDrawNumber
                @user.save
                i.destroy
                format.html { redirect_to "/#{@dorm}/#{@floor}/#{@number}/", notice: 'Your number was good enough to bump someone out!' }
                break
              end
              format.html { redirect_to "/#{@dorm}/#{@floor}/#{@number}/", notice: 'Your number is not good enough :(' }
            end

          elsif @user.save
            format.html { redirect_to "/#{@dorm}/#{@floor}/#{@number}/", notice: 'User was successfully created.' }
          else
            format.html { render action: "new" }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      # PUT /comments/1
      # PUT /comments/1.json
      def update
        @user = @page.users.find(params[:id])

        respond_to do |format|
          if @user.update_attributes(params[:user])
            format.html { redirect_to page_path(@page), notice: 'User was successfully updated.' }
            format.json { head :ok }
          else
            format.html { render action: "edit" }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /comments/1
      # DELETE /comments/1.json
      def destroy
        @user = @page.users.find(params[:id])
        @user.destroy

        respond_to do |format|
          format.html { redirect_to page_path(@page) }
          format.json { head :ok }
        end
      end
    end
