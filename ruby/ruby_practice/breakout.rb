class Tasklist

attr_accessor :due_date
attr_reader :owner

  def initialize(owner,due_date)
    @owner=owner
    @due_date=due_date
    @list={}
  end

  def add_location(location)
    if @list[location]==true
      puts "Location #{location} is already on list."
    else
      @list[location]=[]
    end
  end

  def add_task(task,location)
    add_location(location)
    if @list[location].inclide? task
      puts "You already have #{task} on your list!"
    else
      @list[location]<<task
    end
end

#Driver Code
instance=Tasklist.new("Tyler","Sunday")
puts instance
