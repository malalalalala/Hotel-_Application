package grupo6.backendHotel.service.interfaces;

import grupo6.backendHotel.dto.UserDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;

import java.util.List;

public interface IUserService {

    public UserDTO findByEmail(String email);

    public List<UserDTO> getAllUser();

    public UserDTO getUser(Integer id);

    public UserDTO getReservationByUserId(Integer id);

    public List<UserDTO> getReservationsByAllUsers();

    public UserDTO register(UserDTO userDTO);

    public UserDTO delete(Integer id);

    public UserDTO updateUser(UserDTO user, Integer id) throws ResourceNotFoundException;




}
