class CreateCreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :create_relationships do |t|

      t.timestamps
    end
  end
end
