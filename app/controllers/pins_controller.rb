class PinsController < ApplicationController

   before_action :authenticate_user!

   def index
      @pin = Pin.new
      @pins = Pin.all
   end

   def new
      @pin = Pin.new
   end

   def create
     @pin = Pin.new params.require(:pin).permit(:title, :link, :photo, :notes)
     @pin.user_id = session[:user_id]

     respond_to do |format|
       if @pin.save
         @pins = Pin.all
         @pin = Pin.new
         format.html { redirect_to @pin }
         format.js   { }
       else
         format.html { render :new }
         format.js { }
       end
     end
   end

end
