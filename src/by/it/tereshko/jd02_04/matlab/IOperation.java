package by.it.tereshko.jd02_04.matlab;

public interface IOperation {

    Var add(Var var) throws MathException;

    Var sub(Var var) throws MathException;

    Var mul(Var var) throws MathException;

    Var div(Var var) throws MathException;

    void save(String name);

}