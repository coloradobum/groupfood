class TripMembersController < ApplicationController
  before_action :set_trip_member, only: [:show, :edit, :update, :destroy]

  # GET /trip_members
  # GET /trip_members.json
  def index
    @trip_members = TripMember.all
  end

  # GET /trip_members/1
  # GET /trip_members/1.json
  def show
  end

  # GET /trip_members/new
  def new
    @trip_member = TripMember.new
  end

  # GET /trip_members/1/edit
  def edit
  end

  # POST /trip_members
  # POST /trip_members.json
  def create
    @trip_member = TripMember.new(trip_member_params)

    respond_to do |format|
      if @trip_member.save
        format.html { redirect_to @trip_member, notice: 'Trip member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trip_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @trip_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_members/1
  # PATCH/PUT /trip_members/1.json
  def update
    respond_to do |format|
      if @trip_member.update(trip_member_params)
        format.html { redirect_to @trip_member, notice: 'Trip member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trip_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_members/1
  # DELETE /trip_members/1.json
  def destroy
    @trip_member.destroy
    respond_to do |format|
      format.html { redirect_to trip_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_member
      @trip_member = TripMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_member_params
      params.require(:trip_member).permit(:name, :trip_id, :expenses, :description)
    end
end
