=begin # 1
cute angles
write a method that takes a floating point number that represents an angle between 0 and 360 degrees
return a string that represents that angle in degrees, minutes, and seconds
use the degree symbol to represent degrees
use a single quote to represent minutes
use double qupte to represent seconds
a degree has 60 minutes while a minute has 60 seconds
P: 
  input: float integer
  output: string that represents the degree, minutes, and seconds
E:
  implicit: if the minutes or seconds are 0, use 00.  can use 0 for degree
            the degree seems to use just whole number no matter the decimal
  explicit: want all three formats with no spacing in between
            use two digit numbers with leading 0's
            the ° is used for degree, ' is used for minutes, " is used for seconds
D/A:
  the whole unit will remain the same for the degree
  multiply the decimal portion by 60, the whole number becomes the minutes
  the remainder * 60 is the seconds
=end

DEGREE = "\xC2\xB0"
def dms(integer)
  degree = integer.to_i
  to_minutes = (integer - degree) * 60
  minutes = to_minutes.to_i
  to_seconds = (to_minutes - minutes) * 60
  puts "%(#{degree}DEGREE#{minutes}'#{to_seconds}\""
    
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=begin # 2
delete vowels
=end

=begin # 3
fibonacci number location by length
=end

=begin # 4
reversed arrays (part 1)
=end

=begin # 5
reversed arrays (part 2)
=end

=begin # 6
combining arrays
=end

=begin # 7
halvsies
=end

=begin # 8
find the duplicate
=end

=begin # 9
does my list include this>
=end

=begin # 10
right triangles
=end