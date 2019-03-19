require './Gate'

class UserThread < Thread
  def initialize(gate, name, address)
    @gate = gate
    @name = name
    @address = address
    block = Proc.new do
      puts "#{@name} BEGIN"
      while true do
        @gate.pass(@name, @address)
      end
    end
    super(&block)
  end
end
