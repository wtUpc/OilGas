package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.oilgas.mapper.ProjectMapper;
import com.oilgas.model.Project;
import com.oilgas.service.ProjectService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
@Service
public class ProjectServiceImpl implements ProjectService {

    private Logger logger = LoggerFactory.getLogger(ProjectServiceImpl.class);

    private final ProjectMapper projectMapper;

    public ProjectServiceImpl(ProjectMapper projectMapper) {
        this.projectMapper = projectMapper;
    }

    @Override
    public Project createProject(Project project) {
        try {
            projectMapper.insert(project);
            return project;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return null;
        }
    }

    @Override
    public Project getById(Long id) {
        try {
            return projectMapper.selectByPrimaryKey(id);
        } catch (Exception e) {
            logger.error("");
            return null;
        }
    }

    @Override
    public Boolean update(Project project) {
        try {
            projectMapper.updateByPrimaryKeySelective(project);
            return Boolean.TRUE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }

    @Override
    public List<Project> getAll() {
        try {

            return projectMapper.selectAll();
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return null;
        }
    }
}
