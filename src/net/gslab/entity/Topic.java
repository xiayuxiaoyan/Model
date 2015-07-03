package net.gslab.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
@Table(name="t_topic")
public class Topic {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int topicId;
	private int boardId;
	private String topicTitle;
	private int userId;
	public Topic(int topicId, int boardId, String topicTitle, int userId,
			Date dateTime, Date lastPost, int topicViews, int topicReplies,
			Digest digest) {
		super();
		this.topicId = topicId;
		this.boardId = boardId;
		this.topicTitle = topicTitle;
		this.userId = userId;
		this.createTime = dateTime;
		this.lastPost = lastPost;
		this.topicViews = topicViews;
		this.topicReplies = topicReplies;
		this.digest = digest;
	}
	public Topic() {
		super();
	}
	public Topic(int boardId, String topicTitle, int userId,
			Date dateTime, Date lastPost, int topicViews, int topicReplies,
			Digest digest) {
		this.boardId = boardId;
		this.topicTitle = topicTitle;
		this.userId = userId;
		this.createTime = dateTime;
		this.lastPost = lastPost;
		this.topicViews = topicViews;
		this.topicReplies = topicReplies;
		this.digest = digest;
	}
	private Date createTime;
	private Date lastPost;
	private int topicViews;
	private int topicReplies;
	public enum Digest{//是否是精华帖子
		Y,
		N
	}
	private Digest digest;
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getTopicTitle() {
		return topicTitle;
	}
	public void setTopicTitle(String topicTitle) {
		this.topicTitle = topicTitle;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getDateTime() {
		return createTime;
	}
	public void setDateTime(Date dateTime) {
		this.createTime = dateTime;
	}
	public Date getLastPost() {
		return lastPost;
	}
	public void setLastPost(Date lastPost) {
		this.lastPost = lastPost;
	}
	public int getTopicViews() {
		return topicViews;
	}
	public void setTopicViews(int topicViews) {
		this.topicViews = topicViews;
	}
	public int getTopicReplies() {
		return topicReplies;
	}
	public void setTopicReplies(int topicReplies) {
		this.topicReplies = topicReplies;
	}
	public Digest getDigest() {
		return digest;
	}
	public void setDigest(Digest digest) {
		this.digest = digest;
	}

}
