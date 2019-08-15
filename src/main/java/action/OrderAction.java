package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.Order;
import entity.Product;

import java.util.List;

public class OrderAction extends ActionSupport {
    private Order order;
    private List<Product> products;

    public void setOrder(Order order) {
        this.order = order;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public String order() {
        return INPUT;
    }
    public String detail(){
        return SUCCESS;
    }
    public Order getOrder() {
        return order;
    }

    public void setStudent(Order order) {
        this.order = order;
    }
}
