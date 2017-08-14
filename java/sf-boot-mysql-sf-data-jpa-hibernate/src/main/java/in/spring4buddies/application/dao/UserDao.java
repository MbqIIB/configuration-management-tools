package in.spring4buddies.application.dao;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import in.spring4buddies.application.model.User;

@Transactional
public interface UserDao extends CrudRepository<User, Long> {

	public User findByEmail(String email);

}
