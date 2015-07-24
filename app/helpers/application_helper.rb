module ApplicationHelper

	# Comment. Creamos este metodo con el fin de poder pasar el atributo (type) en /views/layouts/application.html.erb para el bloque de codigo flash.each do...
	def flash_class (type)
		case type
		when 'alert'
			"alert-danger"
		when 'notice'
			"alert-success"
		else
			""
		end
	end
end
