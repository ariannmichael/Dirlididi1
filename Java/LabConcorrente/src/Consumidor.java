public class Consumidor extends Thread {
    private int idConsumidor;
    private Buffer pilha;
    private int totalConsumir;
 
    public Consumidor(int id, Buffer bufferCompartilhado, int totalConsumir) {
        idConsumidor = id;
        pilha = bufferCompartilhado;
        this.totalConsumir = totalConsumir;
    }
 
    public void run() {
        for (int i = 0; i < totalConsumir; i++) {
            pilha.get(idConsumidor);
        }
        System.out.println("Consumidor #" + 
        idConsumidor + " concluido!");
    }
}