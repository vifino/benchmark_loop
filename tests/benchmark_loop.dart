main() {
	 var sw = new Stopwatch();
	 var iter = 0;
	 sw.start();
	 while (iter%128 != 0 || sw.elapsed.inSeconds < 1) {
		iter++;
	 }
	 sw.stop();
	 print("$iter iterations");
}