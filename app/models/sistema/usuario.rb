class Sistema::Usuario < ActiveRecord::Base
	has_many :perfis_usuarios, :class_name => "Sistema::PerfilUsuario"
	has_many :perfis, :through => :perfis_usuarios
	has_many :acoes_perfis, :through => :perfis
	has_many :acoes, :through => :acoes_perfis, :uniq => true
	attr_accessible :login, :password, :password_confirmation, :perfis
  has_secure_password
  validates_presence_of :password, :on => :create
  
  def acoes_by_tipo_acao nome
  	tipo = Sistema::TipoAcao.find_by_nome(nome)
  	acoes.where("tipo_acao_id = ?", tipo).order(:ordem)
  end
  
  def acoes_modulos
    tipo_modulo = Sistema::TipoAcao.find_by_nome("modulo")
    acoes.where("tipo_acao_id = ?", tipo_modulo).order(:ordem)
  end
  
  def acoes_submodulos_by_modulo nome_modulo
    tipo_modulo = Sistema::TipoAcao.find_by_nome("modulo")
    tipo_submodulo = Sistema::TipoAcao.find_by_nome("submodulo")
    acao_pai = Sistema::Acao.where("nome = ? AND tipo_acao_id = ?", nome_modulo, tipo_modulo)
    acoes.where("tipo_acao_id = ? AND acao_pai_id = ?", tipo_submodulo, acao_pai).order(:ordem)
  end
end
