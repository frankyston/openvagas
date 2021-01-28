class AddColumnSlugToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :slug, :string
  end
end
