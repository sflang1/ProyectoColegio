class Estudiante < ApplicationRecord
	has_many 		:Desempeno
	belongs_to	:grupo
	has_one			:grado, through: :grupo

	def nombre_completo
		"#{nombres.titleize} #{apellidos.titleize}"
	end
end
