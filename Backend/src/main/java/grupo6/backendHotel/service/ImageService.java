package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.ImageDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.Image;
import grupo6.backendHotel.repository.ImagesRepository;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Slf4j
@Service
public class ImageService {


    private ImagesRepository imageRepository;


    //SE USA MODEL MAPPER????????????????????
    private ModelMapper mapper;

    @Autowired
    public ImageService(ImagesRepository imageRepository, ModelMapper mapper) {
        this.imageRepository = imageRepository;
        this.mapper = mapper;
    }


    /**********METODOS PARA CONVERTIR A DTO Y ENTIDAD**********/

    //Metodo para convertir de Entity a DTO
    private ImageDTO convertDTO(Image image, ImageDTO imageDTO){
        //ImageDTO imageDTO = new ImageDTO();
        imageDTO.setId(image.getId());
        imageDTO.setTitle(image.getTitle());
        imageDTO.setUrl(image.getUrl());
        imageDTO.setProductId(image.getProductId());
        return imageDTO;
    }

    //Metodo para convertir de DTO a Entity
    private Image convertEntity(Image image, ImageDTO imageDTO){
        //Image image = new Image();
        image.setId(imageDTO.getId());
        image.setTitle(imageDTO.getTitle());
        image.setUrl(imageDTO.getUrl());
        image.setProductId(imageDTO.getProductId());
        return image;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public ImageDTO getImage(Integer id){
        final ImageDTO imageDTO = new ImageDTO();
        Optional<Image> optionalImage = imageRepository.findById(id);
        log.info(String.valueOf(optionalImage));
        if (optionalImage.isPresent()) {
            return  convertDTO(optionalImage.get(), imageDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<ImageDTO> getAllImages() throws Exception{
        List<Image> images = imageRepository.findAll();
        log.info(String.valueOf(images));
        final List<ImageDTO> imagesDTO = new ArrayList<>();
        images.forEach(image -> {
            final ImageDTO imageDTO = new ImageDTO();
            imageDTO.setId(image.getId());
            imageDTO.setTitle(image.getTitle());
            imageDTO.setUrl(image.getUrl());
            imageDTO.setProductId(image.getProductId());
            imagesDTO.add(imageDTO);
        });
        return imagesDTO;
    }

    //REGISTER
    public ImageDTO register(ImageDTO imageDTO) throws DatosIncorrectosException, ConflictoException {
        Image image = new Image();
        convertEntity(image, imageDTO);
        log.info(String.valueOf(image));
        log.info(String.valueOf(imageDTO));
        image = imageRepository.save(image);
        log.info(String.valueOf(image));
        ImageDTO imageDTOResponse = new ImageDTO();
        convertDTO(image, imageDTOResponse);;
        return imageDTOResponse;

    }

    //UPDATE
    public ImageDTO updateImage(ImageDTO imageDTO, Integer id) throws ResourceNotFoundException {
        //get image by id from database
        Image image = imageRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no image with the ", "id", id));

        image = convertEntity(image, imageDTO);

        image = imageRepository.save(image);
        System.out.println(image);
        ImageDTO imageDTOResponse = convertDTO(image, imageDTO);
        return imageDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {

        if(this.getImage(id) == null)
            throw new ResourceNotFoundException("There is no image with the ID: " + id, "id", id);
        imageRepository.deleteById(id);
    }



    /**********MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT**********/

    public List<ImageDTO> findImageByProductId(Integer productId) {
        final List<ImageDTO> imagesDTO = new ArrayList<>();
        imageRepository.findImageByProductId(productId).stream().forEach(image -> {
            imagesDTO.add(new ImageDTO(image.getId(), image.getTitle(), image.getUrl(), image.getProductId()));
        });
        return imagesDTO;
    }

}
