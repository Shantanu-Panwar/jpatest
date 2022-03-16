package com.cognizant.truyum.repository;

import org.springframework.data.repository.CrudRepository;

import com.cognizant.truyum.model.CartItem;

public interface CartItemRepository extends CrudRepository<CartItem , Integer> {

}
