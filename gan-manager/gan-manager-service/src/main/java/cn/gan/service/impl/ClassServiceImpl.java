package cn.gan.service.impl;

import cn.gan.mapper.SClassMapper;
import cn.gan.pojo.SClass;
import cn.gan.service.ClassService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ClassServiceImpl implements ClassService {
    @Resource
    SClassMapper sClassMapper;
    @Override
    public SClass findClass(int id) {
        SClass sClass= sClassMapper.findClass(id);
        return  sClass;
    }

    @Override
    public SClass findClassAndStudent(int id) {
       SClass sClass= sClassMapper.findClassAndStudent(id);
       return  sClass;
    }
}
