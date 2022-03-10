class AddressesController < ApplicationController
    before_action :set_address, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :check_ownership, only: [:show, :edit, :update, :destroy]

    def index
        @addresses = Address.all
    end

    def show
        @address = Address.find(params[:id])
    end

    def new
        @address = Address.new
    end

    def create
        Address.create(street_number: params[:street_number], street_name: params[:street_name], suburb: params[:suburb], state: params[:state], postcode: params[:postcode], user: current_user)
        redirect_to games_path
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
        @address = Address.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def address_params
    #     params.require(:address).permit(:street_number, :street_name, :suburb, :state, :postcode)
    #   end

    def check_ownership
        if !(current_user.admin? or current_user.id == @address.user_id)
          redirect_to games_url, alert: "You have to be the authorised user or an admin to do this."
        end
    end
end
