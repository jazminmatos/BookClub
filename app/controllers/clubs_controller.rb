class ClubsController < ApplicationController
    def index
    end

    def show
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
