class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :message => "must be present."
  validates_presence_of :last_name, :message => "must be present."

  validates_numericality_of :hourly_rate, 
  :only_integer => true, 
  :allow_nil => true, 
  :greater_than_or_equal_to => 40,
  :less_than_or_equal_to => 200,
  :message => "can only be whole number between 40 and 200."

  validates_numericality_of :store_id, :only_integer => true, :allow_nil => false, :message => "must exist for employee."

end
