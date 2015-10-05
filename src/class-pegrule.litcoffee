PegRule
=======

@todo describe


#### A single language rule

    class PegRule
      C: 'PegRule'
      toString: -> "[object #{@C}]"

      constructor: (@main, config={}) ->




Properties
----------


#### `label <string>`
Xx. @todo describe

        if '_' != config.label[0] then throw "
          Label '#{config.label}' does not start '_'"
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


#### `usedRules <array of strings>`
Xx. @todo describe  
Xx. @next use `usedRuleLut` to keep rules inert, if they have inert dependencies  
0.0.7 Track dependencies between PegRules

        @usedRuleLut = {}
        ruleRx = /[\s:]+(_[_a-z0-9]+)/gi #@todo test and improve
        while null != result = ruleRx.exec(" #{@rule} ")
          @usedRuleLut[ result[1] ] = true


#### `optionalOrs <array of strings>`
Xx. @todo describe

        @optionalOrs = if ªisU config.optionalOrs then [] else config.optionalOrs


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




#### `getActiveOrs()`
- `<array of strings>`  Xx 

Xx. @todo describe

      getActiveOrs: ->
        out = []
        for optionalOr in @optionalOrs
          rule = @main.pegRuleLut[optionalOr]
          if ! rule then throw "
            Optional-or rule '#{optionalOr}' does not exist"
          unless rule.inert then out.push rule.label
        out




#### `getRule()`
- `xx <xx>`  Xx 

Xx. @todo describe

      getRule: ->
        if @inert
          "// #{@label} '#{@humanName}' is inert\n"
        else
          activeOrs = @getActiveOrs()
          """
          // #{@label} rule
          #{@label} '#{@humanName}'
          #{@rule}
          #{if activeOrs.length then ('  / ' + activeOrs.join '\n  / ') else ''}
          ;\n
          """




Functions
---------


#### `xx()`
- `xx <xx>`  Xx 

Xx. @todo describe

    xx = (xx) ->



