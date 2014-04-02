class CreateEnumPeople < ActiveRecord::Migration
  def change
    create_table :enum_people do |t|
      t.integer :greeting

      t.timestamps
    end
  end
end
