class DatasetsController < ApplicationController
  def new
    @dataset=Dataset.new()
  end


  def create
  @dataset = Dataset.create(dataset_params)


  respond_to do |format|
    if  @dataset.save
      format.html {redirect_to @dataset}
    else
      format.html  {render 'new'}
      format.json { render json: @dataset.errors.full_messages }
    end
  end
end


def show
  @dataset = Dataset.find_by_pubId(params[:pubId])


end

def restShow
  @dataset = Dataset.find_by_pubId(params[:pubId])
  respond_to do |format|
      format.html  {render json: @dataset}
    end

end



private
  def dataset_params
    params.require(:dataset).permit(:name, :managed,:open)
  end
end
