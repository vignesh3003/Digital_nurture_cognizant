package module1.ex2_factory_method_problem;

public abstract class DocumentFactory {

    public abstract Document createDocument();

    public void showDocument() {
        Document doc = createDocument();
        doc.open();
    }
}