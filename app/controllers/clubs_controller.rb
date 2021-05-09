class ClubsController < ApplicationController
    before_action :set_club, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index]
    
    def index
        @clubs = Club.all
    end

    def show
    end

    def new
        @club = Club.new
    end

    def create
        @club = Club.new(club_params)

        if @club.save
            redirect_to club_path(@club)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @club.update(club_params)
            redirect_to club_path(@club)
        else
            render :edit
        end
    end

    # Don't want users to be able to destroy clubs
    # def destroy
    #     if @club.books.empty?
    #         @club.destroy
    #         redirect_to clubs_path
    #     else
    #         redirect_to clubs_path, alert: "Please remove all the books before deleting this club"
    #     end
    # end

    private

    def club_params
        params.require(:club).permit(:name)
    end

    def set_club
        @club = Club.find(params[:id])
    end
end
