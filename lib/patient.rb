class Patient
  attr_accessor :name
   @@all = []
   
  def self.all
    @@all
  end
  

  def initialize(name)
    @name = name
    @appointments = []
     @@all << self
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor }
  end
  
end
  