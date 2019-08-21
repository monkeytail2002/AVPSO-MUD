def room(rooms)
  File.open('../areas/Training.txt').each do |line|
    rooms = line
    @rooms = rooms
    puts @rooms
  end
end

def rooms
  @rooms
end


room(rooms)