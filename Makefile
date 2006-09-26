CONFDIR=/etc/flashybrid
DEST=/

all:

install:
	install -d $(DEST)/$(CONFDIR) $(DEST)/sbin $(DEST)/usr/sbin $(DEST)/usr/share/man/man8
	install -m 0644 config ramtmp ramstore  \
		$(DEST)/$(CONFDIR)
	install -m 0644 *.8 $(DEST)/usr/share/man/man8
	install fh-sync mountro mountrw $(DEST)/sbin

clean:
