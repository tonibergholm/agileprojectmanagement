class HourEntriesController < ApplicationController
  # GET /hours
  # GET /hours.xml
  def index
    @hour_entries = HourEntry.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hour_entries }
    end
  end

  # GET /hours/1
  # GET /hours/1.xml
  def show
    @hour_entry = HourEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hour_entry }
    end
  end

  # GET /hours/new
  # GET /hours/new.xml
  def new
    @hour_entry = HourEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hour_entry }
    end
  end

  # GET /hours/1/edit
  def edit
    @hour_entry = HourEntry.find(params[:id])
  end

  # POST /hours
  # POST /hours.xml
  def create
    @hour_entry = HourEntry.new(params[:hours])

    respond_to do |format|
      if @hour_entry.save
        flash[:notice] = 'HourEntry was successfully created.'
        format.html { redirect_to(@hour_entry) }
        format.xml  { render :xml => @hour_entry, :status => :created, :location => @hour_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hour_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hours/1
  # PUT /hours/1.xml
  def update
    @hour_entry = HourEntry.find(params[:id])

    respond_to do |format|
      if @hour_entry.update_attributes(params[:hours])
        flash[:notice] = 'HourEntry was successfully updated.'
        format.html { redirect_to(@hour_entry) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hour_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.xml
  def destroy
    @hour_entry = HourEntry.find(params[:id])
    @hour_entry.destroy

    respond_to do |format|
      format.html { redirect_to(hour_entry_url) }
      format.xml  { head :ok }
    end
  end
end
