class Api::V1::HandbagsController < ApplicationController

 def index
    @handbags = Handbag.all

    render json: @handbags, status: 200
end

 def show
    @handbag = Handbag.find(params[:id])

    render json: @handbag, status: 200
 end
 
 def create
    @handbag = Handbag.create(handbag_params)

    render json: @handbag, status: 200
 end

 def update
    @handbag = Handbag.find(params[:id])
    @handbag.update(handbag_params)
    render json: @handbag, status: 200
 end

 def destroy
    @handbag = Handbag.find(params[:id])
    @handbag.delete 

    render json: {handbagId: @handbag.id}
 end


 private

 def handbag_params
    params.require(:handbag).permit(:body)
 end



end


