class Store < ActiveRecord::Base
  has_many :employees

  validates_presence_of :name, :message => "must be present."
  
  validates_length_of :name, 
  :minimum => 3, 
  :allow_blank => false,
  :message => "must be longer than 3 characters."

  validates_numericality_of :annual_revenue, 
  :only_integer => true, 
  :allow_nil => true, 
  :greater_than_or_equal_to => 0,
  :message => "can only be whole number larger than 0."

  validate :must_carry_one_womens_or_mens_apparel

  def must_carry_one_womens_or_mens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "must have some apparel")
      errors.add(:womens_apparel, "must have some apparel")
    end
  end

end
