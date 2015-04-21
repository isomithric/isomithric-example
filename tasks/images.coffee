gulp = require "gulp"

gulp.task "images", ->
  gulp.src("./app/images/**/*")
    .pipe(gulp.dest('./dist'))
