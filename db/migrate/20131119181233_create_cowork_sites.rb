class CreateCoworkSites < ActiveRecord::Migration
  def change
    create_table :cowork_sites do |t|
    	t.string  :image
    	t.string  :name
    	t.string  :address
    	t.string  :city
    	t.string  :state
    	t.integer :zip
    	t.text   :short_desc
    	t.text    :long_desc
    	t.string  :phone
    	t.string  :email
    end
  end
end
