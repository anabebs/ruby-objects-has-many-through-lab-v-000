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
  
  
  def new_appointment(date, patient)
    app = self.new_appointment(patient,date)
    @appointments << app 
  end
  
appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")

  def appointments
    @appointments
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end
end

