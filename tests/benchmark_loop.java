class benchmark_loop { //what conventions?
	public static void main(String[] args) {
		long iter = 0;
		long start = System.currentTimeMillis();
		while (iter % 128 != 0 || (System.currentTimeMillis() - start) < 1000) {
			iter++;
		}
		System.out.println(iter + " iterations");
	}
}
