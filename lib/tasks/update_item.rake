namespace :update_item do
  desc "Update the genre of the last item with a random string"
  task update_last_item_genre: :environment do
    item = Item.last
    if item
      item.update(genre: SecureRandom.hex(10)) # ランダムな文字列を生成して更新
      puts "Updated item ##{item.id} with new genre: #{item.genre}"
    else
      puts "No items found to update."
    end
  end
end
