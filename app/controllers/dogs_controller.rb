class DogsController < ApplicationController

  def index
    if params[:breed]
      @dogs = Dog.search(params[:breed])
    else
    @dogs = Dog.all
  end
    json_response(@dogs)
  end

  def show
     @dog = Dog.find(params[:id])
     json_response(@dog)
   end

   def create
     @dog = Dog.new(dog_params)
     if @dog.save
     json_response(@dog, :created)
   else
     render status: 422, json: {
       message: "Creation of dog did not meet required validations"
     }
   end
  end

   def update
     if @dog.update!(dog_params)
       render status: 200, json: {
         message: "Your dog has been updated successfully."
       }
     end
   end

   def destroy
     @dog = Dog.find(params[:id])
     @dog.destroy
   end

   private
   def json_response(object, status = :ok)
     render json: object, status: status
   end

   def dog_params
     params.permit(:name, :breed, :age)
   end
 end
