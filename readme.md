# COFFEESCRIP SYNTAX
empty constructor
```CoffeeScript
  constructor: ->
````

@ is class variable, requestRoutePlan is function's name, (departure, arrival) is parameter, $.get is call ajax using get method

```CoffeeScript
  @requestRoutePlan: (departure, arrival) ->
    request = $.get('/request/route/',
      {route:
        { departure: departure,
          arrival: arrival
        }
      })
    request
    
```

# UTILS
**Loading bar**
```CoffeeScript
  startLoadingBar: (state_strings) ->
    $('.loading_overlay').show()
    loading_bar_states = state_strings

  endLoadingBar: ->
    $('.loading_overlay').fadeOut('fast', () ->
      $('.loading_overlay .text').text('Please wait...')
      loading_bar_states = null
      loading_bar_current_state = 0
    )
    
```
**Check status and alert**
```CoffeeScript
  request = Models.Storage.requestRoutePlan(departure, arrival)
  request.fail () -> alert('There was problem to draw the shortest route.')
```

```CoffeeScript
```
    
```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```

```CoffeeScript
```
