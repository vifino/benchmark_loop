var sw = require("node-stopwatch").Stopwatch.create();
var iter = 0;
sw.start();
while (iter%128 != 0 || sw.elapsed.seconds < 1) {
	iter++;
}
sw.stop();
console.log(iter + " iterations");
