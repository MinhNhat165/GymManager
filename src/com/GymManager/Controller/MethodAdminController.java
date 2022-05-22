package com.GymManager.Controller;

import java.text.DecimalFormat;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.GymManager.Entity.AccountEntity;

@Transactional
public class MethodAdminController {
	@Autowired
	SessionFactory factory;

	public String toPK(String refix, String table, String columnPK) {
		Session session = factory.getCurrentSession();
		String hql = "FROM " + table;
		Query query = session.createQuery(hql);
		int number = query.list().size() + 1;
		boolean isInValid = true;
		String pk = refix;
		DecimalFormat df = new DecimalFormat("000000");
		while (isInValid) {
			String pkTemp = pk + df.format(number);
			String hqlwhere = hql + " WHERE " + columnPK + " = '" + pkTemp + "'";
			query = session.createQuery(hqlwhere);
			if (query.list().size() > 0)
				number++;
			else {
				pk = pkTemp;
				isInValid = false;
			}
		}

		return pk;
	}

	public String toHqlRangeCondition(String beginRange, String endRange, String columnName) {
		String hql = columnName;
		if (!beginRange.isEmpty()) {
			if (endRange.isEmpty()) {
				hql += " = '" + beginRange + "'";
			} else
				hql = " (" + hql + " BETWEEN '" + beginRange + "' AND '" + endRange + "'" + ") ";
		} else {
			if (!endRange.isEmpty()) {
				hql += " <= '" + endRange + "'";
			} else
				hql = "";
		}
		return hql;
	};

	public String toHqlWhereClause(List<String> list) {
		String whereClauses = list.get(0);
		for (int i = 0; i < list.size() - 1; i++) {
			if (!list.get(i + 1).isEmpty())
				if (!whereClauses.isEmpty())
					whereClauses += " AND " + list.get(i + 1);
				else
					whereClauses += list.get(i + 1);

		}
		if (!whereClauses.isEmpty())
			whereClauses = "WHERE " + whereClauses;

		return whereClauses;
	}

	public String toHqlSingleColumAnd(String columName, String[] list) {
		String hql = columName + " = '" + list[0] + "'";
		for (int i = 1; i < list.length; i++) {

			hql += " AND " + columName + " = '" + list[i] + "'";

		}
		return hql;
	}

	public AccountEntity getAccount(String username) {
		Session session = factory.getCurrentSession();
		return (AccountEntity) session.get(AccountEntity.class, username);
	}

}
