require_relative '../../db/config'

require 'date'
# require 'time'

class Student < ActiveRecord::Base
# implement your Student model here

  def name
    self.first_name + " " + self.last_name
  end

  def age
    ((Date.today - self.birthday) / 365).to_i
  end

  validates :email, uniqueness: true
  validates :phone, format: { with: /(\D*\d){10}/}
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
  validates :age, inclusion: { in: 6..999 }
end
