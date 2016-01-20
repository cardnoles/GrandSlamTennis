class AddPhotoToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :photo, :string
  end
end
