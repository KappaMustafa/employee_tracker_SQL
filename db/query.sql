use department_table

SELECT 
    dep_name AS 'Department',
    FROM project_groups 
        LEFT JOIN role_table
        -- ON project_groups.group_id = students.group_id;
        