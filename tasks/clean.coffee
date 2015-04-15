gulp = require "gulp"
run  = require "gulp-run"

gulp.task "clean", (cb) ->
  run "rm -rf ./dist"
  .exec cb
