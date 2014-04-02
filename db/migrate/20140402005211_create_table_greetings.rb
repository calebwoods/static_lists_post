class CreateTableGreetings < ActiveRecord::Migration
  def change
    create_table :table_greetings do |t|
      t.string :value

      t.timestamps
    end
  end
end
