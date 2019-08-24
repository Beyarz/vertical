app = document.getElementById('root')

randomInteger = (max, min) ->
  return Math.floor(Math.random() * max) + min

createNode = (instance) ->
  nodeInstance =
    r: randomInteger(255, 2)
    g: randomInteger(255, 2)
    b: randomInteger(255, 2)
    height: randomInteger(12, 1)
  node = document.createElement('span')
  node.className = 'round'
  node.style = "border: 0.4rem solid rgb(#{nodeInstance.r}, #{nodeInstance.g}, #{nodeInstance.b});"
  node.style.paddingTop = nodeInstance.height + 'rem'
  return node

injectObject = (object) ->
  app.appendChild(object)

regenerate = ->
  app
    .childNodes[0]
    .remove()
  initialize(1)

initialize = (amount) ->
  for each in [1..amount]
    node = createNode(node)
    injectObject(node)

initialize(13) && setInterval( regenerate, 1000 )
