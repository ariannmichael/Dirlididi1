
public class Buffer {
    private int conteudo;
    private boolean disponivel;
 
    public synchronized void set(int idP, int valor) {
        while (disponivel == true) {
            try {
                System.out.println("Produtor #" + idP + " esperando...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        conteudo = valor;
        System.out.println("Produtor #" + 
        idP + " colocou produto #" + (this.conteudo + 1));
        disponivel = true;
        notifyAll();
    }
 
    public synchronized int get(int idC) {
        while (disponivel == false) {
            try {
                System.out.println("Consumidor #" + idC
                        + " esperado...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        System.out.println("Consumidor #" + 
        idC + " consumiu: produto"
                + (this.conteudo + 1));
        disponivel = false;
        notifyAll();
        return conteudo;
    }
}