package ec.ups.edu.PatronDao;

import java.util.List;

import ec.ups.edu.entidades.Telefono;

public interface TelefonoDao extends GenericDao<Telefono, Integer>{

	List<Telefono> findbyUserId(String dato);

}
