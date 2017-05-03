package dao;


import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * <code>DBConnectionProperties</code>-luokkaa k‰ytet‰‰n tietokantayhteyden ominaisuuksien m‰‰rittelyyn.
 * 
 * @author Team Yellow 
 * @version 0.1
 */

public class DBConnectionProperties {
	
	/**
	 * T‰m‰ konstruktori rakentaa tarvittavat objektit tietokantayhteyden ominaisuuksien
	 * m‰‰rittelyyn.
	 * 
	 * @param FILE_NAME Tiedosto, josta ominaisuuden haetaan
	 * @param instance Kerta, jona ominaisuudet ovat voimassa
	 * @param properties Ominaisuus-objekti
	 */

	public static final String FILE_NAME = "db_connection.properties";
	private static DBConnectionProperties instance;
	private Properties properties;

	private DBConnectionProperties() throws IOException {
		// ladataan arvot properties-tiedostosta
		InputStream inputStream = this.getClass().getClassLoader()
				.getResourceAsStream(FILE_NAME);
		properties = new Properties();
		properties.load(inputStream);
	}

	public String getProperty(String nimi) {
		return this.properties.getProperty(nimi);
	}

	public static DBConnectionProperties getInstance() throws IOException {
		if (instance == null) {
			instance = new DBConnectionProperties();
		}
		return instance;
	}
	
}
