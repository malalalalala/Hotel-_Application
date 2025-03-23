package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.CityDTO;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;

import java.util.List;

public interface ICity {

    CityDTO save(CityDTO cityDTO) throws ConflictoException, DatosIncorrectosException;

    CityDTO find(Integer id) throws NoEncontradoException;

    CityDTO findById(Integer id) throws NoEncontradoException;

    List<CityDTO> listAll();

    void delete(Integer id) throws NoEncontradoException;

    CityDTO update(CityDTO cityDTO) throws NoEncontradoException, ConflictoException;


}
