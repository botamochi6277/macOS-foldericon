"use strict"
module.exports = (grunt) ->

  # task
  grunt.initConfig
    dir:
      src: "src"
      dest: "dist"
    pkg: grunt.file.readJSON "package.json"

    # grnt ect
    ect:
      options:
        root: '<%= dir.src %>/template'
      render:
        files:
          '<%= dir.dest %>/index.html': ['main/index.ect']
        variables:
          projectName: 'macOS-foldericon'
          author: "botamochi6277"
          authorURL:"https://botamochi6277.github.io/"
          menuList:
            'about': '/about.html'
            '２about': '/about.html'
          icons:[
            {name:"arduino",url:"arduino_folder.png",desc:"Icon image is adapted from <a href='https://ja.wikipedia.org/wiki/Arduino#/media/File:Arduino_Logo.svg' target='_brank'>Wikipedia's image</a>."},
            {name:"blender",url:"blender_folder.png",desc:"Icon image is adapted from <a href='https://www.blender.org/about/logo/' target='_brank'>an official logo image</a>."},
            {name:"Fritzing",url:"fritzing_folder.png",desc:"Icon image traced from an application icon."},
            {name:"eagle",url:"eagle_folder.png",desc:"Icon image traced from an application icon."},
            {name:"GitHub" , url:"github_folder.png",desc:"Icon image adapt from <a href='http://fontawesome.io/icon/github/' target='_brank'>Font Awesome's icon</a>."},
            {name:"GitLab" , url:"gitlab_folder.png",desc:"Icon image adapt from <a href='http://fontawesome.io/icon/gitlab/' target='_brank'>Font Awesome's icon</a>"},
            {name:"keynote" , url:"keynote_folder.png",desc:"Icon image traced from an application icon."},
            {name:"Matlab" , url:"matlab_folder.png",desc:"Icon image make by <a href='https://jp.mathworks.com/help/matlab/examples/creating-the-matlab-logo.html?lang=en' target='_brank'>official methods</a>"},
            {name:"R" , url:"r_folder.png",desc:""},
            {name:"Raspberry Pi" , url:"raspi_folder.png",desc:"Icon image is adapted from <a href='https://en.wikipedia.org/wiki/File:Raspberry_Pi_Logo.svg' target='_brank'>Wikipedia's image</a>."},
            {name:"TeX" , url:"tex_folder.png",desc:""},
            {name:"Unity" , url:"unity_folder.png",desc:"Icon image is adapted from <a href='https://unity3d.com/jp/public-relations/brand' target='_brank'>an official logo image</a>."},
            {name:"C++" , url:"unity_folder.png",desc:"Icon image is adapted from <a href='https://github.com/file-icons/source' target='_brank'>file-icons/source</a>."}
        ]

    watch:
      ect:
        files: "src/**/*.ect"
        tasks: "ect"


  # プラグインの読み込み
  grunt.loadNpmTasks 'grunt-ect'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # タスク登録
  grunt.registerTask 'default', ['watch']
