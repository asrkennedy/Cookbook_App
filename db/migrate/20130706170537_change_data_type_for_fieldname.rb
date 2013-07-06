class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.change :image_url, :text
    end
  end

  def self.down
    change_table :recipes do |t|
      t.change :image_url, :string
    end
  end
end

