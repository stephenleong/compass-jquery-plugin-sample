class Ical::CalendarsController < ApplicationController
  layout 'ical'
  
  protect_from_forgery
  
  make_resourceful do
    actions :all
    
    response_for :show do |format|
      format.html
      format.ics { render :text => @current_object.to_ics() }
    end
    
    response_for :create, :update, :destroy do |format|
      format.html { redirect_to ical_calendars_path }
    end
    
  end
end
