class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :post, index: true

      t.timestamps
    end
  end
end
