import java.util.List;

public class Policz {

    public double suma(List<Produkt> zakupy){
        double finalValue=0;
        for (Produkt p:zakupy) {
            finalValue=finalValue+p.getCena();
        }
        return finalValue;
    }

    public double srednia(List<Produkt> zakupy){
        double finalValue=suma(zakupy)/zakupy.size();
        return finalValue;
    }
}
