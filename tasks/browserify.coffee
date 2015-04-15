gulp      = require "gulp"
coffeeify = require "gulp-coffeeify"

gulp.task "browserify", ->
  gulp.src("./app/client.coffee")
    .pipe(coffeeify())
    .pipe(gulp.dest('./dist'))
