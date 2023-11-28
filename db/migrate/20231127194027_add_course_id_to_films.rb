class AddCourseIdToFilms < ActiveRecord::Migration[7.1]
  def change
    add_column :films, :course_id, :bigint
  end
end
