json.title 'Product'
page = json_ui_page json

page.body childViews: ->(body) do
  body.panels_form width: 'matchParent', model: @product, childViews: ->(form) do
    form.spacer height: 14
    form.fields_text prop: :name, width: 'matchParent', label: 'Name'

    form.spacer height: 14
    form.fields_text prop: :price, width: 'matchParent', label: 'Price'

    form.spacer height: 14
    form.fields_text prop: :quantity, width: 'matchParent', label: 'Quantity'

    form.spacer height: 32
    form.fields_submit text: 'Save'
  end
end
