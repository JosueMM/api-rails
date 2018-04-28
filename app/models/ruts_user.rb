class RutsUser < ApplicationRecord
  belongs_to :rut
  has_many :user
 
end
