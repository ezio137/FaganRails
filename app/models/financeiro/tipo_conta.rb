class Financeiro::TipoConta < ActiveRecord::Base
	has_many :contas
end
