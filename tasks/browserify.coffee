gulp       = require "gulp"
browserify = require "browserify"
transform  = require "vinyl-transform"
    
gulp.task "browserify", ->
  gulp
    .src("./dist/client.js")
    .pipe(
      transform (filename) ->
        b = browserify(entries: filename, debug: true)
        b.bundle()
    )
    .pipe gulp.dest("./dist")
