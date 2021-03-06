name 'citius_deployslave'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures citius_deployslave'
long_description 'Installs/Configures citius_deployslave'
version '0.1.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/citius_deployslave/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/citius_deployslave' if respond_to?(:source_url)

depends 'java', '~> 1.47.0'
depends 'citius_jenkins', '~> 0.1.4'
depends 'tomcat', '~> 2.3.4'
depends 'iptables', '~> 3.1.0'