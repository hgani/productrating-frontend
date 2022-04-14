json.title 'Products'

page = json_ui_page json

page.body childViews: ->(body) do
  body.panels_custom template: 'products/index', width: 'matchParent', content: ->(custom) do
    json.items do
      @products.each do |product|
        json.child! do
          json.name product.name
          json.url product_url(product, format: '')
        end
      end
    end
  end
end
