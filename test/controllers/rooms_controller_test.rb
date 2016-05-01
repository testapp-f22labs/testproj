require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { accomodate: @room.accomodate, isauditorium: @room.isauditorium, iscanteen: @room.iscanteen, isfeature: @room.isfeature, isinternet: @room.isinternet, ismediation: @room.ismediation, isparking: @room.isparking, ispowerbackup: @room.ispowerbackup, issportsroom: @room.issportsroom, listing_address: @room.listing_address, listing_name: @room.listing_name, listing_summary: @room.listing_summary, location: @room.location, no_of_additional_rooms: @room.no_of_additional_rooms, no_of_seats: @room.no_of_seats, office_type: @room.office_type, photo: @room.photo }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { accomodate: @room.accomodate, isauditorium: @room.isauditorium, iscanteen: @room.iscanteen, isfeature: @room.isfeature, isinternet: @room.isinternet, ismediation: @room.ismediation, isparking: @room.isparking, ispowerbackup: @room.ispowerbackup, issportsroom: @room.issportsroom, listing_address: @room.listing_address, listing_name: @room.listing_name, listing_summary: @room.listing_summary, location: @room.location, no_of_additional_rooms: @room.no_of_additional_rooms, no_of_seats: @room.no_of_seats, office_type: @room.office_type, photo: @room.photo }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
