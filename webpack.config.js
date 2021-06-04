var path = require('path');
var webpack = require('webpack');

module.exports = {
    entry: path.join(__dirname, 'srcjs', 'chakra.jsx'),
    output: {
        path: path.join(__dirname, 'inst/www/shinyChakraUI/chakra'),
        filename: 'chakra.js'
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            },
            // For CSS so that import "path/style.css"; works
            {
                test: /\.css$/,
                use: ['style-loader', 'css-loader']
            }
        ]
    },
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    plugins: [
            new webpack.ProvidePlugin({
              "acorn": "acorn"
            })
    ],
    stats: {
        colors: true
    },
    devtool: 'source-map'
};
