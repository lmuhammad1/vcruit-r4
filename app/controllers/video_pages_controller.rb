class VideoPagesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_video_page, only: [:show, :edit, :update, :destroy]

  # GET /video_pages
  # GET /video_pages.json
  def index
    @video_pages = VideoPage.all
  end

  # GET /video_pages/1
  # GET /video_pages/1.json
  def show
  end

  # GET /video_pages/new
  def new
    @video_page = VideoPage.new
  end

  # GET /video_pages/1/edit
  def edit
  end

  # POST /video_pages
  # POST /video_pages.json
  def create
    @video_page = VideoPage.new(video_page_params)
    @video_page.profile = current_user_profile

    respond_to do |format|
      if @video_page.save
        format.html { redirect_to @video_page, notice: 'Video page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_pages/1
  # PATCH/PUT /video_pages/1.json
  def update
    respond_to do |format|
      if @video_page.update(video_page_params)
        format.html { redirect_to @video_page, notice: 'Video page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_pages/1
  # DELETE /video_pages/1.json
  def destroy
    @video_page.destroy
    respond_to do |format|
      format.html { redirect_to video_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_page
      @video_page = VideoPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_page_params
      params.require(:video_page).permit(:name, :title, :description)
    end
end