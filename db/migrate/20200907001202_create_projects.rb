class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :budget
      t.string :development_stage
      t.belongs_to :project_manager, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

#ok