package com.skilldistillery.edgemarketing.data;

import java.util.List;

import com.skilldistillery.edgemarketing.entities.Agent;

public interface AgentDAO {

	List<Agent> getAgentByLastName(String lastName);

}
