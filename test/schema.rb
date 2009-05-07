ActiveRecord::Migration.verbose = false
 
ActiveRecord::Schema.define(:version => 0) do

  create_table :bsc_test_countries, :force => true do |t|
      t.column :name, :string
  end

  create_table :bsc_test_states, :force => true do |t|
      t.column :name,        :string
      t.column :code,        :string
      t.column :country_id,  :integer
  end
 
  create_table :bsc_test_cities, :force => true do |t|
      t.column :name,      :string
      t.column :state_id,  :integer
      t.column :zip_code,  :string
  end
 
end
 
ActiveRecord::Migration.verbose = true



