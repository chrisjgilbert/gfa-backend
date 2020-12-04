class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attribute :rating, :gluten_free_range, :value, :service, :content
end
