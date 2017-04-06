module.exports =
  npm:
    description:        "caffeine-script demo project"
    dependencies:
      "art-standard-lib":         "^1.0.0"
      "caffeine-script":          ">=0.0.0"
      "caffeine-script-runtime":  ">=0.0.0"
      colors:                     "^1.1.2"

    scripts:
      test:     "nn -s;mocha -u tdd --compilers coffee:coffee-script/register"
      perf:     "nn -s;mocha -u tdd --compilers coffee:coffee-script/register perf"

  webpack:
    common:

      # for buildling caf files:
      resolve: extensions: [".caf", ".caffeine"]
      module: rules: [test: /\.caf(feine)?$/, loader: "caffeine-mc/webpack-loader"]
