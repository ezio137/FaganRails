class Usuario < ActiveRecord::Base
	has_many :perfis_usuarios, :class_name => "PerfilUsuario"
	has_many :perfis, :through => :perfis_usuarios
	has_many :funcionalidades_perfis, :through => :perfis
	has_many :funcionalidades, :through => :funcionalidades_perfis, :uniq => true
	attr_accessible :login, :password, :password_confirmation, :perfis
  has_secure_password
  validates_presence_of :password, :on => :create
  
  def funcionalidades_by_tipo_funcionalidade nome
  	tipo = TipoFuncionalidade.find_by_nome(nome)
  	funcionalidades.where("tipo_funcionalidade_id = ?", tipo).order(:ordem)
  end
  
  def funcionalidades_modulos
    tipo_modulo = TipoFuncionalidade.find_by_nome("modulo")
    funcionalidades.where("tipo_funcionalidade_id = ?", tipo_modulo).order(:ordem)
  end
  
  def funcionalidades_submodulos_by_modulo nome_modulo
    tipo_modulo = TipoFuncionalidade.find_by_nome("modulo")
    tipo_submodulo = TipoFuncionalidade.find_by_nome("submodulo")
    funcionalidade_pai = Funcionalidade.where("nome = ? AND tipo_funcionalidade_id = ?", nome_modulo, tipo_modulo)
    funcionalidades.where("tipo_funcionalidade_id = ? AND funcionalidade_pai_id = ?", tipo_submodulo, funcionalidade_pai).order(:ordem)
  end
end
