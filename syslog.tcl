#
#
#
# $Id: syslog.tcl,v 1.1 2009-02-09 09:44:15 karl Exp $
#

proc syslog {messageArray} {
    upvar $messageArray message

    parray message
    puts ""
}
