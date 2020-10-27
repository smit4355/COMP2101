#!/bin/bash
#
# this script gets some picture files for our personal web pages, which are kept in public_html
# the pictures are put into a subdirectory of public_html named pics
# it does some error checking
# it summarizes the public_html/pics directory when it is done
#
# It should not be run as root


# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and
#     to make sure the download and extraction commands work
#     then delete the local copy of the tarfile if the extraction was successful

# make sure we have a clean pics directory to start with


# download a zipfile of pictures to our Pictures directory - assumes you are online
# unpack the downloaded zipfile if the download succeeded - assumes we have an unzip command on this system
# delete the local copy of the zipfile after a successful unpack of the zipfile

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#     test to make sure the download and extraction commands work
#     then delete the local copy of the tarfile if the extraction was successful

# Make a report on what we have in the Pictures directory

#=====SCRIPT=========

test -d ~/Pictures || mkdir ~/Pictures

test -f ~/Pictures/pics.zip || wget -q -O ~/Pictures/pics.zip http://zonzorp.net/pics.zip

test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -o -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip

test -f ~/Pictures/pics.tgz || wget -q -O ~/Pictures/pics.tgz https://zonzorp.net/pics.tgz

test -f ~/Pictures/pics.tgz && tar -C ~/Pictures -xvf ~/Pictures/pics.tgz && rm ~/Pictures/pics.tgz

test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

#=====Script==========
