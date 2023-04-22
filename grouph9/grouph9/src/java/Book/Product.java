/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Book;

/**
 *
 * @author LowKey
 */
import java.util.*;



public class Product implements java.io.Serializable
{
    private int id;
    private String name;
    private String description;
    private double price;
    
    public Product()
    {}

    public Product(int id, String name, String description, double price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }

    public int getId() {
        return id;
    }

     public void setId(int id) {
        this.id = id;
    }
     
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public static List<Product> searchForProducts(String query) {
        List<Product> products = new ArrayList<>();

        // Perform the search
        for (Product product : getProducts()) {
            if (product.getName().toLowerCase().contains(query.toLowerCase()) ||
                    product.getDescription().toLowerCase().contains(query.toLowerCase())) {
                products.add(product);
            }
        }

        return products;
    }

    public static Product getProductById(int id) {
        for (Product product : getProducts()) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    // Example implementation of the getProducts method
    public static List<Product> getProducts() {
        List<Product> products = new ArrayList<>();

     
        products.add(new Product(1, "PHP", "A class is defined by using the class keyword.", 9999));
        products.add(new Product(2, "PYTHON", "Python is a popular programming language. It was created by Guido van Rossum \n" +
"and released in 1991.", 70000));
        products.add(new Product(3, "WINDOW SERVER", "Refers to the protection of hardware, software, and data from attackers", 40000));

        return products;
    }
}

