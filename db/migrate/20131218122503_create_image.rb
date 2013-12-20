class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.binary	:data,			null: false
    	t.string	:extension,		null: false
    	t.string	:content_type,	null: false
    	t.timestamps
    end
  end
end
