class CountriesController < ApplicationController

def index
  @countries = Country.all
end

def new
    @country = Country.new
end

def create
     country = params[:country].permit(:country, :country_code, :fed_name, :fed_address, :fed_city, :telephone, :email, :president, :website, :flag)
     Country.create(player)
     redirect_to admins_path
end

def show
     id = params[:id]
     @country = Country.find(id)
end

def edit
  id = params[:id]
  @country = Country.find(id)

end

   def update
     country = Country.find(params[:id])
     country.update_attributes(params.require(:country).permit(:country, :country_code, :fed_name, :fed_address, :fed_city, :telephone, :email, :president, :website, :flag))
     redirect_to admins_path
   end

   def destroy
     id = params[:id]
     @country = Country.find(id)
     @country.destroy
     redirect_to admins_path
   end



end


