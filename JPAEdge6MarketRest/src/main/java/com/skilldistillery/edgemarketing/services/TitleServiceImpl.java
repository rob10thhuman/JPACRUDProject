package com.skilldistillery.edgemarketing.services;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.Title;
import com.skilldistillery.edgemarketing.repositories.TitleRepo;

@Service
public class TitleServiceImpl implements TitleService {
	@PersistenceContext
	private EntityManager em;
	
	private TitleRepo tRepo;
	
	private TitleServiceImpl(TitleRepo tRepo) {
		this.tRepo = tRepo;
	}
	
	@Override
	public Title show(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Title> getAll() {
		List<Title> getList = tRepo.findAll();
		return getList;
	}
	
	@Override
	public List<Object[]> getRankedList() {
		String qry1 = "SELECT count(t) as total, contractor from Title t group by contractor order by total desc";
		String qry2 = "SELECT count(t) as total, contractor from Title t where date>='2019-01-01' and date<='2019-01-31' group by contractor order by total desc";
		String qry3 = "SELECT count(t) as total, contractor from Title t where date>='2019-02-01' and date<='2019-02-28' group by contractor order by total desc";
		String qry4 = "SELECT count(t) as total, contractor from Title t where date>='2019-03-01' and date<='2019-03-31' group by contractor order by total desc";
		String qry5 = "SELECT count(t) as total, contractor from Title t where date>='2019-04-01' and date<='2019-04-30' group by contractor order by total desc";
		String qry6 = "SELECT count(t) as total, contractor from Title t where date>='2019-05-01' and date<='2019-05-31' group by contractor order by total desc";
		String qry7 = "SELECT count(t) as total, contractor from Title t where date>='2019-06-01' and date<='2019-06-30' group by contractor order by total desc";
//		String qry8 = "SELECT count(t) as total, contractor from Title t where date>='2019-07-01' and date<='2019-07-31' group by contractor order by total desc";

		List<Object[]> stats1 = em.createQuery(qry1, Object[].class).getResultList();
		List<Object[]> stats2 = em.createQuery(qry2, Object[].class).getResultList();
		List<Object[]> stats3 = em.createQuery(qry3, Object[].class).getResultList();
		List<Object[]> stats4 = em.createQuery(qry4, Object[].class).getResultList();
		List<Object[]> stats5 = em.createQuery(qry5, Object[].class).getResultList();
		List<Object[]> stats6 = em.createQuery(qry6, Object[].class).getResultList();
		List<Object[]> stats7 = em.createQuery(qry7, Object[].class).getResultList();
//		List<Object[]> stats8 = em.createQuery(qry8, Object[].class).getResultList();

		List<Object[]> theList = new ArrayList<>();
		theList.addAll(stats1);
		theList.addAll(stats2);
		theList.addAll(stats3);
		theList.addAll(stats4);
		theList.addAll(stats5);
		theList.addAll(stats6);
		theList.addAll(stats7);
//		theList.addAll(stats8);
//		for (Object[] objects:theListList) {
//			String count = objects[0].toString();
//			String contractor = objects[1].toString();
//			theList.add(count);
//			theList.add(contractor);
//		}
		
		return theList;
	}

}
