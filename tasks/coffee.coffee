gulp   = require "gulp"
coffee = require "gulp-coffee"

gulp.task "coffee", ->
  gulp
    .src "./client.coffee"
    .pipe coffee bare: true
    .pipe gulp.dest("./dist")
