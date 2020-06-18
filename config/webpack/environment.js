const { environment } = require('@rails/webpacker')

<<<<<<< HEAD
const webpack= require('webpack')
environment.plugins.prepend('Provide',
	new webpack.ProvidePlugin({
		$: 'jquery/src/jquery',
		jQuery: 'jquery/src/jquery'
	})
)
=======
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
module.exports = environment
