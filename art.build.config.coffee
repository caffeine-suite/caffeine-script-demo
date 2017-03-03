module.exports =
  npm:
    description:        "caffeine-script demo project"
    dependencies:
      "art-foundation":   "git://github.com/imikimi/art-foundation.git"
      "caffeine-script":  "git@github.com:shanebdavis/caffeine-script-runtime.git"
      colors:             "^1.1.2"

    scripts:
      test:     "nn -s;mocha -u tdd --compilers coffee:coffee-script/register"
      perf:     "nn -s;mocha -u tdd --compilers coffee:coffee-script/register perf"

  webpack:
    common:
      resolve: extensions: [".caf", ".caffeine"]
      module:
        rules: [test: /\.caf(feine)?$/, loader: "caffeine-mc/webpack-loader"]

    targets:
      demo: {}
