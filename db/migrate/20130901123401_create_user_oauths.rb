class CreateUserOauths < ActiveRecord::Migration
  def change
    create_table :user_oauths do |t|
      t.references :user
      t.string :provider, null: false
      t.string :uid, null: false
      t.text :value

      t.timestamps
    end
    add_index :user_oauths, [:user_id, :provider, :uid]
  end
end
