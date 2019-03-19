class Gate
  def initialize
    @counter = 0
    @name = 'Nobody'
    @address = 'Nowhere'
  end

  def pass(name, address)
    @counter += 1
    @name = name
    @address = address
    check()
  end

  def to_s
    "No.#{@counter}: #{@name}, #{@address}"
  end

  private

  def check
    if @name[0, 1] != @address[0, 1]
      puts "***** BROKEN ***** #{self}"
      exit
    else
      puts "***** SAFE ***** #{self}"
    end
  end
end
