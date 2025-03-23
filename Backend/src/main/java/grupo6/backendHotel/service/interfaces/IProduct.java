package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.ImageDTO;
import grupo6.backendHotel.dto.ProductDTO;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;

import java.util.List;

public interface IProduct {

    ProductDTO save(ProductDTO productDTO) throws ConflictoException, DatosIncorrectosException;

    ProductDTO find(Integer id) throws NoEncontradoException;

    ProductDTO findById(Integer id) throws NoEncontradoException;

    List<ProductDTO> listAll();

    void delete(Integer id) throws NoEncontradoException;

    ProductDTO update(ImageDTO imageDTO) throws NoEncontradoException, ConflictoException;
}
