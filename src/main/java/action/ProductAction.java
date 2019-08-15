package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductAction extends ActionSupport {

    private List<Product> productList;

    public String init(){

        productList = new ArrayList<Product>();
        productList.add(new Product(1,"Galaxy Note 10",5000,""));
        productList.add(new Product(2,"Galaxy Note 9",3500,""));
        productList.add(new Product(3,"Galaxy Note 8",2800,""));
        productList.add(new Product(4,"Galaxy Note 7",2500,""));
        productList.add(new Product(5,"Galaxy S10",3000,""));
        productList.add(new Product(6,"Galaxy S9",2800,""));
        return SUCCESS;

    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
}
