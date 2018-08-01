require "pry"
class Doctor
  attr_accessor :name
  attr_reader :appointments
   @@all = []
  def initialize(name)
    @name = name
    @appointments = []
     @@all << self
  end

  def self.all
    @@all
  end
  binding.pry
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end
end

