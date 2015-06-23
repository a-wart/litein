sass             = require 'gulp-sass'
connect          = require "gulp-connect"
autoprefixer     = require "gulp-autoprefixer"
concat           = require "gulp-concat"

# uglify           = require "gulp-uglify"
# csso             = require "gulp-csso"

gulp             = require "gulp"
gulpsync         = require("gulp-sync")(gulp)

sourcemaps       = require('gulp-sourcemaps')

paths = {
  build_dir: './build/'
  styles: ["styles/*.scss"],
  images: [
    "img/*"
  ]
}

gulp.task 'styles', ->
  gulp.src(['styles/main.scss'])
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe autoprefixer({browsers: ['last 2 versions','IE 9', 'IE 10', 'safari 5']})
    .pipe(concat('main.css'))
    .pipe sourcemaps.write('.', {includeContent: true})
    .pipe(gulp.dest(paths.build_dir))

gulp.task "connect", ->
  connect.server({
    root: ""
    host: "0.0.0.0"
    port: 8080
  })

gulp.task 'default', ["connect", "styles"]
