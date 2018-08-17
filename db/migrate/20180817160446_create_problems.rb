class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :name
      t.string :from
      t.text :description

      t.timestamps
    end
  end
end
