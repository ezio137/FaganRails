class Sistema::Acao < ActiveRecord::Base
	belongs_to :tipo_acao
	belongs_to :acao_pai, :class_name => "Sistema::Acao"
end
