# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
Rails.application.config.assets.precompile = ['*.js', '*.css', '*.css.erb', '*.min.js', '*.min.css', '*.min.css.erb', '*.scss', '*.scss.erb', '*.sass.erb', '*.sass', '*.theme', '*.theme.css', '*.custom', '*.custom.scss.erb', '*.cleditor', '*.cleditor.scss.erb', '*.gritter', '*.gritter.scss.erb', '*.iphone.toggle', '*.iphone.toggle.scss.erb']
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( jquery.parallax.js )
Rails.application.config.assets.precompile += %w( smoothscroll.js )
Rails.application.config.assets.precompile += %w( masonry.pkgd.min.js )
Rails.application.config.assets.precompile += %w( jquery.fitvids.js )
Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( jquery.counterup.min.js )
Rails.application.config.assets.precompile += %w( waypoints.min.js )
Rails.application.config.assets.precompile += %w( jquery.isotope.min.js )
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.min.js )
Rails.application.config.assets.precompile += %w( scripts.js )

Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap-admin.min.js )
Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( font-awesome-ie7.min.css )
Rails.application.config.assets.precompile += %w( fullcalendar.css )
Rails.application.config.assets.precompile += %w( glyphicons.css )
Rails.application.config.assets.precompile += %w( halflings.css )
Rails.application.config.assets.precompile += %w( ie.css )
Rails.application.config.assets.precompile += %w( ie9.css )
Rails.application.config.assets.precompile += %w( jquery.cleditor.css )
Rails.application.config.assets.precompile += %w( jquery.gritter.css )
Rails.application.config.assets.precompile += %w( jquery.iphone.toggle.css )
Rails.application.config.assets.precompile += %w( jquery.noty.css )
Rails.application.config.assets.precompile += %w( jquery-ui-1.8.21.custom.css )
Rails.application.config.assets.precompile += %w( noty_theme_default.css )
Rails.application.config.assets.precompile += %w( style-forms.css )
Rails.application.config.assets.precompile += %w( style-responsive.scss.css )
Rails.application.config.assets.precompile += %w( uniform.default.css )
Rails.application.config.assets.precompile += %w( uploadify.css )

Rails.application.config.assets.precompile += %w( owl.carousel.css )
Rails.application.config.assets.precompile += %w( magnific-popup.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( style-lul.css )
Rails.application.config.assets.precompile += %w( responsive.css )
Rails.application.config.assets.precompile += %w( select.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.scss.erb )
Rails.application.config.assets.precompile += %w( chosen.css )
Rails.application.config.assets.precompile += %w( elfinder.min.css )
Rails.application.config.assets.precompile += %w( elfinder.theme.css )


# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
