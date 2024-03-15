class RenameImageToPostImageInPost < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :image, :post_image
  end
end
