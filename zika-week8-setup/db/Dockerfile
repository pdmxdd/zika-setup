FROM kartoza/postgis:9.4-2.1
ENV POSTGRES_USER=zika_user
ENV POSTGRES_PASS=zikapass
ENV ALLOW_IP_RANGE=<0.0.0.0/0>
COPY all_reports-cleaned.csv /tmp
COPY locations-cleaned.csv /tmp
