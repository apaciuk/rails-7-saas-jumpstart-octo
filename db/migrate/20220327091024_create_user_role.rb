class CreateUserRole < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.string :role
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
