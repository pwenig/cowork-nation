class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string  :title
    	t.text	  :event
    	t.string  :url
    end
  end
end
