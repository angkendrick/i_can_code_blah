class TutorialsController < ApplicationController

  def index
    @tutorials = Tutorial.all
  end

  def create
    @tutorial = Tutorial.new(secure_params) #TODO: get user_id from user session

    if @tutorial.save
      redirect_to tutorials_path, notice: "Tutorial, #{@tutorial.name} submitted"
    else
      render :new
    end

  end

  def new
    @tutorial = Tutorial.new
  end

  def edit
    @tutorial = Tutorial.find(params[:id])
  end

  def show
    @tutorial = Tutorial.find(params[:id])
  end

  def update
    @tutorial = Tutorial.find(params[:id])

    if @tutorial.update_attributes(secure_params)
      redirect_to tutorials_path, notice: "Tutorial, #{@tutorial.name} updated"
    else
      render :edit
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])

    if @tutorial.destroy
      redirect_to tutorials_path, notice: "Tutorial, #{@tutorial.name} deleted"
    else
      render :index
    end
  end

  protected

  def secure_params
    params.require(:tutorial).permit(:user_id, :name, :description, :url, :image, :cost, :difficulty, :format, :company)
  end

end
