package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.FeatureDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.FeatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;

import java.util.List;

@Tag(name = "Features", description = "Feature operations")
@RestController
@CrossOrigin
public class FeatureController {

    @Autowired
    private FeatureService featureService;

    /********** CRUD + GET ALL **********/

    @Operation(summary = "Get feature by ID", description = "Retrieves a specific feature by its unique identifier.")
    @RequestMapping(value = "features/{id}", method = RequestMethod.GET)
    public ResponseEntity<FeatureDTO> getFeature(@PathVariable Integer id) {
        FeatureDTO featureDTO = featureService.getFeature(id);
        if (featureDTO != null) {
            return ResponseEntity.ok(featureDTO);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @Operation(summary = "List all features", description = "Retrieves the list of all features.")
    @RequestMapping(value = "features", method = RequestMethod.GET)
    public ResponseEntity<List<FeatureDTO>> getAllFeature() throws Exception {
        return ResponseEntity.ok(featureService.getAllFeature());
    }

    @Operation(summary = "Register a new feature", description = "Creates a new feature in the system.")
    @RequestMapping(value = "features", method = RequestMethod.POST)
    public ResponseEntity<FeatureDTO> registerFeature(@RequestBody FeatureDTO feature) throws Exception {
        FeatureDTO featureDTO = featureService.register(feature);
        return new ResponseEntity(featureDTO, HttpStatus.CREATED);
        // return
        // ResponseEntity.ok(featureService.register(feature)).status(201).build();
    }

    @Operation(summary = "Update a feature", description = "Updates the data of an existing feature.")
    @RequestMapping(value = "features/{id}", method = RequestMethod.PUT)
    public ResponseEntity<FeatureDTO> updateFeature(@RequestBody FeatureDTO feature) throws ResourceNotFoundException {
        return ResponseEntity.ok(featureService.updateFeature(feature, feature.getId()));
    }

    @Operation(summary = "Delete a feature", description = "Deletes a feature by its unique identifier.")
    @RequestMapping(value = "features/{id}", method = RequestMethod.DELETE)
    public void deleteFeature(@PathVariable Integer id) throws ResourceNotFoundException {
        featureService.delete(id);
    }

}
