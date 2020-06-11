class BuildingsController < ApplicationController

    def show
    set_building
    end
    def index
    @buildings=Building.all
    end
    def edit
    set_building
    end
    def update
        set_building
    @building.update(building_params)
    redirect_to building_path(@building)
    end


private

  def  set_building
    @building=Building.find(params[:id])
  end
  
  def building_params
    params.require(:building).permit(:name,
                                    :country,
                                    :address,
                                    :rent_per_floor,
                                    :number_of_floor)
  end
end