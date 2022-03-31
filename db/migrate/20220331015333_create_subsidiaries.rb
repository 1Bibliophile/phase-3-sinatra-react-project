class CreateSubsidiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidiaries do |t|
      t.string :name
      t.string :date
      t.belongs_to :asset
      t.timestamps
    end
  end
end
