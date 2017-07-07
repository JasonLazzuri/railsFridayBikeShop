class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|

      t.string :content
      t.integer :product_id
      t.integer :user_id
    end
  end
end
