class Grado < ApplicationRecord
	has_many       :grupos
  has_many       :estudiantes, through: :grupos
end
