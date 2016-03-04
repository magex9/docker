FROM magex9/base
MAINTAINER Scott Finlay <scott@magex.ca>

RUN apt-get update && \
    apt-get install -yq --no-install-recommends mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
	
COPY sql /sql

RUN mysql -u root users < /sql/users.sql

EXPOSE 3306
