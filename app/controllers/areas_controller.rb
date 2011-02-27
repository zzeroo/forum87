class AreasController < ApplicationController
  # GET /areas
  # GET /areas.xml
  def index
    @areas = Area.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @areas }
    end
  end

  # GET /areas/1
  # GET /areas/1.xml
  def show
    @area = Area.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @area }
    end
  end

end
