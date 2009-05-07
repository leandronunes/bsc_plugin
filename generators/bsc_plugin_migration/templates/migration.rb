class BscPluginMigration < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
    end

    create_table :states do |t|
      t.string :name, :code
      t.integer :country_id
    end

    create_table :cities do |t|
      t.string :name, :zip_code
      t.integer :state_id
    end

  end

  def self.down
    drop_table :cities
    drop_table :states
    drop_table :countries
  end
end

