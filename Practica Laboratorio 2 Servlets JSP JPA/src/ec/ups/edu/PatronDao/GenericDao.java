package ec.ups.edu.PatronDao;

import java.util.List;

import ec.ups.edu.entidades.Usuario;

public interface GenericDao  <T,ID> {
	public void create(T entity);
	public T read(ID id);
	public void update(T entity);
	public void delete (T entity);
	public void deleteById(ID id);
	public List<T> find();
	public List<T>find(String []attributes,String[]values);
	public List<T>find(String []attributes,String[]values,String order,int index,int size);
	Usuario validar(String correo, String contra);
	
}
