class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :putter, foreign_key: true
      t.references :contest, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
