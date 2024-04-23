const { defineConfig } = require("@vue/cli-service");
const NodePolyfillWebpackPlugin = require("node-polyfill-webpack-plugin")
module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave: false,
  configureWebpack: {
    plugins:[new NodePolyfillWebpackPlugin()]
  }
});