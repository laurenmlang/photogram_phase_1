Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Route to create new record
  get("/photos/new", { :controller => "photos", :action => "new_form" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Route to delete photo
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })


end

