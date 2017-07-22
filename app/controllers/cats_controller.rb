class CatsController < ApplicationController

  def index
    if params[:name]
      @cats = Cat.search(params[:name])
    else
      @cats = Cat.all
    end
      json_response(@cats)
  end

  def random
    @cat = Cat.random
    json_response(@cat)
  end

  def show
     @cat = Cat.find(params[:id])
     json_response(@cat)
   end

   def create
     @cat = Cat.new(cat_params)
     if @cat.save
     json_response(@cat, :created)
   else
     render status: 422, json: {
       message: "Creation of cat did not meet required validations"
     }
   end
  end

   def update
     if @cat.update!(cat_params)
       render status: 200, json: {
         message: "Your cat has been updated successfully."
       }
     end
   end

   def destroy
     @cat = Cat.find(params[:id])
     @cat.destroy
   end

   private
   def json_response(object, status = :ok)
     render json: object, status: status
   end

   def cat_params
     params.permit(:name, :breed, :age)
   end
 end
