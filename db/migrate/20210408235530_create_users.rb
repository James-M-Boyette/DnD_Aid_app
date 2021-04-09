class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :userid
      t.string :email
      t.string :ufirstname
      t.string :ulastname
      t.string :username
      t.string :password
      t.string :characterid

      t.timestamps
    end
  end
end
