FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN echo max_locks_per_transaction = 1024 | sudo tee -a /etc/postgresql/10/main/postgresql.conf 
ENTRYPOINT ["/entrypoint.sh"]
