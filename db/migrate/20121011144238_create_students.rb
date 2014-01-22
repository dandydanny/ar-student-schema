require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
    t.string :first_name, :last_name, :gender, :email, :phone
    t.date :birthday
    end
  end
end
