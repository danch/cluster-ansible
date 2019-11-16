#!/bin/bash

# quick script to help with debugging issues with hung or slow transactions in ceph

kubectl -n rook-ceph exec -it rook-ceph-osd-id-0-5bc655cc46-twt88 "/bin/bash '-c ceph daemon /var/lib/rook/osd0/rook-ceph-osd.0.asok dump_ops_in_flight'"
