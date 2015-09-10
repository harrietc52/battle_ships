# class Board
#
#   attr_accessor :content, :shot
#
#   def initialize(content=Water.new)
#     @content = content
#     @shot = false
#   end
#
#   def add_ship(ship)
#     self.content = ship
#   end
#
#   def shoot!
#     # raise "You have already shot this grid" if shot?
#     self.shot = true
#     content.struck
#     @content = 'ship'
#   end
#
#   def shot?
#     @shot
#   end
#
# end
