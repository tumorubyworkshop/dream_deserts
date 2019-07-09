class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.string :photo
    	t.string :description
    	
    	t.integer :price
    end
  end
end
