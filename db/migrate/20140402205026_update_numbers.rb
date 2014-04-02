class UpdateNumbers < ActiveRecord::Migration
  def change
    remove_column :lessons, :description, :string
    add_column :lessons, :description, :text

  end
end
