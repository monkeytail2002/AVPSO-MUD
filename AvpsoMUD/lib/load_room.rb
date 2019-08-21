

def room(rooms)
  contentsArea = []

  Dir.glob('../areas/*.txt').each do |filename|
    next if File.directory?(filename)
    lines = IO.readlines(filename)
    contentsArea.concat(lines)
    rooms = contentsArea
    @rooms = rooms
    puts @rooms
  end
end

def rooms
  @rooms
end


room(rooms)