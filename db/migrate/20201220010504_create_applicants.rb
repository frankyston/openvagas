class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :user, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
