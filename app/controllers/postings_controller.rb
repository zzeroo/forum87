class PostingsController < ApplicationController
  # GET /postings
  # GET /postings.xml
  def index
    @postings = Posting.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @postings }
    end
  end

  # GET /postings/1
  # GET /postings/1.xml
  def show
    @posting = Posting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @posting }
    end
  end

end
