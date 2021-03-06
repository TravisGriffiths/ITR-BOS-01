class SchoolsController < ApplicationController
  # GET /schools
  # GET /schools.json
  def index
  @schools = School.all
  @json = @schools.to_gmaps4rails do |school, marker|
  marker.infowindow render_to_string(:partial => "infowindow", :locals => { :school => school})
    marker.title "#{school.name}"
    marker.json({ :content => school.content, :league => school.league, :wins => school.wins,
                  :losses => school.losses, :school_id => school.id, :advertiser => @advertisers})
    marker.picture({:picture => "http://www.kilmain.com/gmaps_icons/usfootball_default2.png",
                    :width => 32,
                    :height => 32})
(params[:id])
  end
end

  def show

  @school = School.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school }
    end
  end

  # GET /schools/new
  # GET /schools/new.json
  def new
    @school = School.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @school }
    end
  end

  # GET /schools/1/edit
  def edit
    @school = School.find(params[:id])
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(params[:school])

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render json: @school, status: :created, location: @school }
      else
        format.html { render action: "new" }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schools/1
  # PUT /schools/1.json
  def update
    @school = School.find(params[:id])

    respond_to do |format|
      if @school.update_attributes(params[:school])
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    @school = School.find(params[:id])
    @school.destroy

    respond_to do |format|
      format.html { redirect_to schools_url }
      format.json { head :no_content }
    end
  end

  def gmaps4rails_infowindow
      
  end
end
