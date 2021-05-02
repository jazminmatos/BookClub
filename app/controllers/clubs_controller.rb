class ClubsController < ApplicationController
    def index
        @clubs = Club.all
    end

    def show
        @club = Club.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def club_params
        params.require(:club).permit(:name)
    end
end
