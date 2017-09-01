class MembersController < ApplicationController
  def index
    @members = Member.all
    render :index
  end
  def show
    @clan = Clan.find(params[:clan_id])
    @member = @clan.members.find(params[:id])
    render :show
  end

  def new
    @clan = Clan.find(params[:clan_id])
    @member = @clan.members.new
  end

  def create
    @clan = Clan.find(params[:clan_id])
    @member = @clan.members.new(member_params)
    if @member.save
      redirect_to clan_path(@member.clan)
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
