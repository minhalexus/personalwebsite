class AddImagesToProjects < ActiveRecord::Migration[5.2]
  def change
  	add_column :projects, :image, :text
  end
end
