package net.gslab.test;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;



import net.gslab.dao.impl.BoardDaoImpl;
import net.gslab.entity.Board;


import net.gslab.setting.Page;

import org.junit.Test;


public class BoardDaoTest extends JUnitDaoBase {  
	@Resource(name="boardDaoImpl") 
    private BoardDaoImpl borderDao;  
  
      
  
    @Test  
    public void testBorderDao() {  
//    	System.out.println("what?");
//    	Board board = new Board(1,"123","123",0);
//    	Board boardTemp = new Board();
////    	board.setBoardId(1);
////    	board.setBoardName("test");
//    	borderDao.save(board);
//    	System.out.println(borderDao.getBoardNum());
//    	boardTemp = borderDao.load(2);
//    	System.out.println(boardTemp.getBoardName());
    	List<Board> boards = new ArrayList<Board>();
    	//boards=borderDao.find("from Board");
    	
    	Page<Board> page= borderDao.getPage("from Board b where b.boardName like '%new%'",0,2);
    	System.out.println("Board has "+page.getTotalCount());
    	boards=page.getData();
    	for(Board temp:boards){
    		System.out.println(temp.getBoardName());
    	}
    }  
}  