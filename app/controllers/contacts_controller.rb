class ContactsController < ApplicationController
  
def index
  @contacts = Contact.all
end

def new
  @contact = Contact.new
end

def create
  @contact = Contact.new(params[:contact])
     if @contact.save
       ContactMailer.registration_confirmation(@contact).deliver
       redirect_to root_path
end  
end 
end 

  
  
  

