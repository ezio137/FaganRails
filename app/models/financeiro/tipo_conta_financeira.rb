class TipoContaFinanceira < ActiveRecord::Base
	has_many :contas_financeiras
end
