class MembersController < ApplicationController
  def index
    @members = Member.all
    render :index
  end
  def show
    @member = Member.find(params[:id])
    render :show
  end

  def new
    @member = Member.new
    render :new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
    render :edit
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_path
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:name, :married, :social_media, :date_of_birth, :place_of_birth, :email, :location)
  end
end
