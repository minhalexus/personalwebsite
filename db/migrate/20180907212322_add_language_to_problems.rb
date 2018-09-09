class AddLanguageToProblems < ActiveRecord::Migration[5.2]
  def change
    add_reference :problems, :language
  end
end
