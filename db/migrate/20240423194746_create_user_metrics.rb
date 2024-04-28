class CreateUserMetrics < ActiveRecord::Migration[7.1]
  def change
    create_table :user_metrics do |t|
      t.integer :posts_count, default: 0
      t.integer :followers_count, default: 0
      t.integer :following_count, default: 0

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
