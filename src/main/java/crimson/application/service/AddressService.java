package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Address;
import crimson.application.repository.AddressRepository;

@Service
public class AddressService {

	@Autowired
	private AddressRepository addressRepository;

	public Address saveOrUpdate(Address address) {
		try {
			return addressRepository.save(address);
		} catch (Exception e) {
			e.printStackTrace();
			return address;
		}
	}

	public boolean delete(Address address) {
		try {
			addressRepository.delete(address);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
