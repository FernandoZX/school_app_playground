class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.decimal :grade
      t.references :student, null: false, foreign_key: true
      t.references :klass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
