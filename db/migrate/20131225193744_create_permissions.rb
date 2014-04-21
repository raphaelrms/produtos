#encoding: utf-8
class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :action
      t.string :subject_class
      t.integer :subject_id

      t.timestamps
    end
  end
end
