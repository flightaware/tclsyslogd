#	@(#)Makefile	8.1 (Berkeley) 6/6/93
# $FreeBSD: src/usr.sbin/syslogd/Makefile,v 1.13 2006/07/27 14:52:12 yar Exp $
#
# $Id: Makefile,v 1.5 2009-02-11 22:45:20 karl Exp $
#

# uncomment for debugging - probably a better way
#CFLAGS+= -g -O0
#LDFLAGS+= -g

.include <bsd.own.mk>

.PATH: /usr/src/usr.bin/wall

PROG=	syslogd
MAN=	syslog.conf.5 syslogd.8
SRCS=	syslogd.c ttymsg.c

DPADD=	${LIBUTIL}
LDADD=	-lutil -ltcl84

WARNS?=	1

.if ${MK_INET6_SUPPORT} != "no"
CFLAGS+= -DINET6
.endif

CFLAGS+= -I/usr/src/usr.bin/wall -I/usr/local/include/tcl8.4

LDFLAGS+= -L/usr/local/lib

.include <bsd.prog.mk>
