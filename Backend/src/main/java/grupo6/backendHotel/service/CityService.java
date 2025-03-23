package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.CityDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.City;
import grupo6.backendHotel.repository.CityRepository;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class CityService {

    private CityRepository cityRepository;

    //Constructor que inyecta la dependencia de repository
    @Autowired
    public CityService(CityRepository cityRepository){
        this.cityRepository = cityRepository;
    }

    /********** MÉTODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a entity
    private City convertEntity(City city, final CityDTO cityDTO){
        city.setId(cityDTO.getId());
        city.setName(cityDTO.getName());
        city.setCountry(cityDTO.getCountry());
        city.setState(cityDTO.getState());
        return city;
    }

    //Metodo para convertir de Entity a DTO
    private CityDTO convertDTO(City city, final CityDTO cityDTO){
        cityDTO.setId(city.getId());
        cityDTO.setName(city.getName());
        cityDTO.setCountry(city.getCountry());
        cityDTO.setState(city.getState());
        return cityDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public CityDTO getCity(Integer id){
        final CityDTO cityDTO = new CityDTO();
        Optional<City> optionalCity = cityRepository.findById(id);
        log.info( String.valueOf(optionalCity));
        if (optionalCity.isPresent()) {
            return  convertDTO(optionalCity.get(), cityDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<CityDTO> getAllCity() throws Exception{
        List<City> cities = cityRepository.findAll();
        log.info(String.valueOf(cities));
        final List<CityDTO> citiesDTO = new ArrayList<>();
        cities.forEach(city -> {
            final CityDTO cityDTO = new CityDTO();
            convertDTO(city, cityDTO);
            citiesDTO.add(cityDTO);
        });
        return citiesDTO;
    }

    //REGISTER
    public CityDTO register(CityDTO cityDTO) throws DatosIncorrectosException, ConflictoException {
        City city = new City();
        convertEntity(city, cityDTO);
        log.info(String.valueOf(city));
        log.info(String.valueOf(cityDTO));
        city = cityRepository.save(city);
        log.info(String.valueOf(city));
        CityDTO cityDTOResponse = new CityDTO();
        convertDTO(city, cityDTOResponse);

        return cityDTOResponse;
    }

    //UPDATE
    public CityDTO updateCity(CityDTO cityDTO, Integer id) throws ResourceNotFoundException {
        //get city by id from database
        City city = cityRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no city with the ", "id", id));

        city = convertEntity(city, cityDTO);

        city = cityRepository.save(city);
        System.out.println(city);

        CityDTO cityDTOResponse = convertDTO(city,cityDTO);
        return cityDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {
        if(this.getCity(id) == null)
            throw new ResourceNotFoundException("There is no city with the ID: " + id, "id", id);
        cityRepository.deleteById(id);
    }

}
