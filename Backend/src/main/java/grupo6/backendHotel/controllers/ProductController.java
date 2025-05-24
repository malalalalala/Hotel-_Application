package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.ProductDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.ProductService;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;

import java.time.LocalDate;
import java.util.List;

@Tag(name = "Products", description = "Product operations")
@Slf4j
@RestController
@CrossOrigin
public class ProductController {

    @Autowired
    private ProductService productService;

    /********** CRUD + GET ALL **********/

    @Operation(summary = "Get product by ID", description = "Retrieves a specific product by its unique identifier.")
    @RequestMapping(value = "products/{id}", method = RequestMethod.GET)
    public ResponseEntity<ProductDTO> getProduct(@PathVariable Integer id) {
        ProductDTO product = productService.getProduct(id);
        if (product != null) {
            return ResponseEntity.ok(product);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @Operation(summary = "List all products", description = "Retrieves the list of all available products.")
    @RequestMapping(value = "products", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getAllProducts() throws Exception {
        return ResponseEntity.ok(productService.getAllProduct());
    }

    @Operation(summary = "Register a new product", description = "Creates a new product in the system.")
    @RequestMapping(value = "products", method = RequestMethod.POST)
    public ResponseEntity<ProductDTO> registerProduct(@RequestBody ProductDTO product) throws Exception {
        ProductDTO productDTO = productService.register(product);
        return new ResponseEntity(productDTO, HttpStatus.CREATED);
    }

    @Operation(summary = "Update a product", description = "Updates the data of an existing product.")
    @RequestMapping(value = "products/{id}", method = RequestMethod.PUT)
    public ResponseEntity<ProductDTO> updateProduct(@RequestBody ProductDTO product)
            throws ResourceNotFoundException, NoEncontradoException, ConflictoException, DatosIncorrectosException {
        return ResponseEntity.ok(productService.updateProduct(product, product.getId()));
    }

    @Operation(summary = "Delete a product", description = "Deletes a product by its unique identifier.")
    @RequestMapping(value = "products/{id}", method = RequestMethod.DELETE)
    public void deleteProduct(@PathVariable Integer id) throws Exception {
        productService.delete(id);
    }

    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    @Operation(summary = "Get products by city", description = "Retrieves products filtered by city name.")
    @RequestMapping(value = "products/city/{name}", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getProductsByCityName(@PathVariable String name) {
        List<ProductDTO> products = productService.getProductsByCityName(name);
        if (products != null) {
            return ResponseEntity.ok(products);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @Operation(summary = "Get products by category", description = "Retrieves products filtered by category ID.")
    @RequestMapping(value = "products/category/{id}", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getProductsByCategoryId(@PathVariable Integer id) throws Exception {
        List<ProductDTO> products = productService.getProductsByCategoryId(id);
        if (products != null) {
            return ResponseEntity.ok(products);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @Operation(summary = "Get available products by dates", description = "Retrieves products available between two dates.")
    @GetMapping("/findByDate/{startDate}/{endDate}")
    public ResponseEntity<List<ProductDTO>> findBetweenDates(@PathVariable("startDate") String startDate,
            @PathVariable("endDate") String endDate) throws Exception {
        return new ResponseEntity<>(
                productService.findBetweenDates(LocalDate.parse(startDate), LocalDate.parse(endDate)), HttpStatus.OK);
    }

    @Operation(summary = "Get available products by dates and city", description = "Retrieves products available between two dates and in a specific city.")
    @GetMapping("/findByDate/{startDate}/{endDate}/{city}")
    public ResponseEntity<List<ProductDTO>> findByDatesAndCity(@PathVariable("startDate") String startDate,
            @PathVariable("endDate") String endDate, @PathVariable("city") Integer city) {
        return new ResponseEntity<>(
                productService.findByDatesAndCity(LocalDate.parse(startDate), LocalDate.parse(endDate), city),
                HttpStatus.OK);
    }

    // REVISAR: optimizar o eliminar
    // debe traer solo la lista de imagenes de 1 solo producto
    // pasar a clase imagenes
    @Operation(summary = "Get product images", description = "Retrieves the list of images associated with a specific product.")
    @RequestMapping(value = "products/{id}/images", method = RequestMethod.GET)
    public ResponseEntity<ProductDTO> getFullProduct(@PathVariable Integer id) {
        ProductDTO product = productService.getFullProduct(id);
        if (product != null) {
            return ResponseEntity.ok(product);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    // AGREGAR

    // trae productos por ciudad y fecha disponible

    // trae la cantidad de productos por categoria

}
