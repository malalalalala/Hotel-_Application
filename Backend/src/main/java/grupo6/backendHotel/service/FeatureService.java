package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.*;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.Feature;
import grupo6.backendHotel.repository.FeatureRepository;
import grupo6.backendHotel.repository.ProductHasFeatureRepository;
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
public class FeatureService {

    private FeatureRepository featureRepository;

    private ProductHasFeatureRepository productHasFeatureRepository;

    //Constructor que inyecta la dependencia de repository
    @Autowired
    public FeatureService(FeatureRepository featureRepository, ProductHasFeatureRepository productHasFeatureRepository) {
        this.featureRepository = featureRepository;
        this.productHasFeatureRepository = productHasFeatureRepository;
    }


    /********** MÉTODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de Entity a DTO
    private FeatureDTO convertDTO(Feature feature, FeatureDTO featureDTO){
        featureDTO.setId(feature.getId());
        featureDTO.setName(feature.getName());
        featureDTO.setIcon(feature.getIcon());
        return featureDTO;
    }

    //Metodo para convertir de DTO a Entity
    public Feature convertEntity(Feature feature, FeatureDTO featureDTO){
        feature.setId(featureDTO.getId());
        feature.setName(featureDTO.getName());
        feature.setIcon(featureDTO.getIcon());
        return feature;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public FeatureDTO getFeature(Integer id){
        final FeatureDTO featureDTO = new FeatureDTO();
        Optional<Feature> optionalFeature = featureRepository.findById(id);
        log.info(String.valueOf(optionalFeature));
        if (optionalFeature.isPresent()) {
            return convertDTO(optionalFeature.get(), featureDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<FeatureDTO> getAllFeature() throws Exception{
        List<Feature> features = featureRepository.findAll();
        log.info(String.valueOf(features));
        final List<FeatureDTO> featuresDTO = new ArrayList<>();
        features.forEach(feature -> {
            final FeatureDTO featureDTO = new FeatureDTO();
            convertDTO(feature, featureDTO);
            featuresDTO.add(featureDTO);
        });
        return featuresDTO;
    }

    //REGISTER
//    public FeatureDTO register(FeatureDTO featureDTO) throws DatosIncorrectosException, ConflictoException {
//        Feature feature = new Feature();
//        feature = convertEntity(feature, featureDTO);
//        log.info(String.valueOf(feature));
//        log.info(String.valueOf(featureDTO));
//        feature = featureRepository.save(feature);
//        log.info(String.valueOf(feature));
//        convertDTO(feature, featureDTO);
//        return featureDTO;
//    }

    public FeatureDTO register(FeatureDTO featureDTO) throws DatosIncorrectosException, ConflictoException {
        Feature feature = new Feature();
        convertEntity(feature, featureDTO);
        log.info(String.valueOf(feature));
        log.info(String.valueOf(featureDTO));
        feature = featureRepository.save(feature);
        log.info(String.valueOf(feature));
        FeatureDTO featureDTOResponse = new FeatureDTO();
        convertDTO(feature, featureDTOResponse);
       // featureDTOResponse.setIcon(feature.getIcon());
        return featureDTOResponse;
    }

    //UPDATE
    public FeatureDTO updateFeature(FeatureDTO featureDTO, Integer id) throws ResourceNotFoundException {
        //get feature by id from database
        Feature feature = featureRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no feature with the ", "id", id));

        feature = convertEntity(feature, featureDTO);
        feature = featureRepository.save(feature);
        System.out.println(feature);

        FeatureDTO featureDTOResponse = convertDTO(feature,featureDTO);
        return featureDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {
        if(this.getFeature(id) == null)
            throw new ResourceNotFoundException("There is no feature with the ID: " + id, "id", id);
        featureRepository.deleteById(id);
    }



    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //SE USA EN ProductService EN EL METODO GetproductsByCityName
    public List<FeatureDTO> findFeatureByProductId(Integer productId) {
        final List<FeatureDTO>  featuresDTO = new ArrayList<>();
        productHasFeatureRepository.findByProductId(productId).stream().forEach(feature -> {
            featuresDTO.add(new FeatureDTO(feature.getId(), feature.getName(), feature.getIcon()));
        });
        return featuresDTO;
    }

}