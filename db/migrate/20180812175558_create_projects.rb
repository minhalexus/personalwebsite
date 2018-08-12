class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :Title
      t.text :Description

      t.timestamps
    end
  end
end
