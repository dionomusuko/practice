require 'date'

firstday = Date.new(2013, 01, 01)
endday = Date.new(firstday.year, firstday.month, -1)

puts firstday.strftime("%B %Y").center(21)

puts "su mo tu we th fr sa"

wday = firstday.wday

print "  " * wday

firstday.day.upto(endday.day){|d|
    printf("%2d", d)
    wday += 1
    if wday == 7
        puts wday = 0
    end

}

