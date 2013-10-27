class VillagesController < ApplicationController
  def index
    @uc = Uc.find_by_id params[:uc_id]
    respond_to do |format|
      format.html
      format.csv { send_data @uc.villages.to_csv }
      format.xls { send_data @uc.villages.to_csv(col_sep: '\t') }
    end
  end
  
end
