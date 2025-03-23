package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.CategoryDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.Category;
import grupo6.backendHotel.repository.CategoryRepository;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class CategoryService {

    private CategoryRepository categoryRepository;

    private CategoryService categoryService;    //por qué se recibe asi misma?

    private ProductService productService;

    //Constructor que inyecta la dependencia de repository
    @Autowired
    public CategoryService(CategoryRepository categoryRepository, ProductService productService) {
        this.categoryRepository = categoryRepository;
        this.productService = productService;
    }

    /********** MÉTODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a Entity
    private Category convertEntity(Category category, final CategoryDTO categoryDTO){
        category.setId(categoryDTO.getId());
        category.setTitle(categoryDTO.getTitle());
        category.setDescription(categoryDTO.getDescription());
        category.setImage_url(categoryDTO.getImage_url());
        return category;
    }

    //Metodo para convertir de Entity a DTO
    private CategoryDTO convertDTO(Category category, final CategoryDTO categoryDTO){
        categoryDTO.setId(category.getId());
        categoryDTO.setTitle(category.getTitle());
        categoryDTO.setDescription(category.getDescription());
        categoryDTO.setImage_url(category.getImage_url());
        //categoryDTO.setCount_products(categoryDTO.getCount_products());
        return categoryDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public CategoryDTO getCategoryById(Integer id){
        final CategoryDTO categoryDTO = new CategoryDTO();
        Optional<Category> optionalCategory = categoryRepository.findById(id);
        log.info(String.valueOf(optionalCategory));
        if (optionalCategory.isPresent()) {
            return  convertDTO(optionalCategory.get(), categoryDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<CategoryDTO> getAllCategory() throws Exception{
        List<Category> categories = categoryRepository.findAll();
        log.info(String.valueOf(categories));
        final List<CategoryDTO> categoriesDTO = new ArrayList<>();
        categories.forEach(category -> {
            final CategoryDTO categoryDTO = new CategoryDTO();
            convertDTO(category, categoryDTO);
            categoryDTO.setProductsQuantity(productService.getProductsQuantityByCategoryId(categoryDTO.getId()).size());
            categoriesDTO.add(categoryDTO);
        });
        return categoriesDTO;
    }

    //REGISTER
    public CategoryDTO register(CategoryDTO categoryDTO) {
        //Category category = new Category();
        //convertEntity(category, categoryDTO);
        log.info("register");
        Category category = CategoryDTO.fromDTO(categoryDTO);
        log.info(String.valueOf(category));
        log.info(String.valueOf(categoryDTO));
        category = categoryRepository.save(category);
        log.info(String.valueOf(category));
        CategoryDTO categoryDTOResponse = CategoryDTO.fromEntity(category);
        //CategoryDTO categoryDTOResponse = new CategoryDTO();
        //convertDTO(category, categoryDTOResponse);
        log.info("register");
        return categoryDTOResponse;
    }

    //UPDATE
    public CategoryDTO updateCategory(CategoryDTO categoryDTO, Integer id) throws ResourceNotFoundException {
        //get image by id from database
        Category category = categoryRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no image with the ", "id", id));

        category = convertEntity(category, categoryDTO);

        category = categoryRepository.save(category);
        System.out.println(category);
        CategoryDTO categoryDTOResponse = convertDTO(category,categoryDTO);

        return categoryDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {

        if(this.getCategoryById(id) == null)
            throw new ResourceNotFoundException("There is no image with the ID: " + id, "id", id);
        categoryRepository.deleteById(id);
    }



//    //se usa?????
//    public CategoryDTO getProductByCategory(Integer id){
//        final CategoryDTO categoryDTO = new CategoryDTO();
//        Optional<Category> optionalCategory = categoryRepository.findById(id);
//        log.info(String.valueOf(optionalCategory));
//        optionalCategory.ifPresent(category ->{
//            convertDTO(category, categoryDTO);
//            categoryDTO.setProductList(productService.findProductByCategoryId(category.getId()));
//        });
//
//        return categoryDTO;
//    }


//    public List<CategoryDTO> getProductsByAllCategories() throws Exception{
//        List<Category> categories = categoryRepository.findAll();
//        log.info(String.valueOf(categories));
//        final List<CategoryDTO> categoriesDTO = new ArrayList<>();
//        categories.forEach(category -> {
//            final CategoryDTO categoryDTO = new CategoryDTO();
//            convertDTO(category, categoryDTO);
//            categoryDTO.setProductList(productService.findProductByCategoryId(category.getId()));
//            categoriesDTO.add(categoryDTO);
//        });
//        return categoriesDTO;
//    }

}
