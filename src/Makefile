#	@(#)Makefile	8.1 (Berkeley) 6/6/93

# $FreeBSD: src/usr.sbin/syslogd/Makefile,v 1.14.2.1 2009/08/03 08:13:06 kensmith Exp $

# uncomment for debugging - probably a better way
#CFLAGS+= -g -O0
#LDFLAGS+= -g

.include <bsd.own.mk>

.PATH: /usr/src/usr.bin/wall

PROG=	tclsyslogd
MAN=	syslog.conf.5 syslogd.8
SRCS=	syslogd.c ttymsg.c

DPADD=	${LIBUTIL}
LDADD=	-lutil -ltcl85

WARNS?=	3

.if ${MK_INET6_SUPPORT} != "no"
CFLAGS+= -DINET6
.endif

CFLAGS+= -I/usr/src/usr.bin/wall -I/usr/local/include/tcl8.5

LDFLAGS+= -L/usr/local/lib

.include <bsd.prog.mk>
