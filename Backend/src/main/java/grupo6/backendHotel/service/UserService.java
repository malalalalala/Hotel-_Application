package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.RoleDTO;
import grupo6.backendHotel.dto.UserDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.User;
import grupo6.backendHotel.repository.UserRepository;
import grupo6.backendHotel.service.interfaces.IUserService;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@Transactional
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;


    /********** METODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a Entity
    private User convertEntity(User user, final UserDTO userDTO){
        user.setId(userDTO.getId());
        user.setName(userDTO.getName());
        user.setLastName(userDTO.getLastName());
        user.setEmail(userDTO.getEmail());
        user.setPassword(userDTO.getPassword());
        return user;
    }

    //Metodo para convertir de Entity a DTO
    private UserDTO convertDTO(User user, final UserDTO userDTO){
        userDTO.setId(user.getId());
        userDTO.setName(user.getName());
        userDTO.setLastName(user.getLastName());
        userDTO.setEmail(user.getEmail());
        userDTO.setPassword(user.getPassword());
        if(user.getRole() != null){
            userDTO.setRole(new RoleDTO(user.getRole().getId(),user.getRole().getName()));
        }
        return userDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public UserDTO getUser(Integer id){
        final UserDTO userDTO = new UserDTO();
        Optional<User> optionalUser = userRepository.findById(id);
        //log.info(String.valueOf(optionalUser));
        if (optionalUser.isPresent()) {
            return  convertDTO(optionalUser.get(), userDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<UserDTO> getAllUser() {
        List<User> users = userRepository.findAll();
        log.info(String.valueOf(users));
        final List<UserDTO> usersDTO = new ArrayList<>();
        users.forEach(user -> {
            final UserDTO userDTO = new UserDTO();
            //userDTO.fromEntity(user);
            convertDTO(user, userDTO);
            usersDTO.add(userDTO);
        });
        return usersDTO;
    }

    //REGISTER
    public UserDTO register(UserDTO userDTO) {
        //Category category = new Category();
        //convertEntity(category, categoryDTO);
        log.info("register");
        User user = UserDTO.fromDTO(userDTO);
        log.info(String.valueOf(user));
        log.info(String.valueOf(userDTO));
        user = userRepository.save(user);
        log.info(String.valueOf(user));
        UserDTO userDTOResponse = UserDTO.fromEntity(user);
        //CategoryDTO categoryDTOResponse = new CategoryDTO();
        //convertDTO(category, categoryDTOResponse);
        log.info("register");
        return userDTOResponse;
    }

    //UPDATE
    public UserDTO updateUser(UserDTO userDTO, Integer id) throws ResourceNotFoundException {
        //get user by id from database
        User user = userRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no user with the ", "id", id));

        user = convertEntity(user,userDTO);

        user = userRepository.save(user);
        System.out.println(user);
        UserDTO userDTOResponse = convertDTO(user,userDTO);
        return userDTOResponse;
    }

    //DELETE
    @Override
    public UserDTO delete(Integer id) {
        UserDTO userDeleted = getUser(id);
        userRepository.deleteById(id);
        return userDeleted;
    }
    //METODO DELETE ELIMINADO
    //public void delete(Integer id) throws ResourceNotFoundException {
    //    if(this.getUser(id) == null)
    //        throw new ResourceNotFoundException("There is no user with the ID: " + id, "id", id);
    //        userRepository.deleteById(id);
    //}



    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //1 trae las reservas de un usuario
    public UserDTO getReservationByUserId(Integer id){
        final UserDTO userDTO = new UserDTO();
        Optional<User> optionalUser = userRepository.findById(id);
        log.info(String.valueOf(optionalUser));
        optionalUser.ifPresent(user ->{
            userDTO.fromEntity(user);
        });
        return userDTO;
    }

    //NO SE ESTÁ USANDO
    public List<UserDTO> getReservationsByAllUsers() {
        List<User> users = userRepository.findAll();
        log.info(String.valueOf(users));
        final List<UserDTO> usersDTO = new ArrayList<>();
        users.forEach(user -> {
            final UserDTO userDTO = new UserDTO();
            userDTO.fromEntity(user);
        });
        return usersDTO;
    }

    //SE USA EN UserDetailsServiceImpl PARA AUTHENTICATION
    public UserDTO findByEmail(String email){
        final UserDTO userDTO = new UserDTO();
        Optional<User> optionalUser = Optional.ofNullable(userRepository.findByEmail(email));
        log.info(String.valueOf(optionalUser));
        optionalUser.ifPresent(user -> {
            convertDTO(user, userDTO);
            //userDTO.fromEntity(user);
        });
        return userDTO;
    }

}
