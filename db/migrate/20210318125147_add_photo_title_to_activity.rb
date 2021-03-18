class AddPhotoTitleToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :photo_title, :string
  end
end
