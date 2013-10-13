class VillagesController < ApplicationController
  def index
    @uc = Uc.find_by_id params[:uc_id]
    
  end
end
