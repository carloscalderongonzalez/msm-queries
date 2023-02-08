class ActorsController < ApplicationController
  def actors_index
    @list_of_actors = Actor.all
    render({ :template => "actors_templates/actors_index.html.erb"})
  end

  def actors_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id}).at(0)
    @characters = Character.where({ :actor_id => @the_actor.id})
    render({ :template => "actors_templates/actor.html.erb"})
  end
end
