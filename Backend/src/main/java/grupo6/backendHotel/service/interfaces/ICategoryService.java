package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.CategoryDTO;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;

import java.util.List;

public interface ICategoryService {

    CategoryDTO save(CategoryDTO categoryDTO) throws ConflictoException;

    CategoryDTO find(Integer id) throws NoEncontradoException;

    CategoryDTO findById(Integer id) throws NoEncontradoException;

    List<CategoryDTO> listAll();

    void delete(Integer id) throws NoEncontradoException;

    CategoryDTO update(CategoryDTO categoryDTO) throws NoEncontradoException, ConflictoException;
}
