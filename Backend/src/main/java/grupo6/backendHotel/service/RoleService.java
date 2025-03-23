package grupo6.backendHotel.service;


import grupo6.backendHotel.dto.RoleDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.Role;
import grupo6.backendHotel.repository.RoleRepository;
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
public class RoleService {

    private RoleRepository roleRepository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }


    /********** METODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a entity
    private Role convertEntity(Role role, final RoleDTO roleDTO){
        role.setId(roleDTO.getId());
        role.setName(roleDTO.getName());

        return role;
    }

    //Metodo para convertir de Entity a DTO
    private RoleDTO convertDTO(Role role, final RoleDTO roleDTO){
        roleDTO.setId(role.getId());
        roleDTO.setName(role.getName());

        return roleDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public RoleDTO getRole(Integer id){
        final RoleDTO roleDTO = new RoleDTO();
        Optional<Role> optionalRole = roleRepository.findById(id);
        log.info( String.valueOf(optionalRole));
        if (optionalRole.isPresent()) {
            return  convertDTO(optionalRole.get(), roleDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<RoleDTO> getAllRole() throws Exception{
        List<Role> roles = roleRepository.findAll();
        log.info(String.valueOf(roles));
        final List<RoleDTO> rolesDTO = new ArrayList<>();
        roles.forEach(role -> {
            final RoleDTO roleDTO = new RoleDTO();
            convertDTO(role, roleDTO);
            rolesDTO.add(roleDTO);
        });
        return rolesDTO;
    }

    //REGISTER
    public RoleDTO register(RoleDTO roleDTO) throws DatosIncorrectosException, ConflictoException {
        Role role = new Role();
        convertEntity(role, roleDTO);
        log.info(String.valueOf(role));
        log.info(String.valueOf(roleDTO));
        role = roleRepository.save(role);
        log.info(String.valueOf(role));
        RoleDTO roleDTOResponse = new RoleDTO();
        convertDTO(role, roleDTOResponse);

        return roleDTOResponse;
    }

    //UPDATE
    public RoleDTO updateRole(RoleDTO roleDTO, Integer id) throws ResourceNotFoundException {
        //get role by id from database
        Role role = roleRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("There is no role with the ", "id", id));

        role = convertEntity(role, roleDTO);

        role = roleRepository.save(role);
        System.out.println(role);
        RoleDTO roleDTOResponse = convertDTO(role,roleDTO);
        return roleDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException {

        if(this.getRole(id) == null)
            throw new ResourceNotFoundException("There is no role with the ID: " + id, "id", id);
        roleRepository.deleteById(id);
    }

}
