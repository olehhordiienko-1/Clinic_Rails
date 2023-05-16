class CreatePatientCards < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_cards do |t|
      t.integer :patient_id
      t.integer :department_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
