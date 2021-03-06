package coffeeshop.service;

import coffeeshop.entity.Category;
import java.util.List;

public interface CategoryService {

    List<Category> findAllIngredients();

    List<Category> findAllSugars();

    Category findById(int id);

    Category save(Category category);

    List<Category> findAll();

    List<Category> findAllDisabled();

}
