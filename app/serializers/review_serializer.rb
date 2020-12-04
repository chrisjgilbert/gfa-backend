class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attribute :rating
end
