class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  #<Item id: 1, name: "エアマックス 95", description: "1995年のランニングマックスモデルの復刻版。時代を席巻した名モデルAIR MAX95。当時は\n  ...", price: 25000, seller: "Taro", email: "kazuma@takahashi.org", image_url: "http://news.digitallab.biz/wordpress/wp-content/up...", created_at: "2019-03-09 06:20:17", updated_at: "2019-03-09 06:20:17">
  #<Item id: 2, name: "フットスケープ", description: "横にシューレースがある斬新なモデル。大切にしていただける方にお譲りします。", price: 18000, seller: "Jiro", email: "foo@example.com", image_url: "https://smlycdn.akamaized.net/data/product2/2/e4e8...", created_at: "2019-03-09 06:20:17", updated_at: "2019-03-09 06:20:17">
  #<Item id: 3, name: "ポンプフューリー", description: "ポンプを押すと、空気によってパイプが膨らみ足型にフィットします。", price: 18000, seller: "Teru", email: "foo@example.com", image_url: "http://image.rakuten.co.jp/atmos-girls/cabinet/ree...", created_at: "2019-03-09 06:20:17", updated_at: "2019-03-09 06:20:17">
end

private

def item_params
  params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url)
end
