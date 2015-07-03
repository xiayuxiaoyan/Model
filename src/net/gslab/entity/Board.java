package net.gslab.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;



@Entity
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name="t_board")
public class Board extends BaseDomain{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int boardId;

	private String boardName;
	
	public Board(int boardId, String boardName, String boardDesc, int topicNum) {
		super();
		this.boardId = boardId;
		this.boardName = boardName;
		this.boardDesc = boardDesc;
		this.topicNum = topicNum;
	}

	public Board() {
		super();
	}

	private String boardDesc;
	
	private int topicNum;

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardDesc() {
		return boardDesc;
	}

	public void setBoardDesc(String boardDesc) {
		this.boardDesc = boardDesc;
	}

	public int getTopicNum() {
		return topicNum;
	}

	public void setTopicNum(int topicNum) {
		this.topicNum = topicNum;
	}

	
}
