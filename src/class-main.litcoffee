Main
====

@todo describe


#### The main class for Pegdev

    class Main
      C: ªC
      toString: -> "[object #{@C}]"

      constructor: (config={}) ->




Properties
----------


#### `pegjs <xx>`
Xx. @todo describe

        @pegjs = PEG


#### `aceGrammar <xx>`
Xx. @todo describe

        @aceGrammar = AceGrammar


#### `helpers <array of Directories and Files>`
Xx. @todo describe

        @helpers = []


#### `languages <array of Directories and Files>`
Xx. @todo describe

        @languages = []


#### `oopish <array of Directories and Files>`
The top level of the build and development utilities. 

        @oopish = []


#### `project <array of Directories and Files>`
The top level of the developer’s project. 

        @project = []




Init
----

Initialize the instance. 

        @init()




Methods
-------


#### `init()`

Xx. @todo describe

      init: ->
        @helpers.push new File @,
          label: 'add'
          title: 'Add'
          notes: ['Adds two numbers together']
          value: (x, y) -> x+y

        @helpers.push new File @,
          label: 'inc'
          title: 'Increment'
          notes: ['Adds 1 to a number']
          value: (x) -> x+1

        @helpers.push new File @,
          label: 'foo'
          title: 'foo'
          notes: ['Adds 1 to a number']
          value: (x) -> 'foo'

        @helpers.push new File @,
          label: 'bar'
          title: 'bar'
          notes: ['Adds 1 to a number']
          value: (x) -> 'bar'

        @languages.push new Directory @,
          label: 'md'
          title: 'Markdown'
          notes: ['Simple text markup']
          files: [
            new File @,
              label: 'bold_js'
              title: 'bold.js'
              notes: ['Bold text']
              value: """
                function md_bold(input) {
                }

              """
            new File @,
              label: 'italic_js'
              title: 'italic.js'
              notes: ['Italic text']
              value: """
                function md_italic(input) {
                }

              """
          ]

        @languages.push new Directory @,
          label: 'oopish'
          title: 'Oopish'
          notes: ['A little language which compiles to ES6']
          files: [
            new File @,
              label: 'item_js'
              title: 'Item.js'
              notes: ['The Item class']
              value: """
                function item_js(input) {
                }

              """
            new File @,
              label: 'list_js'
              title: 'List.js'
              notes: ['The List class']
              value: """
                function list_js(input) {
                }

              """
          ]




##### Oopish compiler and highlighter

        @oopish.push new Directory @,
          label: 'build'
          title: 'build'
          notes: ['Destination for compiled development and build utilities, so do not edit these files directly']
          files: [
            new File @,
              label: 'oopish_compiler_js'
              title: 'oopish-compiler.js'
              notes: ['A parser and compiler generated by PEG.js from pegjs-helpers.js and pegjs-rules.pegjs']
              value: """
                function peg$parse(input) {
                }

              """
            new File @,
              label: 'oopish_compiler_min_js'
              title: 'oopish-compiler.min.js'
              notes: ['Minified parser and compiler, with no comments or test']
              value: """
                function peg$parse(i){};
              """
            new File @,
              label: 'oopish_compiler_test_js'
              title: 'oopish-compiler.test.js'
              notes: ['A parser and compiler generated by PEG.js, with tests']
              value: """
                function peg$parse(input) {
                }
                console.assert('abc', 123);

              """
            new File @,
              label: 'oopish_highlighter_js'
              title: 'oopish-highlighter.js'
              notes: ['A parser and syntax highlighter generated by AceGrammar, to be used by ACE']
              value: """
                //// Mode generated by Pegdev 0.0.7

                modeGrammar = {
                }

              """
            new File @,
              label: 'oopish_highlighter_min_js'
              title: 'oopish-highlighter.min.js'
              notes: ['Minified parser and syntax highlighter, with no comments or test']
              value: """
                modeGrammar={}
              """
            new File @,
              label: 'oopish_highlighter_test_js'
              title: 'oopish-highlighter.test.js'
              notes: ['A parser and syntax highlighter generated by AceGrammar, with tests']
              value: """
                //// Mode generated by Pegdev 0.0.7

                modeGrammar = {
                }

                console.assert('abc', 123);

              """
          ]

        @oopish.push new Directory @,
          label: 'doc'
          title: 'doc'
          notes: ['Documentation for the Oopish IDE and programming language, in Markdown format']
          files: [
            new File @,
              label: 'oopish_md'
              title: 'oopish.md'
              notes: ['An introduction to the Oopish programming language']
              value: """
                Oopish
                ======

              """
          ]

        @oopish.push new Directory @,
          label: 'src'
          title: 'src'
          notes: ['Source code for development and build utilities']
          files: [
            new File @,
              label: 'compiler_helpers_js'
              title: 'compiler-helpers.js'
              notes: ['Becomes the initializer section at the top of the PEG.js compiler-source']
              value: """
                //// Initializer generated by Pegdev
                var someHelper = function () { return 'ok'; };

              """
            new File @,
              label: 'compiler_rules_pegjs'
              title: 'compiler-rules.pegjs'
              notes: ['Becomes the main rules section of the PEG.js compiler-source']
              value: """
                //// Rules generated by Pegdev
                string_char 'String Character'
                  = "\\\\" char:. { return "\\\\" + char; }
                  / .
                ;

              """
            new File @,
              label: 'highlighter_helpers_js'
              title: 'highlighter-helpers.js'
              notes: ['Becomes a library section for the AceGrammar highlighter-source']
              value: """
                //// Grammar helpers generated by Pegdev 0.0.7
                var someHelper = function () { return 'ok'; };

              """
            new File @,
              label: 'highlighter_rules_js'
              title: 'highlighter-rules.js'
              notes: ['Becomes the main rules section for the AceGrammar highlighter-source']
              value: """
                //// Grammar rules generated by Pegdev 0.0.7

                modeGrammar = {
                }

              """
          ]

        @oopish.push new Directory @,
          label: 'test'
          title: 'test'
          notes: ['Source of language unit tests and performance benchmarks']
          files: [
            new File @,
              label: 'test_01_01_add.litcoffee'
              title: 'test-01-01-add.litcoffee'
              notes: ['Tests for the `add` helper']
              value: """
                Test 01-01: Helper `add()`
                ==========================

              """
            new File @,
              label: 'test_01_02_inc.litcoffee'
              title: 'test-01-02-inc.litcoffee'
              notes: ['Tests for the `increment` helper']
              value: """
                Test 01-02: Helper `increment()`
                ================================

              """
            new File @,
              label: 'test_02_01_md.litcoffee'
              title: 'test-02-01-md.litcoffee'
              notes: ['Tests for the `Markdown` language, as a whole']
              value: """
                Test 02-01: Language `Markdown`
                ================================

              """
            new File @,
              label: 'test_02_02_a.litcoffee'
              title: 'test-02-02-a.litcoffee'
              notes: ['Tests for the Markdown `A` feature']
              value: """
                Test 02-02: Markdown Feature `A`
                ================================

              """
          ]

        @oopish.push new File @,
          label: 'readme_md'
          title: 'README.md'
          notes: ['An introduction to Oopish']
          value: """
            Oopish
            ======

            A little language which compiles to ES6. 

            """

        @oopish.push new File @,
          label: 'package_json'
          title: 'package.json'
          notes: ['Metadata about Oopish, in standard NPM format']
          value: """
            {
              "name":        "oopish",
              "version":     "0.0.1",
              "description": "A little language which compiles to ES6",
              "main":        "build/oopish-compiler.js"
            }
            """




##### Example Project

        @project.push new Directory @,
          label: 'build'
          title: 'build'
          notes: ['Destination for compiled project files, so do not edit these files directly']
          files: [
            new File @,
              label: 'my_project_js'
              title: 'my-project.js'
              notes: ['The standard compiled JavaScript, with comments but no tests']
              value: """
                //// My Project v0.0.1

                var abc = 123;
                console.log(abc);

              """
            new File @,
              label: 'my_project_es6_js'
              title: 'my-project.es6.js'
              notes: ['Standard compiled ES6 JavaScript, with comments but no tests']
              value: """
                //// My Project v0.0.1

                var abc = 123;
                console.log(abc);

              """
            new File @,
              label: 'my_project_min_js'
              title: 'my-project.min.js'
              notes: ['Minified compiled JavaScript, with no comments or test']
              value: """
                var abc=123;console.log(abc);
              """
            new File @,
              label: 'my_project_test_js'
              title: 'my-project.test.js'
              notes: ['The standard compiled JavaScript, with comments and unit tests']
              value: """
                //// My Project v0.0.1'

                var abc = 123;
                console.log(abc);

                //// Some tests in here...
                console.assert(abc, 456);

              """
          ]

        @project.push new Directory @,
          label: 'doc'
          title: 'doc'
          notes: ['Project documentation, in Markdown format']
          files: [
            new File @,
              label: 'my_project_md'
              title: 'my-project.md'
              notes: ['An introduction to the MyProject example project']
              value: """
                MyProject
                =========

              """
          ]

        @project.push new Directory @,
          label: 'src'
          title: 'src'
          notes: ['Uncompiled source project files, in the order they should be concatenated']
          files: [
            new File @,
              label: 'main_oopish_md'
              title: 'main.oopish.md'
              notes: ['The main point of entry for the program']
              value: """
                Main
                ====

                abc = 123
                console.log abc

              """
            new File @,
              label: 'useful_oopish_md'
              title: 'useful.oopish.md'
              notes: ['A useful class']
              value: """
                Useful
                ======

                class Useful
                  constructor() ->
                    console.log 'The `Useful` class is ok!'

              """
          ]

        @project.push new Directory @,
          label: 'test'
          title: 'test'
          notes: ['Source of project unit tests and performance benchmarks']
          files: [
            new File @,
              label: 'test_01_main_oopish_md'
              title: 'test-01-main.oopish.md'
              notes: ['Tests for the Main class']
              value: """
                Test 01: Main
                =============

              """
            new File @,
              label: 'test_02_useful_oopish_md'
              title: 'test-02-useful.oopish.md'
              notes: ['Tests for the Useful class']
              value: """
                Test 02: Useful
                ===============

              """
          ]

        @project.push new File @,
          label: 'readme_md'
          title: 'README.md'
          notes: ['An introduction to the project']
          value: """
            Example Project'
            ===============

            An example Pegdev project. 

            """

        @project.push new File @,
          label: 'package_json'
          title: 'package.json'
          notes: ['Metadata about the project, in standard NPM format']
          value: """
            {
              "name":        "my-project",
              "version":     "0.0.1",
              "description": "An example Pegdev project",
              "main":        "build/my-project.js"
            }
            """


Functions
---------


#### `xx()`
- `xx <xx>`  Xx 

Xx. @todo describe

    xx = (xx) ->



