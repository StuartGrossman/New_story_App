class StoriesController < ApplicationController
  before_action :authenticate_user!, :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
    @hash = Gmaps4rails.build_markers(@stories) do |story, marker|
      marker.lat story.latitude
      marker.lng story.longitude
      # marker.picture @picture
      marker.infowindow "<a href='/stories/#{story.id}'>#{story.story_title}</a>"
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Story.find(params[:id])

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
    @story = Story.new(story_params.merge(:user_id => current_user.id))
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
      params.require(:story).permit(:story_title, :image, :story_address, :longitude, :latitude, :story_text)
    end
end
