require 'awesome_print'

set  :css_dir,        'stylesheets'
set  :js_dir,         'javascripts'
set  :images_dir,     'images'
set  :fonts_dir,      'fonts'

sprockets.append_path File.join root, 'foundation/js/foundation'
sprockets.append_path File.join root, 'foundation/scss'
sprockets.append_path File.join root, 'foundation/scss/foundation/components'

sprockets.append_path 'javascripts/lib'
sprockets.append_path 'javascripts/vendor'

sprockets.append_path 'stylesheets/lib'
ap sprockets.append_path 'stylesheets/vendor'

activate   :directory_indexes

configure :development do
  # set      :debug_assets, true
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

