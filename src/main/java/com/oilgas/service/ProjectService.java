package com.oilgas.service;

import com.oilgas.model.Project;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
public interface ProjectService {


    Project createProject(Project project);

    Project getById(Long id);

    Boolean update(Project project);

    List<Project> getAll();
}
