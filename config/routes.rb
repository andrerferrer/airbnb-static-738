Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: :nickname

  # both below are the same
  get "/", to: "flats#index", as: :flats
  # root to: "flats#index", as: :flats

  get "/flats/:id", to: "flats#show", as: :flat

end


# HTTP AND AJAX LECTURE
# Restful (REST) pattern
# VERB - ACTION
# GET - READ
# POST - CREATE
# PUT/PATCH - UPDATE
# DELETE - DESTROY
