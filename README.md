# Web

The nginx reverse-proxy stack that sits on www.gosquared.com and assorted other domains.

Handles proxying + redirecting requests to other services. Basically doesn't actually do any hosting of its own.


## Instructions

This stack is deployed using [AWS Copilot CLI](https://aws.github.io/copilot-cli/) on ECS.

Pretty much all existing setup is now complete - unless you're specifically updating the copilot stack, everything is handled in CodePipeline.

Nginx files are located in `nginx.conf` / `conf.d` / `include` / `sites` and follow standard nginx config rules.

Deployments are executed from CodePipeline from the master branch. The target group created by this deploymend is used in a few manual places as well as the one automatically created by Copilot.
