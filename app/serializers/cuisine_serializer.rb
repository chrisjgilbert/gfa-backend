class CuisineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
