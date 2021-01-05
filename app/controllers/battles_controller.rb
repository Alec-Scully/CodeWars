class BattlesController < ApplicationController

    def index
        @battles_controllers = Battles_Controller.all
    end

    def show 
        @battles_controller = Battles_Controller.find(params[:id])
    end
    

end
