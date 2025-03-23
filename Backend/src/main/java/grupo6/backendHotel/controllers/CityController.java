package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.CityDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CityController {

    @Autowired
    private CityService cityService;


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "cities/{id}", method = RequestMethod.GET)
    public ResponseEntity<CityDTO> getCity(@PathVariable Integer id){
        CityDTO city = cityService.getCity(id);
        if(city != null){
            return ResponseEntity.ok(city);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "cities", method = RequestMethod.GET)
    public ResponseEntity<List<CityDTO>> getAllCity() throws Exception {
        return ResponseEntity.ok(cityService.getAllCity());
    }

    //REGISTER
    @RequestMapping(value = "cities",  method = RequestMethod.POST)
    public ResponseEntity <CityDTO> registerCity(@RequestBody CityDTO city) throws Exception {
        CityDTO cityDTO = cityService.register(city);
        return new ResponseEntity(cityDTO, HttpStatus.CREATED);
    }

    //UPDATE
    @RequestMapping(value = "cities/{id}", method = RequestMethod.PUT)
    public ResponseEntity<CityDTO> updateCity(@RequestBody CityDTO city) throws ResourceNotFoundException {
        return ResponseEntity.ok(cityService.updateCity(city, city.getId()));
    }

    //DELETE
    @RequestMapping(value = "cities/{id}", method = RequestMethod.DELETE)
    public void deleteCity(@PathVariable Integer id) throws ResourceNotFoundException {
        cityService.delete(id);
    }

}