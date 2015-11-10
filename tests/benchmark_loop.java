class BenchmarkLoop {
	public static void main(String[] args) {
		long iter = 0;
		start = System.currentTimeMillis();
		while (iter % 128 != 0 || (System.currentTimeMillis() - start) < 1000) {
			iter++;
		}
		System.out.println(iter + " interations");
	}
}
