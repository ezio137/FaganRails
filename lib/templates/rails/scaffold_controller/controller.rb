<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  respond_to :html, :xml, :js
  
  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
    respond_with @<%= plural_table_name %>
  end

  def show
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    respond_with @<%= singular_table_name %>
  end

  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
    respond_with <%= singular_table_name %>
  end

  def edit
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    respond_with <%= singular_table_name %>
  end

  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "params[:#{singular_table_name}]") %>
    flash[:notice] = "'#{human_name} foi criado com sucesso.'" if @<%= orm_instance.save %>
    respond_with <%= singular_table_name %>
  end

  def update
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    flash[:notice] = "'#{human_name} foi atualizado com sucesso.'" if @<%= orm_instance.update_attributes("params[:#{singular_table_name}]") %>
    respond_with <%= singular_table_name %>
  end

  def destroy
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    @<%= orm_instance.destroy %>
    respond_with <%= singular_table_name %>
  end
end
<% end -%>
