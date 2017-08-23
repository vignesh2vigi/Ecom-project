package com.niit.Ecombackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.Ecombackend.Dao.CartDAO;
import com.niit.Ecombackend.Dao.CategoryDAO;
import com.niit.Ecombackend.Dao.ProductDAO;
import com.niit.Ecombackend.Dao.RoleDAO;
import com.niit.Ecombackend.Dao.SupplierDAO;
import com.niit.Ecombackend.Dao.UserDAO;
import com.niit.Ecombackend.Daoimpl.CartDAOImpl;
import com.niit.Ecombackend.Daoimpl.CategoryDAOImpl;
import com.niit.Ecombackend.Daoimpl.ProductDAOImpl;
import com.niit.Ecombackend.Daoimpl.RoleDAOImpl;
import com.niit.Ecombackend.Daoimpl.SupplierDAOImpl;
import com.niit.Ecombackend.Daoimpl.UserDAOImpl;
import com.niit.Ecombackend.Model.Cart;
import com.niit.Ecombackend.Model.Category;
import com.niit.Ecombackend.Model.Product;
import com.niit.Ecombackend.Model.Role;
import com.niit.Ecombackend.Model.Supplier;
import com.niit.Ecombackend.Model.User;

@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
			
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/Ecom");

		dataSource.setDriverClassName("org.h2.Driver");

		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		
		return dataSource;
	}
	
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.format_sql", "true");
		return properties;
	}
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(Role.class);
		return sessionBuilder.buildSessionFactory();
	}
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
	}

	@Autowired(required = true)
	@Bean(name = "CategoryDAO")
	public CategoryDAO getCategoryDAO(SessionFactory sessionFactory) {
		return new CategoryDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "UserDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
		return new UserDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "productDAO")
	public ProductDAO getProductDAO(SessionFactory sessionFactory) {
		return new ProductDAOImpl(sessionFactory);
	}
	@Autowired(required = true)
	@Bean(name = "SupplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
		return new SupplierDAOImpl(sessionFactory);
	}
	@Autowired(required = true)
	@Bean(name = "CartDAO")
	public CartDAO getCartDAO(SessionFactory sessionFactory) {
		return new CartDAOImpl(sessionFactory);
	}
	@Autowired(required = true)
	@Bean(name = "RoleDAO")
	public RoleDAO getRoleDAO(SessionFactory sessionFactory) {
		return new RoleDAOImpl(sessionFactory);
	}
	
}