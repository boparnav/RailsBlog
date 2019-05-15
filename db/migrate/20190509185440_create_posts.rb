class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :user_id
      t.string :title

      t .text :description
      t.string :author

      t.timestamps

    end
  end
end
