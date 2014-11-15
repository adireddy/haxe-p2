/**
 * Created by Adi Mora on 02/11/2014.
 */
module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),

        zip: {
            "p2.zip": ["p2/**", "haxelib.json"]
        }
    });

    grunt.loadNpmTasks("grunt-zip");
    grunt.registerTask("default", ["zip"]);
};