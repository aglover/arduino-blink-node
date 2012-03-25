{SerialPort} = require('serialport')
express = require 'express'
fs = require 'fs'

port = '/dev/tty.usbmodem411'
serial = null
interval = null
lightOn = false

turnOn = =>
  lightOn = true
  serial.write new Buffer([0x01])

turnOff = =>
  lightOn = false
  serial.write new Buffer([0x00])

toggle = =>
  if lightOn
    turnOff()
  else
    turnOn()

app = express.createServer()

app.get '/', (req, res) ->
  fs.readFile __dirname + '/../html/index.html', 'utf8', (err, text) -> 
    res.send text

app.get '/on', (req, res) ->
  clearInterval interval
  turnOn()
  res.end()

app.get '/off', (req, res) ->
  clearInterval interval
  turnOff()
  res.end()

app.get '/blink', (req, res) ->
  clearInterval interval
  interval = setInterval toggle, 500
  res.end()

console.log "Starting..."
fs.stat port, (err, stats) ->
  if err?
    console.log "Couldn't stat #{port}"
    process.exit()

  console.log "Started."

  serial = new SerialPort port, baudrate: 9600
  app.listen(8080)