class Sistema::Usuario < ActiveRecord::Base
	has_many :perfis_usuarios, :class_name => "Sistema::PerfilUsuario"
	has_many :perfis, :through => :perfis_usuarios
	has_many :acoes_perfis, :through => :perfis
	has_many :acoes, :through => :acoes_perfis, :uniq => true
	attr_accessible :login, :password, :password_confirmation, :perfis
  has_secure_password
  validates_presence_of :password, :on => :create
  
  def acoes_by_nome_tipo_acao nome
  	tipo = Sistema::TipoAcao.find_by_nome(nome)
  	acoes.where(:tipo_acao == tipo).order(:ordem)
  end
end
