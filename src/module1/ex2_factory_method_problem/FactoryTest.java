package module1.ex2_factory_method_problem;

public class FactoryTest {

    public static void main(String[] args) {

        DocumentFactory word =
                new WordFactory();

        DocumentFactory pdf =
                new PdfFactory();

        DocumentFactory excel =
                new ExcelFactory();

        word.showDocument();
        pdf.showDocument();
        excel.showDocument();
    }
}