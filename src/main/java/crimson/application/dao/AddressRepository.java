package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Address;

public interface AddressRepository extends JpaRepository<Address, Long> {

}
