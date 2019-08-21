
#This object reads the files found in the areas directory and combines them into the array.
def room(rooms)
  contentsArea = []

  Dir.glob('../areas/*.txt').each do |filename|  #reads the files in the directory
    next if File.directory?(filename) #Checks if the file is in the director and appends it to the filename variable if true
    lines = IO.readlines(filename) #adds the read file to the lines variable
    contentsArea.concat(lines) #concatenates the files that have been added to lines into one array
    rooms = contentsArea  #sets the rooms variable to the value of the array
    @rooms = rooms  #sets the rooms variable to an instance variable
    puts @rooms #for test display purposes until I figure this out
  end
end

#defines the instance variable
def rooms
  @rooms
end

#runs the object
room(rooms)