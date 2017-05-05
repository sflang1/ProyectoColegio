class Grupo < ApplicationRecord
	has_many       :estudiantes
  belongs_to     :grado
end
