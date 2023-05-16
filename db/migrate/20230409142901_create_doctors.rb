class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.references :department, null: false, foreign_key: true
      t.string :specialization

      t.timestamps
    end
  end
end
