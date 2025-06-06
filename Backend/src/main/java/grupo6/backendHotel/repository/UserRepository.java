package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

        Optional<User> findById(Integer id);

        User save(User user);

        public User findByEmail(String email);
}
