class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :name
      t.string :password_digest, null: false
      t.string :email, null: false, index: { unique: true, name: "unique_emails" }
      t.string :biography, limit: 200
      t.datetime :birthday

      t.timestamps
    end
  end
end
