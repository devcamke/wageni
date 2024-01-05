class VisitorsController < ApplicationController
  before_action :set_visitor, only: %i[ show edit update destroy ]

  # GET /visitors
  def index
    @visitors = Visitor.all
  end

  # GET /visitors/1
  def show
  end

  # GET /visitors/new
  def new
    @visitor = Visitor.new
  end

  # GET /visitors/1/edit
  def edit
  end

  # POST /visitors
  def create
    @visitor = Visitor.new(visitor_params)

    if @visitor.save
      redirect_to @visitor, notice: "Visitor was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visitors/1
  def update
    if @visitor.update(visitor_params)
      redirect_to @visitor, notice: "Visitor was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /visitors/1
  def destroy
    @visitor.destroy!
    redirect_to visitors_url, notice: "Visitor was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitor_params
      params.require(:visitor).permit(:full_name, :phone_number, :residential_address, :gender, :comment)
    end
end
