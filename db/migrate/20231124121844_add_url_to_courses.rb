class AddUrlToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :cover_url, :string
  end
end
