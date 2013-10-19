class ResultsController < ApplicationController
  before_action :set_uc
  def index
  end

  private #---------------------------------------
  def set_uc
    @uc = Uc.find_by_id(params[:uc_id])
    @grouped_candidates = @uc.candidates.group_by(&:position)
  end
end
