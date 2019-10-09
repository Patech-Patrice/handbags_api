class Api::V1::CollectorsController < ApplicationController

    def create
    end

    private

    def user_params
        params.permit(:name)
    end
end
