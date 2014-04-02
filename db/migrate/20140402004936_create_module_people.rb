class CreateModulePeople < ActiveRecord::Migration
  def change
    create_table :module_people do |t|
      t.integer :greeting_id
      t.string  :greeting_other

      t.timestamps
    end
  end
end
