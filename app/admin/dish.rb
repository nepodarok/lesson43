ActiveAdmin.register Dish do
permit_params :name, :desc, :price, :shop_id, :image

form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :desc
      f.input :price
      f.input :shop_id, as: :select, collection: Shop.all, :input_html => { :class => 'chzn-select', :width => 'auto', "data-placeholder" => 'Click' }
      f.input :image, required: true, as: :file
    end
    f.actions
end

index do
  selectable_column
  column :name
  column :desc
  column :price
  column :shop_id do |deal|
  deal.shop.name
  # link_to deal.shop.name
  end

  column :image do |img|
   image_tag img.image.url(:thumb)
 end
  actions
end

end
