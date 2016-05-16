package com.pt.service;

import java.util.List;

import com.pt.entity.MyMsg;
import com.pt.entity.MyPhoto;

public interface IPhotoService {
	public List<MyPhoto> getPhotoGroupList(int stanum, int offset);
	public List<MyPhoto> getPhotoGroupAllList();
	public List<MyPhoto> getMyPhotoLastGroupLst();
	public List<MyPhoto> getPhotoAllListByGroup(String group);
	public List<MyPhoto> getPhotoAllList();
}
