FROM bitnami/mariadb:10.1.38

COPY initScripts /docker-entrypoint-initdb.d

EXPOSE 3306

USER 1001
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/run.sh" ]