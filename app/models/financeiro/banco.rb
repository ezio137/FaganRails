class Banco < ActiveRecord::Base
	has_many :contas_financeiras
	
	attr_accessible :nome, :descricao, :numero
end
