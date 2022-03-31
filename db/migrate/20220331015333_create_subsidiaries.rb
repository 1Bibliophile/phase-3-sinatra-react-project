class CreateSubsidiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidiaries do |t|
      t.string :name
      t.integer :date

      t.timestamps
    end
  end
end
