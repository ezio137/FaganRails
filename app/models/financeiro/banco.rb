class Financeiro::Banco < ActiveRecord::Base
	has_many :contas
	
	attr_accessible :nome, :descricao, :numero
end
