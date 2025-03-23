package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.RoleDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class RoleController {

    @Autowired
    private RoleService roleService;

    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "roles/{id}", method = RequestMethod.GET)
    public ResponseEntity<RoleDTO> getRole(@PathVariable Integer id){
        RoleDTO role = roleService.getRole(id);
        if(role != null){
            return ResponseEntity.ok(role);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "roles", method = RequestMethod.GET)
    public ResponseEntity<List<RoleDTO>> getAllRoles() throws Exception {
        return ResponseEntity.ok(roleService.getAllRole());
    }

    //REGISTER
    @RequestMapping(value = "roles",  method = RequestMethod.POST)
    public ResponseEntity <RoleDTO> registerRole(@RequestBody RoleDTO role) throws Exception {
        RoleDTO roleDTO = roleService.register(role);
        return new ResponseEntity(roleDTO, HttpStatus.CREATED);
    }

    //UPDATE
    @RequestMapping(value = "roles/{id}", method = RequestMethod.PUT)
    public ResponseEntity<RoleDTO> updateRole(@RequestBody RoleDTO role) throws ResourceNotFoundException {
        return ResponseEntity.ok(roleService.updateRole(role, role.getId()));
    }

    //DELETE
    @RequestMapping(value = "roles/{id}", method = RequestMethod.DELETE)
    public void deleteRole(@PathVariable Integer id) throws ResourceNotFoundException {
        roleService.delete(id);
    }

}
