package com.cognizant.truyum.dao;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truyum.model.CartItem;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.repository.CartItemRepository;
import com.cognizant.truyum.repository.MenuItemRepository;

@Controller
public class TruyumController {
	
	@Autowired
	MenuItemRepository menurepository;
	
	@Autowired
	CartItemRepository cartrepository;
	
	@RequestMapping(path="/menu-item-list-customer" , method=RequestMethod.GET)
	public String menuItemListCustomer(ModelMap modelmap)
	{
		modelmap.put("menuitem", menurepository.findAll());
		return "menu-item-list-customer";
	}
	
	@RequestMapping(path="/menu-item-list-admin" , method=RequestMethod.GET)
	public String menuItemListAdmin(ModelMap modelmap)
	{
		modelmap.put("menuitem", menurepository.findAll());
		return "menu-item-list-admin";
	}
	
	@RequestMapping(path="/cart" , method=RequestMethod.GET)
	public String gettingCartItems(ModelMap modelmap)
	{
		double cost = 0;
		List<CartItem> cart= (List<CartItem>) cartrepository.findAll();
		if(cart.isEmpty())
		{
			return "cart-empty";
		}
		else
		{
			modelmap.put("cartitem", cart);
			for(CartItem c:cart)
			{
				cost = cost + c.getPrice();
			}
			modelmap.put("Total", cost);
			return "cart";
		}
	}
	
	@RequestMapping(path="/cart-notification" , method=RequestMethod.GET)
	public String cartNotification(CartItem cart,@RequestParam("id") int id, ModelMap map)
	{
		double cost = 0;
		cartrepository.deleteById(id);
		List<CartItem> ca= (List<CartItem>) cartrepository.findAll();
			map.put("cartitem", ca);
			for(CartItem c:ca)
			{
			cost = cost + c.getPrice();
			}
			map.put("Total", cost);
		return "cart-notification";
	}
	
	@RequestMapping("/edit-menu-item")
	public String editMenuItem(@RequestParam("id") int id, ModelMap map)
	{
		map.put("id", id);
		return "edit-menu-item";
	}
	
	@RequestMapping("/edit-menu-item-notification")
	public String editNotification(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("price") double price, @RequestParam("active") String active, @RequestParam("date") Date date, @RequestParam("category") String category, @RequestParam("freeDelivery") String freeDelivery)
	{
		Optional<MenuItem> item = menurepository.findById(id);
		MenuItem m = item.get();
		
		m.setName(name);
		m.setActive(active);
		m.setDateOfLaunch(date);
		m.setCategory(category);
		m.setPrice(price);
		if(freeDelivery!=null)
		{
			m.setFreeDelivery("Yes");
		}
		else
		{
			m.setFreeDelivery("No");
		}
		menurepository.save(m);
		return "edit-menu-item-notification";
	}
	
	@RequestMapping("/menuitems")
	public String notification(@RequestParam("id") int id, ModelMap modelmap) {
		Optional<MenuItem> byId = menurepository.findById(id);
		MenuItem m = byId.get();
		CartItem c = new CartItem();
		c.setId(m.getId());
		c.setName(m.getName());
		c.setFreeDelivery(m.getFreeDelivery());
		c.setPrice(m.getPrice());
		cartrepository.save(c);
		modelmap.put("menuitems", menurepository.findAll());
		return "menuitemnotify";
	}
	
}


	
	