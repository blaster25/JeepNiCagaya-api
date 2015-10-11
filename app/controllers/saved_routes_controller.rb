class SavedRoutesController < ApplicationController
  before_action :set_saved_route, only: [:show, :update, :destroy]

  # GET /saved_routes
  # GET /saved_routes.json
  def index
    @saved_routes = SavedRoute.all

    render json: @saved_routes
  end

  # GET /saved_routes/1
  # GET /saved_routes/1.json
  def show
    render json: @saved_route
  end

  # POST /saved_routes
  # POST /saved_routes.json
  def create
    @saved_route = SavedRoute.new(saved_route_params)

    if @saved_route.save
      render json: @saved_route, status: :created, location: @saved_route
    else
      render json: @saved_route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_routes/1
  # PATCH/PUT /saved_routes/1.json
  def update
    @saved_route = SavedRoute.find(params[:id])

    if @saved_route.update(saved_route_params)
      head :no_content
    else
      render json: @saved_route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_routes/1
  # DELETE /saved_routes/1.json
  def destroy
    @saved_route.destroy

    head :no_content
  end

  private

    def set_saved_route
      @saved_route = SavedRoute.find(params[:id])
    end

    def saved_route_params
      params.require(:saved_route).permit(:start, :end, :route, :fare)
    end
end
