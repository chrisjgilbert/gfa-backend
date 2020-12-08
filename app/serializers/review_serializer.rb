class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attribute :rating, :gluten_free_range, :value, :service, :content

  attribute :user do |review|
    review.username
  end

  attribute :date do |review|
    review.created_at.strftime('%A %-d %B %Y')
  end
end
