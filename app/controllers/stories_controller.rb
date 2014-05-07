class StoriesController < ApplicationController
  before_action :authenticate_user!, :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
     @hash = Gmaps4rails.build_markers(@stories) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.picture @picture
      marker.infowindow '<a href="/stories/3">Click for Story!</a>'
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = current_user.stories.new(story_params)
    if @story.save
       redirect_to @story, notice: 'Story was successfully created.' 
    else 
       redirect_to "/stories/new", notice: "COULD NOT SAVE STORY"
    end
  end



  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:story_title, :story_address, :longitude, :latitude)
    end
end
