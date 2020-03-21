class KittensController < ApplicationController

    before_action :find_kitten, only: [:show, :edit, :destroy, :update]

    def index
        @kittens = Kitten.all
    end

    def new
        @kitten = Kitten.new
    end 
    
    def create
        @kitten = Kitten.create(kitten_params)
        if @kitten.save
            flash[:notice] = "Kitten has been successfully created!"
            redirect_to kitten_path(@kitten)
        else 
            flash.now[:error] = "Kitten cannot be created"
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        @kitten.update(kitten_params)
        if @kitten.save 
            flash[:notice] = "Kitten has been successfully update!"
            redirect_to kitten_path(@kitten)
        else 
            flash.now[:error] = "Kitten cannot be updated"
            render 'new'
        end
    end

    def destroy
        @kitten.destroy 
        redirect_to kittens_path
    end

    private 

    def find_kitten
        @kitten = Kitten.find(params[:id])
    end

    def kitten_params 
        params.require(:kitten).permit(:name, :age, :softness, :cuteness)
    end
end
