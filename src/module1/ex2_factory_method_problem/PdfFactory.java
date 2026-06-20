package module1.ex2_factory_method_problem;

public class PdfFactory extends DocumentFactory {

    public Document createDocument() {
        return new PdfDocument();
    }
}