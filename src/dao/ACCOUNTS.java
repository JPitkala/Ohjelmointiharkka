package dao;
/**
 * <code>ACCOUNTS</code> luokkaa k‰ytet‰‰n tietokannan kirjautumistietojen v‰litt‰miseen
 * DAO luokalle.
 * 
 * @author Team Yellow
 * @version 0.1
 */
public class ACCOUNTS {

	/**
	 * T‰m‰ konstruktori luo kirjautumiseen tarvittavat objektit ja antaa niille arvot.
	 * 
	 * @param url  kirjautumis osoite
	 * @param password kirjautumis salasana
	 * @param driver k‰ytett‰v‰ ajuri
	 * @param username Kirjautumiseen k‰ytett‰v‰ k‰ytt‰j‰nimi
	 */
	
	public static final String url = "jdbc:mysql://localhost:3306/projekti";
	public static final String password = "hiRAFL37k";
	public static final String driver = "org.mariadb.jdbc.Driver";
	public static final String username = "projekti";
	
	
}
