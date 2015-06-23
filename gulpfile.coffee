sass             = require 'gulp-sass'
connect          = require "gulp-connect"
autoprefixer     = require "gulp-autoprefixer"

# uglify           = require "gulp-uglify"
# csso             = require "gulp-csso"

gulp             = require "gulp"
gulpsync         = require("gulp-sync")(gulp)

sourcemaps       = require('gulp-sourcemaps')

gulp.task "connect", ->
  connect.server({
    root: ""
    host: "0.0.0.0"
    port: 8080
  })

gulp.task 'default', ["connect"]
