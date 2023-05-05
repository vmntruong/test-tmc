public class MyLoop {
    public static void main(String[] args) {
        for (int i=1; i<=100; i++) {
            if (i%3 == 0 && i%5 == 0) {
                System.out.println("ChausettesSales");
            }
            else if (i%3 == 0) {
                System.out.println("Chaussettes");
            }
            else if (i%5 == 0) {
                System.out.println("Sales");
            }
            else {
                System.out.println(i);
            }
        }
    }
}
