class AddCaptionToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :caption, :string
  end
end
