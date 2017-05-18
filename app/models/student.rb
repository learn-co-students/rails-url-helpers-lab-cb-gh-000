class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_to_s
    self.active ? "active" : "inactive"
  end
end