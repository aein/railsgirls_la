class AddWebsiteToAdventures < ActiveRecord::Migration
  def change
    add_column :adventures, :website, :text
  end
end
