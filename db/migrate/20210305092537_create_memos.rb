class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :hospital_name,    null: false
      t.string :hospital_teacher, null: false
      t.text   :record,           null: false
      t.integer :way_id,          null: false
      t.integer :pace_id,         null: false
      t.integer :remote_id,       null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
