class CompaniesController < ApplicationController
    before_action :set_company, only: [:show, :update, :edit]
    def index
    @companies=Company.all
    end
    def new
    @company=Company.new
    end
    def create
    @company=Company.create(company_params)
    byebug
    redirect_to companies_path
    end


    private
    def set_company
        @company=Company.find(params.require[:id])

    end
    def company_params
        params.require(:company).permit(:name, offices_attributes: [
            :building_id,
            :offices,
            :company_id
        ])
    end
end