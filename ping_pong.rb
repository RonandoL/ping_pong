Make a Fixnum .ping_pong method that returns an Array of all the numbers from 0 up to the number it was called on. But, for multiples of three, the Array contains the String "ping" instead of the number, and for multiples of five, the Array contains "pong". For numbers that are multiples of three and five, the Array contains "ping-pong".
    # Note:
    # remember to have output be an array


solution
# accounts for negative number
# also allows def to easily change parameters of 3 & 5 to any other numbers

class Fixnum
  define_method(:ping_pong) do
    ping = 3
    pong = 5

    1.upto(self.abs) do |i|
      if (i % ping == 0) && (i % pong == 0)
        puts "ping-pong"
      elsif (i % ping == 0)
        puts "ping"
      elsif (i % pong == 0)
        puts "pong"
      else
        puts i
      end
    end
  end
end


refined: multiplied ping * pong
# class Fixnum
#   define_method(:pp) do
#     ping = 3
#     pong = 5
#
#     1.upto(self.abs) do |i|
#       if (i % (ping*pong) == 0)
#         puts "ping-pong"
#       elsif (i % ping == 0)
#         puts "ping"
#       elsif (i % pong == 0)
#         puts "pong"
#       else
#         puts i
#       end
#     end
#   end
# end
