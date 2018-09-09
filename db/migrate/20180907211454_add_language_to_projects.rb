class AddLanguageToProjects < ActiveRecord::Migration[5.2]
  def change
  	add_reference :projects, :language
  end
end
