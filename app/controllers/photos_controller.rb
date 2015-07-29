class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@id = params["id"]

  	# return the picture for the id
  	@record = Photo.find_by({ :id => @id})
  	@source = @record.source
  	@caption = @record.caption

  	render("show.html.erb")
  end

  def destroy
   	@id = params["id"]


  	# return the picture for the id
  	@record = Photo.find(@id) 	

  	@del = @record.destroy

  	render("destroy.html.erb")
  end

  def new_form
  	render("new_form.html.erb")
  end

end

