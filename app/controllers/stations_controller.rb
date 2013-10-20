class StationsController < ApplicationController
  before_action :set_station, only: [:index, :update, :updates, :result]
  before_action :station_params, only: :update
  def index
    
    respond_to do |format|
      format.html
      format.csv { send_data @uc.villages.to_csv }
      format.xls { send_data @uc.villages.to_csv(col_sep: '\t') }
    end
  end
  def update
     respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to uc_stations_path(@uc), notice: 'Station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uc.errors, status: :unprocessable_entity }
      end
    end
  end
  def updates
  end

  def result
  end

  private
  def set_station
    @uc = Uc.find_by_id params[:uc_id]
    @station = @uc.stations.find_by_id(params[:id])
    @grouped_candidates = @uc.candidates.group_by(&:position)
  end
  def station_params
    params.require(:station).permit(:name, 
            :votes_attributes => [:id, :voters, :candidate_id ]
          )
  end
   
end
