PegRule
=======

@todo describe


#### A single language rule

    class PegRule
      C: 'PegRule'
      toString: -> "[object #{@C}]"

      constructor: (config={}) ->




Properties
----------


#### `label <string>`
Xx. @todo describe

        @label = config.label


#### `humanName <string>`
Xx. @todo describe

        @humanName = config[(ªis (ªisU config.humanName), 'label', 'humanName')]


#### `initializer <string>`
Xx. @todo describe

        @initializer = if ªisU config.initializer
          "// #{@label} has no initializer"
        else
          config.initializer


#### `rule <string>`
Xx. @todo describe

        @rule = if ªisU config.rule
          "// #{@label} has no rule"
        else
          config.rule


#### `inert <boolean>`
Xx. @todo describe

        @inert = if ªisU config.inert then true else config.inert




Init
----

Initialize the instance. 

        @init()




Methods
-------


#### `init()`

Xx. @todo describe

      init: ->




#### `getInitializer()`
- `xx <xx>`  Xx 

Xx. @todo describe

      getInitializer: ->
        if @inert
          "// #{@label} '#{@humanName}' is inert\n"
        else
          "// #{@label} '#{@humanName}' initializer\n#{@initializer}\n;\n"




#### `getRule()`
- `xx <xx>`  Xx 

Xx. @todo describe

      getRule: ->
        if @inert
          "// #{@label} '#{@humanName}' is inert\n"
        else
          "// #{@label} rule\n#{@label} '#{@humanName}'\n#{@rule}\n;\n"




Functions
---------


#### `xx()`
- `xx <xx>`  Xx 

Xx. @todo describe

    xx = (xx) ->



