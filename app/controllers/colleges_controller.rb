class CollegesController < ApplicationController

  def new
    @college = College.new
  end

  def create
    @college = College.new(college_params)
    if @college.save
      flash[:notice] = "College was successfully created"
      redirect_to @college
    else
      render 'new'
    end
  end

  def index
  end

  def show
  end

  private

  def college_params
    params.require(:college).permit(:college_name)
  end
  
end