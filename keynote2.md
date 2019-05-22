Wednesday Keynote
=====================

We Are Not Alone
-----------------

**Nell Shamrell-Harrington** 
*Principal Software Engineer*

Open Source community is the foundation of Chef.

When one of us succeeds, we all succeed.

Community means we are not alone.

Community is vital to every business and every industry, 
because current tech problems are impossible to solve alone.

Open Source communities produce better software.

### Open Source as a business model

Open Source is not a business model.

Chef used to be "Open Core". Chef Automate was proprietary, Infra, Habitat, and InSpec were open.

But this incentivized Chef to only work on the closed-source, paid products.

Now, all code bases are open source. Builds of the software are covered under commercial licenses. All products generate value, so all will be worked on by Chef employees.

### Chef Book of Open Source

One overall system of governance for all open source projects. 

"Documentation and Practices for Open Source Development at Chef"
https://github.com/chef/chef-oss-practices

We hold ourselves to a higher standard, in commits, in messages, in feedback, in interactions.


AI & Operations
---------------------

**Dominik Richter** 
*Google*

AI hype is at an all-time high. 
Watch google I/O keynote: https://www.youtube.com/watch?v=lyRPyRKHO8M

New technology, before it starts to create jobs, it destroys old jobs.
We are in a 3rd Industrial Revolution - Jeremy Rifkin

AI is in medicine, transportation, finance, manufacturing.
*Where is our fancy AI for development and operations?*

### AI doesn't happen overnight.

  1. Collect and structure data.
  2. Learn - gain insights and decide on actions
  3. Automate - build on the coded enterprise

Human advantage in the face of AI - Perception, Mobility, Strategic Planning.

### What do we have today?

  1. AI for reducing Cost. Reduce overprovisioned and stranded resources, optimization.
  2. AI for increasing Security. Unused permissions and rules, strange behavior.
  3. AI for manageability. Troubleshooting and operation.

AI is a tool to help us do great things.

AI will force us to be more human.


Open Source Experience
---------------------------

**Brendan Burns**
*Microsoft*

### Why do we build open source software?

  * To create useful tools
  * To build excitement around an idea

### What kind of open source community?

  * Open for partners, e.g. Android. Small number of untrusted partners working on a common codebase core.
  * Single vendor open source, e.g. .NET Core. Provides transparency, but not intended for broadening development community.
  * Open for collaboration, e.g. Linux. Goal is to make it easy for collaboration and development, not for community.
  * Open community, e.g. Kubernetes, Chromium. Building the community of users and maintainers is the goal.


### Building open source communities

  * The first 10: Get the infrastructure and development plan right at the beginning.
  * The next 100: Break up into smaller teams, add leads, increase automation and communication.
  * 1k and beyond: Delegating responsibility, meetups and conferences, bottlenecks, managing the project becomes a full-time job.

Balance needs and expectations. What happens when you are mission-critical to a big enterprise and they are not paying you?

### Governing a project

  * Initial governance - meh.
  * Governance models
    - Benevolent Dictator for Life - Python
	- Hierarchical - Linux
	- Collaborative - Kubernetes
  * An open source project should start with a README, a license, and a Code of Conduct.
  * Create a welcoming culture
  * Managing expectations and burn-out
  * A fork is a way a project tells you it is unhealthy


How can we be like AWS?
---------------------------

**Siva Padisetty**
*AWS*

There is a tradeoff between increasing governance and increasing agility.

Governance wants to Define, Monitor, Manage, Report.

Agility wants to Experiment, Be productive, Respond quickly to change.

**Move fast but have control**

Macro level:
  * Automate everything
  * Architect for change
  * Right culture
  * Innovate and collaborate
  * Open source

### Automate everything

Repeatability at scale

  * Small changes
  * Continuous Deployment
  * Desired State - idempotency
  * Everything as code
  * Pessimistic view - rules and tests should assume the worst

*In development, speed is critical. In production, quality is critical.*

### Architect for change
  
  * Think building blocks and micro services
  * Modular design enables swapping with new innovation
  * Ability to compose
  * Choice (external and internal users should have a choice of tools)

### Right culture

  * Start with business outcomes and customer problems
  * Be the enabler
  * Break the silos

### Innovate and collaborate

  * Innovation is key for long-term success
  * Collaborate interally and externally (1+1=3)
  * Open Source is wonderful!

### Open source

  * Customer obsession at Amazon (customers are asking for it)
  * Innovation
  * Healthy communities
  * Reduce maintenance overhead
  * Better quality and security


## Misc

*Containers are not a security boundary*

Amazon Firecracker
Amazon Corretto
AWS Systems Manager & Chef Inspec
AWS OpsCode
  * Pay as you go
  * Managed service
  * Backup and restore
  * Support
  * Integration with AWS Services
