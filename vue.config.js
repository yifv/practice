const path = require('path');
// const publicPath = process.env.NODE_ENV === 'development' ? '/' : './';

function resolve(dir) {
    return path.join(__dirname, dir);
}

module.exports = {
    publicPath: './',
    productionSourceMap: false,

    chainWebpack: (config) => {
        config.resolve.alias.set('@', resolve('src'));
    },
};
