class Api::V1::CollectorsController < ApplicationController

        def index
           @collectors = Collector.all
           render json: @collectors, status: 200
       end
       
        def show
           @collector = Collector.find_by(id: params[:id])
           render json: @collector, status: 200
        end
        
        def create
          
        end
       
        
       
        
       
        private
       
        def collector_params
           params.require(:collector).permit(:name)
        end
       
       
       
end
       
       
       
   