# insticator

Software
1. MySQL (8.0) or MariaDB (5.6.26)
2. Spring Tool Suite 3.9.7.
3. Chrome 72
4. jdk 1.8
5. Bootstrap(included)
6. jQuery (included)


GitHub URL: https://github.com/yoonsukcho/insticator


Instruction

1. connect https://github.com/yoonsukcho/insticator
2. Download ZIP
3. unzip (change the folder name: 'insticator-master' -> 'backend')
4. edit '/src/main/resources/application.properties' file

   data source change:
   
   ex)
   
    spring.datasource.url = jdbc:mysql://localhost:3306/insticator?useSSL=false
    
    spring.datasource.username = root
    
    spring.datasource.password = yourPassword
    
   
5. execute query.sql  (MySQL (8.0) and MariaDB (5.6.26) tested)
6. open project using 'Spring Tool Suite' : 'backend' folder which was unzippd in 3.
7. Right click on 'backend' project, select 'Run As' - 'Maven Build' (backend:compile)
8. Right click on '/src/main/java/com.insticator.backend.Application.java', select 'Run As' - 'Java Application'
9. connect 'localhost:8080'


Further Considerations

- Database is designed considering multi select questions and other count of choices
- Currently, the same user IDs in the same site are targeted for the same frequency, but the logic for bringing the same frequency issues in a more random way is needed.
- Need a more hierarchical folder structure design for each task subdivision
- Depending on the functionality of the frontend, a more functional supplement is needed.
