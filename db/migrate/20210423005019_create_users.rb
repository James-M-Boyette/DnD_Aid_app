class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :ufirstname
      t.string :ulastname
      t.string :email
      t.string :userid
      t.string :characterid
      t.string :password_digest

      t.timestamps
    end
  end
end
