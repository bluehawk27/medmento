class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :drug_name
      t.string :message
      t.string :patient_number
      t.string :secondary_number
      t.string :third_number
      t.date :start_date
      t.date :end_date
      t.datetime :alert_time

      t.timestamps
    end
  end
end
