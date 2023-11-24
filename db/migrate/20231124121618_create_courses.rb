class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
