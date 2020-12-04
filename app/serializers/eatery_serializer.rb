class EaterySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :type
end
