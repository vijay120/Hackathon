class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  before_filter :get_page
  
    def get_page
      @page = Page.find(params[:page_id])
    end

    def _index
      @comments = @page.comments

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @comments }
      end
    end

    # GET /comments/1
    # GET /comments/1.json
    def show
      @comment = @page.comments.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: [@page, @comment] }
      end
    end

    # GET /comments/new
    # GET /comments/new.json
    def new
      @comment = Comment.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @comment }
      end
    end

    # GET /comments/1/edit
    def edit
      @comment = @page.comments.find(params[:id])
    end

    # POST /comments
    # POST /comments.json
    def create
      @comment = @page.comments.new(params[:comment])
      @dorm = session[:dorm]
      @floor = session[:floor]
      @number = session[:number]
      respond_to do |format|
        if @comment.save
          format.html { redirect_to "/#{@dorm}/#{@floor}/#{@number}/", notice: 'Comment was successfully created.' }
        else
          format.html { render action: "new" }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /comments/1
    # PUT /comments/1.json
    def update
      @comment = @page.comments.find(params[:id])

      respond_to do |format|
        if @comment.update_attributes(params[:comment])
          format.html { redirect_to page_path(@page), notice: 'Comment was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /comments/1
    # DELETE /comments/1.json
    def destroy
      @comment = @page.comments.find(params[:id])
      @comment.destroy

      respond_to do |format|
        format.html { redirect_to page_path(@page) }
        format.json { head :ok }
      end
    end
  end
