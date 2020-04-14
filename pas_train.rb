class PassengerTrain < Train

  def initialize(number, speed = 0)
    @number = number
    @wagons = []
    @speed = speed
    @type = 'passenger'
  end

  def take_wagon(wagon)
    if @speed.zero? && wagon.type == 'passenger'
      @wagons.push(wagon)
    elsif wagon.type != 'passenger'
      puts 'Only passenger wagons can be taken by passenger train'
    else
      puts 'please, stop the train before taking wagon'
    end
  end

end
