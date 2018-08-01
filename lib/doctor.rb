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
  
  
  def new_appointment(patient, date)
    app = appointment.new(patient,self,date)
    @appointments << app 
  end
  


  def appointments
    @appointments
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end
end

