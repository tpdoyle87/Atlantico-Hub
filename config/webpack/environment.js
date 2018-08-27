const { environment } = require('@rails/webpacker')

// Bootstrap 3 has a dependency over jQuery:
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery'
  })

module.exports = environment
