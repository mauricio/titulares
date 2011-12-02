class Titular < ActiveRecord::Base

  has_one :usuario

  accepts_nested_attributes_for :usuario

  validates_presence_of :nome

end