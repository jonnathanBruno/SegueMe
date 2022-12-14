# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( admin.css tabela.css tudo.css fonts.css autoComplete.css autoCompleteTema.css
                                                  admin.js bootstrap.js chart.js autoComplete.js
                                                  chart_area.js chart_pie.js jq.js
                                                  jquery.js table.js mask.js mounting.js quadrante.js )
