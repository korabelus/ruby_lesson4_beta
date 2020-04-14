# создал класс железной дороги, чтобы реализовать текстовый интерфейс пользователем
class Railroad
  attr_reader :cargo_trains, :pas_trains, :routes, :stations, :pas_wagons, :cargo_wagons
#создал все необходимые массивы при инициализации экземпляра класса
  def initialize
    @cargo_trains = []
    @pas_trains = []
    @routes = []
    @stations = []
    @pas_wagons = []
    @vargo_wagons = []
  end
#по сути запускает интерфейс выбора, реализован не до конца, предполагаю в будущем его зациклить
  def choice
    puts 'Please, make your choice'
    puts '0 - to create a station'
    puts '1 - to create a train'
    puts '2  - to create route'
    puts 'exit - to exit game'
    choice = gets.chomp
    self.create_station if choice == '0'
    self.create_train if choice == '1'
    self.create_route if choice == '2'
  end

  def create_station
    puts 'Please, enter station name'
    station_name = gets.chomp
    @stations.push(Station.new(station_name))
  end

  def create_train
    puts 'please, enter type of wagon, cargo or passenger'
    train_type = gets.chomp
  
    if train_type == 'cargo'
      puts 'please, enter train number'
      train_number = gets.chomp
      @cargo_trains.push(CargoTrain.new(train_number))
    elsif train_type == 'passenger'
      @pas_trains.push(PassengerTRain.new(train_number))
      puts 'please, enter train number'
      train_number = gets.chomp
    else
      puts 'you enter wrong type, please try again'
      create_train
    end
  end

  def create_route
    puts 'please, choose the number of station for start station from the list'
    puts @stations
    start_station_index = gets.chomp.to_i - 1
    puts 'please, choose the number of station for final station from the list'
    puts @stations
    final_station_index = gets.chomp.to_i - 1
    @routes.push(Route.new(@stations[start_station_index], @stations[final_station_index]))
  end

end
