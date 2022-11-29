class MissionsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found
rescue_from ActiveRecord::RecordInvalid, with: :invalid
    def index
        render json: Mission.all, status: :ok
    end

    # def show
    #     mission = Mission.find(params[:id])
    #     render json: mission, serializer: missionPlanetSerializer, status: :ok
    # end

    def create
        mission = Mission.create!(mission_params)
        render json: mission, status: :created
    end

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end
end
