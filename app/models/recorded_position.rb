class RecordedPosition < ActiveRecord::Base
  attr_accessible :block_id, :bus_id, :bus_route_id, :destination, :direction, :location, :reported_at, :bus_route
  belongs_to :bus_route      
end
