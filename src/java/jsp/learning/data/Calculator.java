package jsp.learning.data;

/**
 * Created by A-6077 on 3/12/14.
 */

public class Calculator{
    private int number;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int cube(){
        int n = getNumber();
        return n*n*n;}

    public int cube(int n){return n*n*n;}

}
