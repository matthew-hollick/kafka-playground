FROM golang:1.9
RUN go get github.com/gorsuch/haggar

CMD haggar -agents=${AGENTS}               \
             -carbon="riemannfront:3003"   \
             -flush-interval=${INTERVAL}s  \
             -jitter=${JITTER}s            \
             -metrics=${METRICS}           \
             -prefix="${PREFIX}"           \
             -spawn-interval=${SPAWN}s
