json_ui_response json do |action|
  if @product.errors.any?
    action.dialogs_alert message: @product.errors.full_messages.join(', ')
  else
    action.windows_reload url: products_url
  end
end
