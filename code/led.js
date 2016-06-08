var five = require("johnny-five");

var port = process.argv[2];

var board = new five.Board({port: port});

board.on("ready", function() {

  // Create a standard `led` component instance
  var led = new five.Led(13);

  // "blink" the led in 500ms
  // on-off phase periods
  led.blink(1000);
});
