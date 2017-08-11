package in.spring4buddies.application.models;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

@Transactional
public interface UserDao extends CrudRepository<User, Long> {

	public User findByEmail(String email);

} // class UserDao
