#!/bin/bash

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301, USA.

# Configuration file for this os definition

# GANETI_BASEPATH:
# Base path of ganeti work directory (normally the default value is okay)
GANETI_BASEPATH=/srv/ganeti

# EXPORT_DIR:
# Export directory for backups (normally the default value is okay)
EXPORT_DIR=${GANETI_BASEPATH}/export

cloud_images="${GANETI_BASEPATH}/cloud_images"

root_ssh_authorized_keys="  - public key here"
