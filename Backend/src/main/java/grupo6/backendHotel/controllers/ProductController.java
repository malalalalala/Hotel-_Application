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

import java.time.LocalDate;
import java.util.List;

@Slf4j
@RestController
@CrossOrigin
public class ProductController {

    @Autowired
    private ProductService productService;


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "products/{id}", method = RequestMethod.GET)
    public ResponseEntity<ProductDTO> getProduct(@PathVariable Integer id){
        ProductDTO product = productService.getProduct(id);
        if(product != null){
            return ResponseEntity.ok(product);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "products", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getAllProducts() throws Exception {
        return ResponseEntity.ok(productService.getAllProduct());
    }

    //REGISTER
    @RequestMapping(value = "products",  method = RequestMethod.POST)
    public ResponseEntity<ProductDTO> registerProduct(@RequestBody ProductDTO product) throws Exception {
        ProductDTO productDTO = productService.register(product);
        return new ResponseEntity(productDTO, HttpStatus.CREATED);
    }

    //UPDATE
    @RequestMapping(value = "products/{id}", method = RequestMethod.PUT)
    public ResponseEntity<ProductDTO> updateProduct(@RequestBody ProductDTO product) throws ResourceNotFoundException, NoEncontradoException, ConflictoException, DatosIncorrectosException {
        return ResponseEntity.ok(productService.updateProduct(product, product.getId()));
    }

    //DELETE
    @RequestMapping(value = "products/{id}", method = RequestMethod.DELETE)
    public void deleteProduct(@PathVariable Integer id) throws Exception {
        productService.delete(id);
    }



    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //trae productos según la ubicación de una ciudad
    @RequestMapping(value = "products/city/{name}", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getProductsByCityName(@PathVariable String name){
        List<ProductDTO> products = productService.getProductsByCityName(name);
        if(products != null){
            return ResponseEntity.ok(products);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @RequestMapping(value = "products/category/{id}", method = RequestMethod.GET)
    public ResponseEntity<List<ProductDTO>> getProductsByCategoryId(@PathVariable Integer id) throws Exception {
        List<ProductDTO> products = productService.getProductsByCategoryId(id);
        if(products != null){
            return ResponseEntity.ok(products);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //trae todos los productos que esten disponibles para reservas
    @GetMapping("/findByDate/{startDate}/{endDate}")
    public ResponseEntity<List<ProductDTO>> findBetweenDates(@PathVariable("startDate")  String startDate, @PathVariable("endDate") String endDate) throws Exception {
        return new ResponseEntity<>(productService.findBetweenDates(LocalDate.parse(startDate),LocalDate.parse(endDate)), HttpStatus.OK);
    }

    @GetMapping("/findByDate/{startDate}/{endDate}/{city}")
    public ResponseEntity<List<ProductDTO>> findByDatesAndCity(@PathVariable("startDate")  String startDate, @PathVariable("endDate") String endDate, @PathVariable("city") Integer city){
        return new ResponseEntity<>(productService.findByDatesAndCity(LocalDate.parse(startDate),LocalDate.parse(endDate), city), HttpStatus.OK);
    }


    //REVISAR: optimizar o eliminar
    //debe traer solo la lista de imagenes de 1 solo producto
    //pasar a clase imagenes
    @RequestMapping(value = "products/{id}/images", method = RequestMethod.GET)
    public ResponseEntity<ProductDTO> getFullProduct(@PathVariable Integer id){
        ProductDTO product = productService.getFullProduct(id);
        if(product != null){
            return ResponseEntity.ok(product);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }



    //AGREGAR

    //trae productos por ciudad y fecha disponible

    //trae la cantidad de productos por categoria

}
