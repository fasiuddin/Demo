class CreateDells < ActiveRecord::Migration
  def change
    create_table :dells do |t|
      t.string :first
      t.string :second

      t.timestamps
    end
  end
end
