class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :ufirstname
      t.string :ulastname
      t.string :email
      t.string :user_id
      t.string :adminid
      t.string :password_digest

      t.timestamps
    end
  end
end

# ufirstname
# ulastname
# email
# user_id
# adminid
# password_digest
