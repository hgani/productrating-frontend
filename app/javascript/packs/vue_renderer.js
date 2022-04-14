/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import { Vue, settings } from 'glib-web/index.js'

import ProductIndexTemplate from 'custom/templates/products/index'
Vue.component('template-products-index', ProductIndexTemplate)

import ProductShowTemplate from 'custom/templates/products/show'
Vue.component('template-products-show', ProductShowTemplate)
