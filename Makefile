CONFDIR=/etc/flashybrid
DEST=/

all:

install:
	install -d $(DEST)/$(CONFDIR) $(DEST)/sbin $(DEST)/usr/sbin \
		$(DEST)/lib/flashybrid/ondisk_dir $(DEST)/usr/share/man/man8
	install -m 0644 config partial ramtmp ramstore diskstore \
		$(DEST)/$(CONFDIR)
	install -m 0644 ondisk_dir/README $(DEST)/lib/flashybrid/ondisk_dir
	install -m 0644 *.8 $(DEST)/usr/share/man/man8
	install fh-full fh-embed fh-sync mountro mountrw $(DEST)/sbin
	install fh-update $(DEST)/usr/sbin

clean:
