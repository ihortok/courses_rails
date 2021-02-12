class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title, null: false, default: ''
      t.text :desc
      t.datetime :start_at
      t.datetime :end_at
      t.belongs_to :curator

      t.timestamps
    end
  end
end
