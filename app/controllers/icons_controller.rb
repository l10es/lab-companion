class IconsController < ApplicationController
  def register
    @icon = Icon.new
    @member = Member.find(current_member.id)
  end

  # PUT /icons/update
  # PUT /icons/update.json
  def update
    if !params[:file].nil?
      @icon = Icon.find_by_member_id(current_member.id)
      @icon.destroy if @icon
      @member = Member.find(current_member.id)
      if params[:file]
        @file = params[:file][:upload]
        if @file && @file.respond_to?(:original_filename)
          face_params = {
            :member_id => @member.id,
            :name => @file.original_filename,
            :content_type => @file.content_type,
            :content => @file.read
          }
          @icon = Icon.new(face_params)
        end
      end
      if @icon.save
        respond_to do |format|
          format.html { redirect_to  edit_member_path( :id => current_member.id ),
            :notice => 'Face Icon was successfully uploaded.' }
          format.json { render @member, status: :created, location: @member }
        end
      else
        respond_to do |format|
          format.html { render action: "register", :alert => 'Failed to register face icon.' }
          format.json { render json: @icon.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to  edit_member_path( :id => current_member.id ),
           :notice => 'Face Icon has not been changed.' }
        format.json { render json: @icon.errors, status: :unprocessable_entity }
      end
    end
  end

end
