package net.gslab.dao.impl;

import java.util.Iterator;

import org.springframework.stereotype.Repository;




import net.gslab.dao.BoardDao;
import net.gslab.entity.Board;

@Repository
public class BoardDaoImpl extends BaseDaoImpl<Board> implements BoardDao{
	protected final String GET_BOARD_NUM = "select count(f.boardId)from Board f";
	
	//返回论坛板块总数
	/* (non-Javadoc)
	 * @see net.gslab.dao.impl.BoardDao#getBoardNum()
	 */
	@Override
	public long getBoardNum(){
		Iterator iter = (Iterator) getHibernateTemplate().iterate(GET_BOARD_NUM);
		return ((long)iter.next());
	}

}
