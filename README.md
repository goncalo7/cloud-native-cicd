## Story
CI/CD pipelines are here, there and everywhere. But setting up one from scratch and knowing the inner paths and best practices is not that trivial.

You must create a containerized web application containing at least 2 microservices (backend and a simple frontend) - simple is the key here, as we are trying to see how you approach problem solving, knowledge of CI/CD and containarization, ...

### Minimum Deliverable
A CI pipeline to automatically deploy to an environment that takes adheres as much as possible to the [12 factor app guidelines](https://12factor.net/ "12factor app")

**There is no specification or requirement concerning language, framework or architecture.**

>One remark: it must be cloud native! Nomad? Kubernetes? Docker Swarm or Compose? Mesos? Other ways? We do not care that much... With little change we are able to deploy on GCP, AWS, Azure, Digital Ocean or whatever public cloud provider.

### Extra Points
Implement a way to expose the following
- Logging
- Instrumentation (metrics)
- Traceability
- Secret Management VS Environment Variables

----

## Time limit
Up to you on how much effort you want to spend and how perfect you want it to be, but your **deadline will be discussed on the e-mail communication**. Anything commited/requested/pushed after that date will not be considered.

----
## What we will evaluate
There are thousands of solutions and ways here. We are giving you the freedom to impress and show what you got. However we will evaluate:
- use of version control and infrastructure as code
- documentation inline and project based
- handling of development and production environment differences
- handling of secrets
- sysadmin knowledge
- style of code

It's important that you can explain why you chose your tools, path and style. Why? Because the follow-up will be a scenario discussion with a fictious "Solution Architect" asking questions and trying to induce you to error. 

What you implement and how you do it is subject to your creativity and ambition :-). Good luck!

## How do I submit it?
Clone this repo and baam! Get to it!

Do not forget to:
* Create and explain in a Markdown about your decisions in the process.
* If you finish before, let your LINKIT contact know about it
* Give instructions in a readme file so that anyone with a unix machine (Mac or any Linux Disto) could download the repo and run it.

### Who do I talk to? ###
Your LINKIT contact or Repo owner/admin - **Thiago de Faria** on thiago.de.faria@linkit.nl 
