package com.ohgiraffers.teamfour.employee.model.dao;

import com.ohgiraffers.teamfour.employee.common.config.ConfigLocation;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Properties;

public class EmployeeDAO {

    private final Properties prop;

        public EmployeeDAO() throws FileNotFoundException {

            prop = new Properties();
            try {
                prop.load(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "employee-maaper.xml"));
            }
        }

}
