nginx
=====

A base nginx container for use with octohost.

Use this container as a starting point to deploy static HTML to an octohost.

To use an already built container:

`docker pull lorello/octohost-nginx`

Or you can build it from this source:

`docker build -t your-organization/nginx`

For a working example, please take a look at the [HTML](https://github.com/octohost/html)

## Build info

* based on Ubuntu Trusty
* Nginx is taken from the stable PPA on Launchpad
* Document root is set in `/srv/www`
* A simple test html is placed in `/srv/www/index.html`, you can safely remove it.
