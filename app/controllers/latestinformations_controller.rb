class LatestinformationsController < ApplicationController
  
def show
   @latestinformation =  Latestinformation.find(params[:id])
end   
end
