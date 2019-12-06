class AttachmentsController < ApplicationController
    before_action :authenticate_user!


   def index   
      @attachments = current_user.attachments 
   end   
      
   def new   
      @attachment = Attachment.new   
   end   
      
   def create   

    
      @attachment = current_user.attachments.build(attachment_params)
      if @attachment.save   
         redirect_to attachments_new_path, notice: "Successfully uploaded."   
      else   
         render "new"   
      end   
         
   end   
      
   def destroy   
      @attachment = Attachment.find(params[:id])   
      @attachment.destroy   
      redirect_to attachments_index_path, notice:  "Successfully deleted."   
   end   
      
   private   
      def attachment_params   
      params.require(:attachment).permit(:name, :attachment,:user)   
   end   
end


