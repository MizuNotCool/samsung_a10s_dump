#!/system/bin/sh
# traffic control; arg1:ifname, arg2: rx, arg 3 tx.
#
export PATH=/data:$PATH

# clear rules
tc qdisc del dev $1 root
tc qdisc del dev $1 ingress
tc qdisc del dev ifb0 root

# set interface throttle

