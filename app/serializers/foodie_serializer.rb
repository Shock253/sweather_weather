class FoodieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :end_location, :travel_time, :forecast, :resturant
end
