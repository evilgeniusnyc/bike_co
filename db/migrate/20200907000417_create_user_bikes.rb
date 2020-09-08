class CreateUserBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bikes do |t|
      t.string :name
      t.string :motto
      t.string :street
      t.string :city
      t.string :phone
      
      t.timestamps
    end
  end
end
