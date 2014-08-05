/**
 * Simple gulpfile.
 *
 * npm i -g gulp
 * npm i gulp gulp-less gulp-concat gulp-uglify
 * gulp
 *
 */

var gulp = require('gulp'),
    less = require('gulp-less'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify');

var paths = {
    js: [
        'public_html/js/app.js'
    ]
};

gulp.task('less', function () {
    return gulp.src('public_html/less/styles.less')
        .pipe(less({compress: true}))
        .pipe(gulp.dest('public_html/css'));
});

gulp.task('js', function () {
    return gulp.src(paths.js)
        .pipe(concat('all.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('public_html/js'));
});

gulp.task('default', ['less', 'js'], function () {
    gulp.watch('public_html/less/*.less', ['less']);
    gulp.watch(paths.js, ['js']);
});