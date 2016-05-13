class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
  end

  def show
    @photos = @room.photos

    @booked = Reservation.where("room_id = ? AND user_id = ?", @room.id, current_user.id).present? if current_user

    @reviews = @room.reviews
    @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save

      if params[:images]
        params[:images].each do |image|
          @room.photos.create(image: image)
        end
      end

      @photos = @room.photos
      redirect_to edit_room_path(@room), notice: "保存されました"
    else
      render :new
    end
  end

  def edit
    if current_user.id == @room.user.id
      @photos = @room.photos
    else
      redirect_to root_path, notice: "許可されていません"
    end
  end

  def update
    if @room.update(room_params)

      if params[:images]
        params[:images].each do |image|
          @room.photos.create(image: image)
        end
      end

      redirect_to edit_room_path(@room), notice: "更新されました"
    else
      render :edit
    end
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:home_type, :room_type, :accommodate, :bed_room, :bath_room, :listing_name, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :active, :postnumber, :address_prefecture, :address_city, :address_street, :address_others, :address_details, :monthlyprice, :monthlyprice_common, :depositmoney, :keymoney, :floor, :area, :compass, :xthfloor, :xths, :whenbuilt, :lessor_name, :lessor_address, :is_tiolet, :is_bathroom, :is_separate, :is_bidet, :is_kitchenih, :is_balcony, :is_bicyle_parking, :is_parking, :is_elevator, :is_autolock, :is_quietout, :is_quietin, :is_station, :is_convenience, :is_supermarket, :is_hospital, :is_gym, :is_sunny, :is_nosmoking, :is_waterpressure, :is_pet, :is_instrument, :is_kindness)
    end
end
