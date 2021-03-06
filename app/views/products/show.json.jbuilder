json.title 'Product'

page = json_ui_page json

page.body childViews: ->(body) do
  body.panels_custom template: 'products/show', width: 'matchParent', content: ->(custom) do
    json.items do
      @products.each do |product|
        json.child! do
          json.name product.name
          json.url product_url(product)
        end
      end
    end

    json.selectedItem do
      json.name @product.name
      json.price @product.price
      json.quantity @product.quantity
    end
  end
end
