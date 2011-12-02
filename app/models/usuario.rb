class Usuario < ActiveRecord::Base

  belongs_to :titular

  validates_presence_of :email

end