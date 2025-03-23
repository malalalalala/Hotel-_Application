package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.*;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.*;
import grupo6.backendHotel.repository.*;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class ProductService {

    private ProductRepository productRepository;
    private ProductHasFeatureService productHasFeatureService;
    private ProductHasFeatureRepository productHasFeatureRepository;

    private ImagesRepository imagesRepository;
    private ImageService imageService;

    private FeatureRepository featureRepository;
    private FeatureService featureService;

    private CategoryRepository categoryRepository;
    private CategoryService categoryService;

    private CityRepository cityRepository;

    private ModelMapper mapper;

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private ReservationRepository reservationRepository;


    //Constructor que inyecta la dependencia de repository
    @Autowired
    public ProductService(ProductRepository productRepository, ImagesRepository imagesRepository, ImageService imageService, FeatureRepository featureRepository, FeatureService featureService, ModelMapper mapper, ProductHasFeatureService productHasFeatureService, ProductHasFeatureRepository productHasFeatureRepository) {
        this.productRepository = productRepository;
        this.imagesRepository = imagesRepository;
        this.imageService = imageService;
        this.featureRepository = featureRepository;
        this.featureService = featureService;
        this.mapper = mapper;
        this.productHasFeatureService = productHasFeatureService;
        this.productHasFeatureRepository = productHasFeatureRepository;
    }

    public ProductService(ProductRepository productRepository, ImagesRepository imagesRepository, ImageService imageService, FeatureRepository featureRepository, FeatureService featureService, CategoryRepository categoryRepository, CityRepository cityRepository, CategoryService categoryService, ModelMapper mapper, ReservationService reservationService, ReservationRepository reservationRepository) {
        this.productRepository = productRepository;
        this.imagesRepository = imagesRepository;
        this.imageService = imageService;
        this.featureRepository = featureRepository;
        this.featureService = featureService;
        this.categoryRepository = categoryRepository;
        this.cityRepository = cityRepository;
        this.categoryService = categoryService;
        this.mapper = mapper;
        this.reservationService = reservationService;
        this.reservationRepository = reservationRepository;
    }


    /********** MÉTODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a Entity
    private Product convertEntity(Product product, final ProductDTO productDTO) {
        product.setId(productDTO.getId());
        product.setTitle(productDTO.getTitle());
        product.setShort_description(productDTO.getShort_description());
        product.setLong_description(productDTO.getLong_description());
        product.setLocation(productDTO.getLocation());
        product.setPoint(productDTO.getPoint());
        product.setOpinion(productDTO.getOpinion());
        product.setStar(productDTO.getStar());
        product.setSubtitle(productDTO.getSubtitle());
        product.setLatitude(productDTO.getLatitude());
        product.setLength(productDTO.getLength());
        product.setPolicy(productDTO.getPolicy());
        product.setRules(productDTO.getRules());
        product.setSafety_security(productDTO.getSafety_security());
        product.setCity(CityDTO.fromDTO(productDTO.getCity())); //Cambiar a DTO
        product.setCategory(CategoryDTO.fromDTO(productDTO.getCategory())); //Cambiar a DTO
        product.setAddress(productDTO.getAddress());

        return product;
    }

    //Metodo para convertir de Entity a DTO
    private ProductDTO convertDTO(Product product, final ProductDTO productDTO) {
        productDTO.setId(product.getId());
        productDTO.setTitle(product.getTitle());
        productDTO.setShort_description(product.getShort_description());
        productDTO.setLong_description(product.getLong_description());
        productDTO.setLocation(product.getLocation());
        productDTO.setPoint(product.getPoint());
        productDTO.setOpinion(product.getOpinion());
        productDTO.setStar(product.getStar());
        productDTO.setSubtitle(product.getSubtitle());
        productDTO.setLatitude(product.getLatitude());
        productDTO.setLength(product.getLength());
        productDTO.setPolicy(product.getPolicy());
        productDTO.setRules(product.getRules());
        productDTO.setSafety_security(product.getSafety_security());
        productDTO.setCity(CityDTO.fromEntity(product.getCity())); //Cambiar a DTO
        productDTO.setCategory(CategoryDTO.fromEntity(product.getCategory())); //Cambiar a DTO
        productDTO.setAddress(product.getAddress());
        productDTO.setImageList(imageService.findImageByProductId(product.getId()));
        productDTO.setFeatureList(featureService.findFeatureByProductId(product.getId()));

        return productDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public ProductDTO getProduct(Integer id) {
        final ProductDTO productDTO = new ProductDTO();
        Optional<Product> optionalProduct = productRepository.findById(id);
        log.info(String.valueOf(optionalProduct));
        if (optionalProduct.isPresent()) {
            return convertDTO(optionalProduct.get(), productDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<ProductDTO> getAllProduct() {
        List<Product> products = productRepository.findAll();
        log.info(String.valueOf(products));
        final List<ProductDTO> productsDTO = new ArrayList<>();
        products.parallelStream().forEach(product -> {
            final ProductDTO productDTO = new ProductDTO();
            convertDTO(product, productDTO);
            productDTO.setImageList(imageService.findImageByProductId(product.getId()));
            productDTO.setFeatureList(featureService.findFeatureByProductId(product.getId()));
            //productDTO.setCategory(categoryService.getCategory(product.getId()));
            productsDTO.add(productDTO);
        });
        return productsDTO;
    }

    //REGISTER
    public ProductDTO register(ProductDTO productDTO) throws DatosIncorrectosException, ConflictoException {


        Product product = new Product();
        convertEntity(product, productDTO);
        log.info(String.valueOf(product));
        log.info(String.valueOf(productDTO));
        product = productRepository.save(product);
        log.info(String.valueOf(product));
        ProductDTO productDTOResponse = new ProductDTO();
        convertDTO(product, productDTOResponse);

        List images = productDTO.getImageList();
        images.forEach(image ->{
            log.info(String.valueOf(image));
            try {
                ImageDTO image1 = new ImageDTO();
                image1 = (ImageDTO) image;
                image1.setProductId(productDTOResponse.getId());
                imageService.register((ImageDTO)(image));
            } catch (DatosIncorrectosException e) {
                e.printStackTrace();
            } catch (ConflictoException e) {
                e.printStackTrace();
            }
        });

       List features = productDTO.getFeatureList();//[1, 2, 3, 4]
        features.forEach(feature ->{ //1
            log.info(String.valueOf(feature));
            FeatureDTO feature1 = new FeatureDTO();
            feature1 = (FeatureDTO) feature;
            //Creo un objeto para el registro de la tabla pivot)
            ProductHasFeatureDTO productHasFeature1 = new ProductHasFeatureDTO();
            //Seteo la feature que viene del front
            log.info(String.valueOf(feature1));
            productHasFeature1.setFeature(feature1);
            log.info(String.valueOf(productHasFeature1.getFeature()));
            //Seteo el producto que viene del front
            productHasFeature1.setProduct(productDTOResponse);
            log.info(String.valueOf(productHasFeature1.getProduct()));
            //Creo un objeto para la key
            ProductHasFeatureId productHasFeatureId = new ProductHasFeatureId();
            productHasFeatureId.setFeatureId(feature1.getId());
            productHasFeatureId.setProductId(productDTOResponse.getId());
            //Seteo la key
            productHasFeature1.setId(productHasFeatureId);
            log.info(String.valueOf(productHasFeature1.getId().getProductId()));
            log.info(String.valueOf(productHasFeature1.getId().getFeatureId()));
            //Guardo
            try {
                ProductHasFeatureDTO productHasFeatureResponse = productHasFeatureService.register(productHasFeature1);
            } catch (DatosIncorrectosException e) {
                e.printStackTrace();
            } catch (ConflictoException e) {
                e.printStackTrace();
            }
        });

        return productDTOResponse;

    }

    //UPDATE
    public ProductDTO updateProduct(ProductDTO productDTO, Integer id) throws ResourceNotFoundException {
        //get product by id from database
        Product product = productRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Product", "id", id));

        product = convertEntity(product, productDTO);

        product = productRepository.save(product);
        System.out.println(product);
        ProductDTO productDTOResponse = convertDTO(product, productDTO);
        return productDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {
        Integer product_id = productHasFeatureService.findProductIdByProductId(id);
            log.info(String.valueOf(product_id));
            productHasFeatureRepository.deleteByProductId(product_id);

        List images = imageService.findImageByProductId(id);
        images.forEach(image ->{
            try {
                ImageDTO image1 = new ImageDTO();
                image1 = (ImageDTO) image;
                imageService.delete(image1.getId());
            } catch (ResourceNotFoundException e) {
                e.printStackTrace();
            }
        });
        productRepository.deleteById(id);
        if (this.getProduct(id) == null)
            throw new ResourceNotFoundException("There is no product with the ID: " + id, "id", id);
    }


    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //trae productos según la ubicación de una ciudad
    public List<ProductDTO> getProductsByCityName(String name) {
        List<Product> products = productRepository.getProductsByCityName(name);
        log.info(String.valueOf(products));
        final List<ProductDTO> productsDTO = new ArrayList<>();
        products.parallelStream().forEach(product -> {
            final ProductDTO productDTO = new ProductDTO();
            convertDTO(product, productDTO);
            productDTO.setImageList(imageService.findImageByProductId(product.getId()));
            productDTO.setFeatureList(featureService.findFeatureByProductId(product.getId()));
            productsDTO.add(productDTO);
        });
        return productsDTO;
    }

    //trae productos segun el id de la categoria
    public List<ProductDTO> getProductsByCategoryId(Integer id) throws Exception {
        List<Product> products = productRepository.findProductByCategoryId(id);
        log.info(String.valueOf(products));
        final List<ProductDTO> productsDTO = new ArrayList<>();
        products.forEach(product -> {
            final ProductDTO productDTO = new ProductDTO();
            convertDTO(product, productDTO);
            productDTO.setImageList(imageService.findImageByProductId(product.getId()));
            productDTO.setFeatureList(featureService.findFeatureByProductId(product.getId()));
            productsDTO.add(productDTO);
        });
        return productsDTO;
    }
     //NUEVO MÉTODO OPTIMIZADO
    //trae todos los productos que esten disponibles para reservas
    public List<ProductDTO> findBetweenDates(LocalDate startDate, LocalDate endDate) throws Exception {
        List<Product> products = productRepository.findByDates(startDate, endDate);
            final List<ProductDTO> productsDTO = new ArrayList<>();
            products.parallelStream().forEach(product -> {
                final ProductDTO productDTO = new ProductDTO();
                convertDTO(product, productDTO);
                productsDTO.add(productDTO);
            });
            return productsDTO;
    }


    //DONDE SE ESTÁ UTILIZANDO????????????????????????
    @Override
    public boolean equals(Object other) {
        if (!(other instanceof ProductDTO))
            return false;
        ProductDTO p = (ProductDTO) other;
        return p.getId().equals(this.getProduct(p.getId()));
    }

    //REVISAR: optimizar o eliminar
    //debe traer solo la lista de imagenes de 1 solo producto
    //pasar a clase imagenes
    public ProductDTO getFullProduct(Integer id) {
        Optional<Product> optionalProduct = productRepository.findById(id);
        final ProductDTO productDTO = new ProductDTO();
        log.info(String.valueOf(optionalProduct));
        optionalProduct.ifPresent(product -> {
            convertDTO(product, productDTO);
            productDTO.setImageList(imageService.findImageByProductId(product.getId()));
            productDTO.setFeatureList(featureService.findFeatureByProductId(product.getId()));
            //productDTO.setCategory(categoryService.getCategory(product.getId()));
        });
        return productDTO;
    }


    //AGREGAR

    //trae productos por ciudad y fecha disponible
    public List<ProductDTO> findByDatesAndCity(LocalDate checkIn, LocalDate checkOut, Integer city) {
        List<Product> products = productRepository.findByDatesAndCity(checkIn, checkOut, city);
        final List<ProductDTO> productsDTO = new ArrayList<>();
        products.parallelStream().forEach(product -> {
            final ProductDTO productDTO = new ProductDTO();
            convertDTO(product, productDTO);
            productsDTO.add(productDTO);
        });
        return productsDTO;
    }

    //trae la cantidad de productos por categoria
    public List<Product> getProductsQuantityByCategoryId(Integer categoryId) {
        final List<Product> productsQuantityByCategoryId = productRepository.getProductsQuantityByCategoryId(categoryId);
        return productsQuantityByCategoryId;
    }
}



    /********** MÉTODOS PARA BORRAR **********/

    /*public List<ProductDTO> findProductByCategoryId(Integer categoryId) {
        final List<ProductDTO> productsDTO = new ArrayList<>();
        productRepository.findProductByCategoryId(categoryId).stream().forEach(product -> {
            productsDTO.add(new ProductDTO(product.getId(), product.getTitle(), product.getShort_description(),
                                product.getLong_description(), product.getLocation(), product.getPoint(), product.getOpinion(),
                                product.getStar(), product.getSubtitle(), product.getLatitude(), product.getLength(), product.getPolicy(),
                                product.getRules(), product.getSafety_security(), product.getCategory(), product.getCity()));
        });
        return productsDTO;
    }


    public void delete(Integer id) throws ResourceNotFoundException {

        if (this.getProduct(id) == null)
            throw new ResourceNotFoundException("There is no product with the ID: " + id, "id", id);
        productRepository.deleteById(id);
    }

    public ProductDTO updateProduct(ProductDTO productDTO, Integer id) throws ResourceNotFoundException {
        //get product by id from database
        Product product = productRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Product", "id", id));

        product = convertEntity(product, productDTO);

        product = productRepository.save(product);
        System.out.println(product);
        ProductDTO productDTOResponse = new ProductDTO();
        productDTOResponse = convertDTO(product, productDTO);
        return productDTOResponse;
    }



}*/
