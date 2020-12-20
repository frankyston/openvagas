class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :career
      t.integer :contract
      t.boolean :remote
      t.string :city
      t.string :state
      t.text :summary
      t.text :description
      t.boolean :publish
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
