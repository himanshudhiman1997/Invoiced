class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :slug
      t.references :owner, index: true, null: false, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
