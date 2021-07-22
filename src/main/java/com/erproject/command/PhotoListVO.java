package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PhotoListVO {

	private int PhotoBno;
	private int PhotoMini;
	private int PhotoTitle;
	private int PhotoAdd;
	public PhotoListVO() {
		
	}
	public PhotoListVO(int photoBno, int photoMini, int photoTitle, int photoAdd) {
		super();
		PhotoBno = photoBno;
		PhotoMini = photoMini;
		PhotoTitle = photoTitle;
		PhotoAdd = photoAdd;
	}
	public int getPhotoBno() {
		return PhotoBno;
	}
	public void setPhotoBno(int photoBno) {
		PhotoBno = photoBno;
	}
	public int getPhotoMini() {
		return PhotoMini;
	}
	public void setPhotoMini(int photoMini) {
		PhotoMini = photoMini;
	}
	public int getPhotoTitle() {
		return PhotoTitle;
	}
	public void setPhotoTitle(int photoTitle) {
		PhotoTitle = photoTitle;
	}
	public int getPhotoAdd() {
		return PhotoAdd;
	}
	public void setPhotoAdd(int photoAdd) {
		PhotoAdd = photoAdd;
	}
	@Override
	public String toString() {
		return "PhotoListVO [PhotoBno=" + PhotoBno + ", PhotoMini=" + PhotoMini + ", PhotoTitle=" + PhotoTitle
				+ ", PhotoAdd=" + PhotoAdd + "]";
	}
	
	
}
