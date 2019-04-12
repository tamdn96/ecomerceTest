class FileExportsController < ApplicationController
  before_action :set_file_export, only: [:show, :edit, :update, :destroy]

  # GET /file_exports
  # GET /file_exports.json
  def index
    @file_exports = FileExport.all
  end

  # GET /file_exports/1
  # GET /file_exports/1.json
  def show
  end

  # GET /file_exports/new
  def new
    @file_export = FileExport.new
  end

  # GET /file_exports/1/edit
  def edit
  end

  # POST /file_exports
  # POST /file_exports.json
  def create
    @file_export = FileExport.new(file_export_params)

    respond_to do |format|
      if @file_export.save
        format.html { redirect_to @file_export, notice: 'File export was successfully created.' }
        format.json { render :show, status: :created, location: @file_export }
      else
        format.html { render :new }
        format.json { render json: @file_export.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_exports/1
  # PATCH/PUT /file_exports/1.json
  def update
    respond_to do |format|
      if @file_export.update(file_export_params)
        format.html { redirect_to @file_export, notice: 'File export was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_export }
      else
        format.html { render :edit }
        format.json { render json: @file_export.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_exports/1
  # DELETE /file_exports/1.json
  def destroy
    @file_export.destroy
    respond_to do |format|
      format.html { redirect_to file_exports_url, notice: 'File export was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_export
      @file_export = FileExport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_export_params
      params.require(:file_export).permit(:file, :description)
    end
end
