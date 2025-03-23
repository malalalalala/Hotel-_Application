package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.FeatureDTO;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import grupo6.backendHotel.service.exceptions.NoEncontradoException;

import java.util.List;

public interface IFeature {

    FeatureDTO save(FeatureDTO featureDTO) throws ConflictoException, DatosIncorrectosException;

    FeatureDTO find(Integer id) throws NoEncontradoException;

    FeatureDTO findById(Integer id) throws NoEncontradoException;

    List<FeatureDTO> listAll();

    void delete(Integer id) throws NoEncontradoException;

    FeatureDTO update(FeatureDTO featureDTO) throws NoEncontradoException, ConflictoException;
}
