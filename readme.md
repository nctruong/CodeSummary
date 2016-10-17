empty constructor
```javascript
  constructor: ->
````

@ is class variable, requestRoutePlan is function's name, (departure, arrival) is parameter, $.get is call ajax using get method

```javascript
  @requestRoutePlan: (departure, arrival) ->
    request = $.get('/request/route/',
      {route:
        { departure: departure,
          arrival: arrival
        }
      })
    request
    
```

**Loading bar**
```javascript
  @requestRoutePlan: (departure, arrival) ->
    request = $.get('/request/route/',
      {route:
        { departure: departure,
          arrival: arrival
        }
      })
    request
    
```


