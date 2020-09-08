class CreateProjectManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_managers do |t|
      t.string :name
      t.string :nick_name
      t.string :dob
      t.text :bio
      t.belongs_to :department, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

#ok