package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.UserDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.UserService;
import grupo6.backendHotel.service.interfaces.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin
@Slf4j
public class UserController {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserService userService;

    @Autowired
    private IUserService iuserService;

    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "users/{id}", method = RequestMethod.GET)
    public ResponseEntity<UserDTO> getUser(@PathVariable Integer id){
        UserDTO user = userService.getUser(id);
        if(user != null){
            return ResponseEntity.ok(user);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "users", method = RequestMethod.GET)
    public ResponseEntity<List<UserDTO>> getAllUser() throws Exception {
        return ResponseEntity.ok(userService.getAllUser());
    }

    //REGISTER CON PASSWORDENCODER
    @PostMapping("/users")
    public ResponseEntity<Map<String, Object>> create(@RequestBody UserDTO user){
            //Map<String,Object> response=new HashMap<>();
            String passWEncrypt= passwordEncoder.encode(user.getPassword());
            user.setPassword(passWEncrypt);
            //response.put("respuesta",userService.register(user));
            //log.info("Respuesta response: " + response);
            UserDTO userDTO = userService.register(user);
            return new ResponseEntity(userDTO, HttpStatus.CREATED);
}


    //UPDATE
    @RequestMapping(value = "users/{id}", method = RequestMethod.PUT)
    public ResponseEntity<UserDTO> updateUser(@RequestBody UserDTO user) throws ResourceNotFoundException {
        return ResponseEntity.ok(userService.updateUser(user, user.getId()));
    }

    //DELETE
    @RequestMapping(value = "users/{id}", method = RequestMethod.DELETE)
    public void deleteUser(@PathVariable Integer id) throws ResourceNotFoundException {
        userService.delete(id);
    }



    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //1 trae las reservas de un usuario
    @RequestMapping(value = "users/{id}/reservations", method = RequestMethod.GET)
    public ResponseEntity<UserDTO> getReservationByUserId(@PathVariable Integer id){
        UserDTO user = userService.getReservationByUserId(id);
        if(user != null){
            return ResponseEntity.ok(user);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //NO SE ESTÁ UTILIZANDO
    @RequestMapping(value = "users/reservations", method = RequestMethod.GET)
    public ResponseEntity<List<UserDTO>> getReservationsByAllUsers() throws Exception {
        return ResponseEntity.ok(userService.getReservationsByAllUsers());
    }

}
