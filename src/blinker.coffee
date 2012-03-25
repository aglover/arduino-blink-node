SerialPort = require("serialport").SerialPort
fs = require 'fs'

port   = '/dev/tty.usbmodem411'
serial = null
value  = 0x00


# serial = new SerialPort " /dev/tty.usbmodem411", baudrate: 9600

toggle = =>
  value = if value == 0x00 then 0x01 else 0x00
  serial.write new Buffer([value])


console.log "Starting..."
fs.stat port, (err, stats) ->
  if err?
    console.log "Couldn't stat #{port}"
    process.exit()

  console.log "Started."

  serial = new SerialPort port, baudrate: 9600
  setInterval toggle, 1000