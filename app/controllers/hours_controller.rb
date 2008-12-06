class HoursController < ApplicationController
  # GET /hours
  # GET /hours.xml
  def index
    @hours = Hours.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hours }
    end
  end

  # GET /hours/1
  # GET /hours/1.xml
  def show
    @hours = Hours.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hours }
    end
  end

  # GET /hours/new
  # GET /hours/new.xml
  def new
    @hours = Hours.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hours }
    end
  end

  # GET /hours/1/edit
  def edit
    @hours = Hours.find(params[:id])
  end

  # POST /hours
  # POST /hours.xml
  def create
    @hours = Hours.new(params[:hours])

    respond_to do |format|
      if @hours.save
        flash[:notice] = 'Hours was successfully created.'
        format.html { redirect_to(@hours) }
        format.xml  { render :xml => @hours, :status => :created, :location => @hours }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hours.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hours/1
  # PUT /hours/1.xml
  def update
    @hours = Hours.find(params[:id])

    respond_to do |format|
      if @hours.update_attributes(params[:hours])
        flash[:notice] = 'Hours was successfully updated.'
        format.html { redirect_to(@hours) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hours.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.xml
  def destroy
    @hours = Hours.find(params[:id])
    @hours.destroy

    respond_to do |format|
      format.html { redirect_to(hours_url) }
      format.xml  { head :ok }
    end
  end
end
