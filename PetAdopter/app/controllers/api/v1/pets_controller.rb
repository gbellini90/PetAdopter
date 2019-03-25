class Api::V1::PetsController < ApplicationController

  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    @pet = Pet.find(params[:id])
    render json: @pet, status: :ok
  end

  def create
    @pet = Party.create(pet_params)
    if @pet.valid?
      render json: @pet, status: :ok
    else
      render json: @pet.erros.full_messages, status: :unprocessable_entity
  end
end

def update
  @pet = Pet.find(params[:id])
  if @pet.update(pet_params)
    @pet.save
    @user = User.all.find{|user| user.id == @pet.owner_id}
    # @user.adopted_pets.to_a.push(@pet).join(', ')
    @user.save
    # @pets = @user.pets
    @pets = Pet.all
    render json: @pets, status: :ok
  else
    render json: @pet.errors.full_messages, status: :unprocessable_entity
  end
end

  private
    def pet_params
      params.require(:pet).permit(:name, :age, :size, :sex, :breed, :animal, :description, :photo, :shelterId, :adopted, :owner_id)
    end

end
