class StatusWorksController < ApplicationController
  before_action :set_status_work, only: [:show, :edit, :update, :destroy]

  # GET /status_works
  # GET /status_works.json
  def index
    @status_works = StatusWork.all.order("etape")
  end

  # GET /status_works/1
  # GET /status_works/1.json
  def show
  end

  # GET /status_works/new
  def new
    @status_work = StatusWork.new
  end

  # GET /status_works/1/edit
  def edit
  end

  # POST /status_works
  # POST /status_works.json
  def create
    @status_work = StatusWork.new(status_work_params)

    respond_to do |format|
      if @status_work.save
        format.html { redirect_to @status_work, notice: 'Status work was successfully created.' }
        format.json { render :show, status: :created, location: @status_work }
      else
        format.html { render :new }
        format.json { render json: @status_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_works/1
  # PATCH/PUT /status_works/1.json
  def update
    respond_to do |format|
      if @status_work.update(status_work_params)
        format.html { redirect_to @status_work, notice: 'Status work was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_work }
      else
        format.html { render :edit }
        format.json { render json: @status_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_works/1
  # DELETE /status_works/1.json
  def destroy
    @status_work.destroy
    respond_to do |format|
      format.html { redirect_to status_works_url, notice: 'Status work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_work
      @status_work = StatusWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_work_params
      params.require(:status_work).permit(:etape)
    end
end
