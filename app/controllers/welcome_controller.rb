class WelcomeController < ApplicationController

def index
  @datasetCount=Dataset.all.count
  @datumCount=Datum.all.count
end
  
end
