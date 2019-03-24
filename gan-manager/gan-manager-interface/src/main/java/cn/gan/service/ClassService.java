package cn.gan.service;

import cn.gan.pojo.SClass;

public interface ClassService {

	SClass findClass(int id);
	SClass findClassAndStudent(int id);
}
