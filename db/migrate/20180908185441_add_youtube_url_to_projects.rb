class AddYoutubeUrlToProjects < ActiveRecord::Migration[5.2]
  def change

  	add_column :projects, :youtube_url, :text
  end
end
