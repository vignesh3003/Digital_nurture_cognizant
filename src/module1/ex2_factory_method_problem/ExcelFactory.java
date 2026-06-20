package module1.ex2_factory_method_problem;

public class ExcelFactory extends DocumentFactory {

    public Document createDocument() {
        return new ExcelDocument();
    }
}