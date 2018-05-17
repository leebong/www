package kr.alpo.myhome.object;

public class Board {
	private String title; //제목
	private String author; //작성자
	private String contents; //내용
	private int number; //번호

	
	//getter & setter생성
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	
	
	public Board(int number, String title, String author, String contents){
		this.setNumber(number);
		this.setTitle(title);
		this.setAuthor(author);
		this.setContents(contents);	
	}
	
	
	
}
