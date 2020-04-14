class CargoTrain < Train

  def initialize(number, speed = 0)
    @number = number
    @wagons = []
    @speed = speed
    @type = 'cargo'
  end

  def take_wagon(wagon)
    if @speed.zero? && wagon.type == 'cargo'
      @wagons.push(wagon)
    elsif wagon.type != 'cargo'
      puts 'Only cargo wagons can be taken by cargo train'
    else
      puts 'please, stop the train before taking wagon'
    end
  end

end