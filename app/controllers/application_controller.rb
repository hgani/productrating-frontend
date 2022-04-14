class ApplicationController < ActionController::Base
  ### json_libs

  include Glib::Json::Libs
  json_libs_set_locale
  json_libs_rescue_csrf
  # json_libs_force_json_ui
  json_libs_init renderer_path: 'layouts/vue_renderer.html', when: :always

  # include JsonInjection
  # json_inject_components

  def default_url_options
    json_ui_url_options
  end

  ###
end
