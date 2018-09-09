class AddGithubUrlToProjects < ActiveRecord::Migration[5.2]
  def change
  	add_column :projects, :github_url, :text
  end
end
