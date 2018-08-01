
class Appointment
  attr_accessor :name, :doctor, :patient
  @@all = []
  
  
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
     @@all << self
    doctor.add_appointment(self)
  end
  
  
   def self.all
    @@all
  end
  

 
end

