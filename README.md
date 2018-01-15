Template for a course website
=======

# Getting started

## Local development

Start the local server by running the following command:
```
nginx -c /path/to/course-website-template/nginx.conf
```

## Deployment

Run `./deploy.sh` from the repository root. This assumes a fully configured `somewhere` host in your `.ssh/config` file. An example configuration would be:

```
Host somewhere
  Hostname design.hogwarts.edu
  User <<<your id>>>
  ForwardAgent yes
```

# Background

This is meant to be a static HTML site. We wanted no build system. But we also wanted DRY includes.
Our solution is [Server Side Includes](https://en.wikipedia.org/wiki/Server_Side_Includes), which look like this:

```
<!--#include virtual="header.html" -->
<h1> Some HTML</h1>
<!--#include virtual="footer.html" -->
```

Note no space after the opening comment `<!--` is allowed.
Name all files that will use include statements `*.shtml`. 