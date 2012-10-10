class Funcionalidade < ActiveRecord::Base
	belongs_to :tipo_funcionalidade
	belongs_to :funcionalidade_pai, :class_name => "Funcionalidade"
end
