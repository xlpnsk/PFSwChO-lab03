# PFSwChO-lab03

## Użyte polecenia:

- budowanie obrazu: \
  `docker build --ssh default -t lab2.v1 .`
- uruchomienie kontenera: \
  `docker run -it -p 8080:8080 lab2.v1`
- zmiana nazwy nazyw obrazu: \
  `docker tag lab2.v1:latest xlpnsk/lab2.v1:latest`
- umieszczenie obrazu w zdalnym repozytorium: \
  `docker push xlpnsk/lab2.v1:latest `
