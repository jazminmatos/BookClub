class ClubsController < ApplicationController
    before_action :set_club, only: [:show, :edit, :update]
    before_action :authenticate_user!
    
    def index
        @clubs = Club.all
    end

    def show
    end

    def new
        @club = Club.new
    end

    def create
        club = Club.new(club_params)

        if club.save
            redirect_to club_path(club)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if club.update(club_params)
            redirect_to club_path(club)
        else
            render :edit
        end
    end

    def destroy
        Club.find(params[:id]).destroy
        redirect_to clubs_path
    end

    private

    def club_params
        params.require(:club).permit(:name)
    end

    def set_club
        @club = Club.find(params[:id])
    end
end
