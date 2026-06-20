package module2.ecommerce_search_question;

public class SearchTest {

    public static void main(
            String[] args
    ) {

        Product[] products = {

                new Product(
                        101,
                        "Camera",
                        "Electronics"
                ),

                new Product(
                        102,
                        "Laptop",
                        "Electronics"
                ),

                new Product(
                        103,
                        "Phone",
                        "Electronics"
                ),

                new Product(
                        104,
                        "Watch",
                        "Accessories"
                )
        };

        System.out.println(
                "Linear Search:"
        );

        Product p1 =
                SearchEngine.linearSearch(
                        products,
                        "Phone"
                );

        if (
                p1 != null
        ) {

            p1.display();
        }

        System.out.println(
                "\nBinary Search:"
        );

        Product p2 =
                SearchEngine.binarySearch(
                        products,
                        "Phone"
                );

        if (
                p2 != null
        ) {

            p2.display();
        }

        System.out.println(
                "\nComplexity:"
        );

        System.out.println(
                "Linear Search = O(n)"
        );

        System.out.println(
                "Binary Search = O(log n)"
        );
    }
}