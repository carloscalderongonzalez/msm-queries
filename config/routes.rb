Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/eldest", {:controller => "directors", :action => "wisest"})

  get("/directors/youngest", {:controller => "directors", :action => "youngest"})

  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})

  get("/movies", {:controller => "movies", :action => "movies_index"})

  get("/movies/:an_id", {:controller => "movies", :action => "movies_details"})

  get("/actors", {:controller => "actors", :action => "actors_index"})

  get("/actors/:an_id", {:controller => "actors", :action => "actors_details"})

end
