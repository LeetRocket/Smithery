util = require 'util'
fs = require 'fs'
io = require('socket.io').listen 1337


http = require('http').createServer (req, res) ->
  'lol'
http.listen '8080'

io.configure ->
  io.set 'authorization', (hsData, cb) ->
    cb(null, true)
    
io.socket.on 'connection', (socket)->
  socket.emit 'news', 'hello'