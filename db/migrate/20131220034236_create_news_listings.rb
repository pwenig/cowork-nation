class CreateNewsListings < ActiveRecord::Migration
  def change
    create_table :news_listings do |t|
    	t.string :headline
    	t.text :story
    	t.string :url

      t.timestamps
    end
  end
end
