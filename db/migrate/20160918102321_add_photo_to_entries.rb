class AddPhotoToEntries < ActiveRecord::Migration[5.0]
  def change
  	add_column :entries, :photo, :string
  end
end
