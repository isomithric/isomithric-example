gulp    = require "gulp"
nodemon = require "gulp-nodemon"

gulp.task "default", [ "clean", "browserify", "images" ], ->
  env = process.env.NODE_ENV || "development"
  nm  = nodemon
    script: "app"
    env:    NODE_ENV: env
    tasks:  [ "browserify" ]
