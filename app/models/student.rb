class Student < ActiveRecord::Base
  def activate
    self.active = !self.active
    self.save
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
