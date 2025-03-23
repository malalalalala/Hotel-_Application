package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.ImageDTO;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;

import java.util.List;

public interface IImages {

    ImageDTO save(ImageDTO imageDTO) throws ConflictoException, DatosIncorrectosException;

    ImageDTO find(Integer id) throws NoEncontradoException;

    ImageDTO findById(Integer id) throws NoEncontradoException;

    List<ImageDTO> listAll();

    void delete(Integer id) throws NoEncontradoException;

    ImageDTO update(Integer id) throws NoEncontradoException, ConflictoException;
}
