package grupo6.backendHotel.controllers;


import grupo6.backendHotel.dto.ImageDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.ImageService;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ImageController {

    @Autowired
    private ImageService imageService;


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "images/{id}", method = RequestMethod.GET)
    public ResponseEntity<ImageDTO> getImage(@PathVariable Integer id){
        ImageDTO image = imageService.getImage(id);
        if(image != null){
            return ResponseEntity.ok(image);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "images", method = RequestMethod.GET)
    public ResponseEntity<List<ImageDTO>> getAllImages() throws Exception {
        return ResponseEntity.ok(imageService.getAllImages());
    }

    // REGISTER
    @RequestMapping(value = "images",  method = RequestMethod.POST)
    public ResponseEntity<ImageDTO> registerImage(@RequestBody ImageDTO image) throws Exception {
        ImageDTO imageDTO = imageService.register(image);
        return new ResponseEntity(imageDTO, HttpStatus.CREATED);
        //return ResponseEntity.ok(imageService.register(image)).status(201).build();
    }

    //UPDATE
    @RequestMapping(value = "images/{id}", method = RequestMethod.PUT)
    public ResponseEntity<ImageDTO> updateImage(@RequestBody ImageDTO image, Integer id) throws ResourceNotFoundException, NoEncontradoException, ConflictoException, DatosIncorrectosException {
        return ResponseEntity.ok(imageService.updateImage(image, image.getId()));
    }

    //DELETE
    @RequestMapping(value = "images/{id}", method = RequestMethod.DELETE)
    public void deleteImage(@PathVariable Integer id) throws ResourceNotFoundException {
        imageService.delete(id);
    }

}
