package com.skilldistillery.edgemarketing.data;

import com.skilldistillery.edgemarketing.entities.Client;

public interface ClientDAO {

	Client getClientByLastName(String lName);


}
