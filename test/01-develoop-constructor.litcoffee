01 Develoop Constructor
=======================


    tudor.add [
      "01 Develoop Constructor Usage"
      tudor.is



      "(Set up a `main` instance)"
      -> [new Main]



      "The class and instance are expected types"


      "The Develoop class is a function"
      ªF
      -> Main

      "`new` returns an object"
      ªO
      (main) -> main

      "`pegjs` is an object"
      ªO
      (main) -> main.pegjs


      tudor.equal


      "`Develoop.toString()` is '[object Develoop]'"
      '[object Develoop]'
      (main) -> '' + main

Basic PEGjs tests. 

      "`pegjs.toString()` is '[object Object]'"
      '[object Object]'
      (main) -> '' + main.pegjs

      "`pegjs.VERSION` is '0.9.0'"
      '0.9.0'
      (main) -> main.pegjs.VERSION

      "`pegjs.buildParser` is a function"
      ªF
      (main) -> typeof main.pegjs.buildParser        


      tudor.throw


      #@todo modify tudor to allow alternate exception message from Node.js: 
      #"Calling `pegjs.buildParser()` with no arguments throws an exception"
      #"u is undefined"
      #(main) -> main.pegjs.buildParser()


      (main) -> [main, main.pegjs.buildParser("start = ('a' / 'b')+")]


      tudor.is


      "`pegjs.buildParser(\"start = ('a' / 'b')+\")` returns an object"
      ªO
      (main, parser) -> parser

      "The object has a `parse()` method"
      ªF
      (main, parser) -> parser.parse


      tudor.throw


      #@todo modify tudor to allow alternate exception message from Node.js: 
      #"Calling the `parse()` method with no arguments throws an exception"
      #"input is undefined"
      #(main, parser) -> parser.parse()

      "Calling `parse('')` throws a well written exception"
      'Expected "a" or "b" but end of input found.'
      (main, parser) -> parser.parse ''


      tudor.is


      "Calling `parse('a')` returns an array"
      ªA
      (main, parser) -> parser.parse 'a'


      tudor.equal


      "The returned array has one element"
      1
      (main, parser) -> parser.parse('a').length

      "The element is the string 'a'"
      'a'
      (main, parser) -> parser.parse('a')[0]

      "`parser.parse('babba')` has 5 elements 'b,a,b,b,a'"
      'b,a,b,b,a'
      (main, parser) -> parser.parse('babba').join ','






    ];

