class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    check_if_profile_complete
    @room = Room.new
  end

  def check_if_profile_complete
    if current_user.nil?
      flash[:error] = "Your didn't login yet, pls login to proceed !!"
      redirect_to root_path
      return false
    end
    # @attr = Profile.where("name like ?", "%#{current_user.name[0,2]}%")
    # @status = @attr.all? {|k,v| !v.nil?}
    #   if !@status
    #     flash[:error] = "Your profile is incomplete, update it !!"
    #     redirect_to profiles_path
    #     return false
    #   end
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    image1=params[:room][:photo]
    if !image1.nil? then
      image1=params[:room][:photo].original_filename
      @room.photo = image1
    end
    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def room_params
    image1=params[:room][:photo]
    if !image1.nil? then
      image1=params[:room][:photo].original_filename
      directory = "public/PostImages"
      path = File.join(directory, image1)
      File.open(path, "wb") { |f| f.write(params[:room][:photo].read) }
    end
    params.require(:room).permit(:office_type, :accomodate, :no_of_seats, :no_of_additional_rooms, :isfeatured, :location, :listing_name, :listing_summary, :listing_address, :photo, :isinternet, :iscanteen, :issportsroom, :ismediationhall, :ispowerbackup, :isparking, :isauditorium)
  end
end
