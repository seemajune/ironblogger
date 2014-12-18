class AddRageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rage, :string
  end
end
