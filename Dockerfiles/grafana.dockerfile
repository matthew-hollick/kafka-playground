FROM grafana/grafana
RUN grafana-cli plugins install vertamedia-clickhouse-datasource
USER grafana
ENTRYPOINT [ "/run.sh" ]
