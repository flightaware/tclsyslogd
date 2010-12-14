#
# an extremely simple syslog.tcl 
#

proc syslog {messageArray} {
    upvar $messageArray message

    parray message
    puts ""
}

