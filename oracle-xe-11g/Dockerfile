FROM wnameless/oracle-xe-11g
MAINTAINER Scott Finlay <scott@magex.ca>

ADD scripts /scripts

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D && /scripts/init.sh
