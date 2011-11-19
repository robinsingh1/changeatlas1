class AddColumnsToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :eventID, :string 
    add_column :events, :name, :string 
    add_column :events, :ownerID, :string 
    add_column :events, :description, :string
    add_column :events, :start_time, :string
    add_column :events, :end_time, :string
    add_column :events, :location, :string
    add_column :events, :latitude, :string
    add_column :events, :longitude, :string
  end

  def self.down
    remove_column :events, :eventID
    remove_column :events, :name
    remove_column :events, :description
    remove_column :events, :ownerID
    remove_column :events, :start_time
    remove_column :events, :end_time
    remove_column :events, :location
    remove_column :events, :latitude
    remove_column :events, :longitude
  end
end
