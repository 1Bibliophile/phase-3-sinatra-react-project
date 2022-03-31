class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.string :name,
      t.integer :date,
      t.timestamps
  end
end

# Methods: # add_column, # add_index, # change_column, 
           # change_table, #create_table, #drop_table,
           # remove_column, # remove_index, #rename_column

# Supported Column Types: :binary, :boolean, :date, :datetime,
#                         :decimal, :float, :integer, :primary_key,
#                         :string, :text, :time, :timestamps
#