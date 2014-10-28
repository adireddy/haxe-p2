/**
 * Created by Adi Mora on 10/10/2014.
 */

module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),

        shell: {
            makeDir: {
                command: 'mkdir p2'
            },
            copy_src: {
                command: "cp -r src/p2/** p2/"
            }
        },

        zip: {
            "p2.zip": ["p2/**", "haxelib.json"]
        },

        exec: {
            command: "rm -rf p2"
        }
    });

    grunt.loadNpmTasks("grunt-zip");
    grunt.loadNpmTasks("grunt-shell");
    grunt.loadNpmTasks("grunt-exec");
    grunt.registerTask("default", ["shell", "zip", "exec"]);
};