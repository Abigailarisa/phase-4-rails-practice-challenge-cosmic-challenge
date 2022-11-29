class PlanetsController < ApplicationController

    def index
        render json: Planet.all, status: :ok
    end

    # def create
    #    planet = Planet.create!(planet_params)
    #     render json:planet, status: :created
    # end
end
