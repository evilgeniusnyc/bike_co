class CreateProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :programmers do |t|
      t.string :name
      t.string :phone
      t.string :email
      
      t.timestamps
    end
  end
end
