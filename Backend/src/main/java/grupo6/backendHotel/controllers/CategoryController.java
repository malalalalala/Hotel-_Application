package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.CategoryDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CategoryController {

    @Autowired
    private CategoryService categoryService;


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "categories/{id}", method = RequestMethod.GET)
    public ResponseEntity<CategoryDTO> getCategoryById(@PathVariable Integer id){
        CategoryDTO category = categoryService.getCategoryById(id);
        if(category != null){
            return ResponseEntity.ok(category);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "categories", method = RequestMethod.GET)
    public ResponseEntity<List<CategoryDTO>> getAllCategories() throws Exception {
        return ResponseEntity.ok(categoryService.getAllCategory());
    }

    //REGISTER
    @RequestMapping(value = "categories",  method = RequestMethod.POST)
    public ResponseEntity<CategoryDTO> registerCategory(@RequestBody CategoryDTO category) throws Exception {
        CategoryDTO categoryDTO = categoryService.register(category);
        return new ResponseEntity(categoryDTO, HttpStatus.CREATED);
              //  .ok(categoryDTO).status(201).body(categoryDTO);
    }

    //UPDATE
    @RequestMapping(value = "categories/{id}", method = RequestMethod.PUT)
    public ResponseEntity<CategoryDTO> updateCategory(@RequestBody CategoryDTO category) throws ResourceNotFoundException {
        return ResponseEntity.ok(categoryService.updateCategory(category, category.getId()));
    }

    //DELETE
    @RequestMapping(value = "categories/{id}", method = RequestMethod.DELETE)
    public void deleteCategory(@PathVariable Integer id) throws ResourceNotFoundException {
        categoryService.delete(id);
    }

}
