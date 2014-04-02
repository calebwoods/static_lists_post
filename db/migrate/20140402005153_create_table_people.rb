class CreateTablePeople < ActiveRecord::Migration
  def change
    create_table :table_people do |t|
      t.references :table_greeting, index: true

      t.timestamps
    end
  end
end
