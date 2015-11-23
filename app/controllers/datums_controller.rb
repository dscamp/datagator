class DatumsController < ApplicationController

  def new
    @datum=Datum.new()
  end


  def create
    ds=Dataset.find_by_pubId(params[:dataset_pubId])
    @datum = ds.data.create(datum_params)


    respond_to do |format|
      if  @datum.save
        format.html {render json: @datum}
      else
        format.html  {render json: @datum }
        format.json { render json: @datum.errors.full_messages }
      end
    end
  end









private
  def datum_params
    params.require(:datum).permit(:row,:dataset_pubId)
  end
end
