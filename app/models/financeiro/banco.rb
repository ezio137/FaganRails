class Financeiro::Banco < ActiveRecord::Base
	has_many :contas
end
