# GroupSession
## docker-compose

```
version: '2'
services:
  gsession:
    image: sarlos/gsession
    ports:
      - 8080:8080
    volumes:
      - backup:/usr/local/tomcat/webapps/gsession/WEB-INF/backup
      - files:/usr/local/tomcat/webapps/gsession/WEB-INF/filekanri
    build:
      context: .

volumes:
  backup:
    driver: local
  files:
    driver: local
```

