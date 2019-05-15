class CreatePostcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :postcategories do |t|

      t.timestamps
    end
  end
end
