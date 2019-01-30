require 'pry'

class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address, rooms = [])
    @price = price
    @address = address
    @rooms = rooms
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(room_cat)

  end

  def house_area
    @rooms.map do |room|
      room.area *= @rooms
    end
  end
 end
