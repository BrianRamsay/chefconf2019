Chef + You: Delivering High Quality Cookbooks
==============================================

**Nicholas Key**
*Okta*

High Quality - Changes are fully vetted before reaching production

Fundamental Principles
------------------------

### Culture of Testing

Break the Code -> Deploy -> Done mindset.

Go from "Did you test this?" to:
  * How was this tested?
  * Where was this tested?
  * Which environment is impacted?
  * When was this tested?
  * What is the success criteria?
  * What is the failure criteria?
  * What is the rollout choreography?
  * What is the rollback choreography?
  * What is the potential impact to the customers?
  * How do we monitor the change?

Code -> Test -> Deploy -> Monitor -> Code

Trust each other, but verify and validate with tests.

### Test Process and Tools

#### Test phase

  * Linting
    - Foodcritic
	- Rubocop / Cookstyle
	- Shellcheck (for shell scripts)
	- ruby -c
  * Unit testing (in memory)
    - Chefspec
  * Cookbooks dependency resolver
    - Berkshelf + Private Supermarket (Chef Server should only be production-ready)
  * Cookbook convergence test
    - Test Kitchen (chef-zero) + Container/Cloud tool
  * Integration testing
    - Chef InSpec
  * Compliance testing
    - Chef InSpec

#### Test Strategy

  * Verify idempotency (Chef should maintain state)
    - Upgrade
	- New instance
  * Debug
    - berks viz (dependency resolution diagram)
	- berks list
	- chef-zero
  * Triggering integration test
    - Triggered outbound (from external service)
	- Triggered from node itself (if security rules prevent communication)
  * Version pinning style
    - Hard pinning (set to specific version)
	- Pessimistic pinning (require a minimum version, allow minor version increments)
	- Optimistic pinning (require a minimum version, allow all new versions)
	- No pinning (really?)
  * Running chef
    - Daily chef run with custom runlist (at least)
	- Scheduled chef run with default runlist (best option)

### Deployment Choreography

Always plan and assess risks before deploying changes.

#### Traditional
100% deployment to applicable chef nodes

**Drawbacks:**
  * System-wide outage potential
  * Untested extreme edge case
  * Risky for ad-hoc and unplanned testing
  * Very little to no bake-in time to verify work
  * Incure more expensive rollback procedures (time and effort)

#### Improved

**Possible Options:**
  * Canary
  * A/B Testing
  * Phased rollout

**Benefits:**
  * Risk mitigation strategies
    - Risk acceptance
	- Risk avoidance
	- Risk limitation
  * Allows some time to verify and monitor work
  * Less expensive rollback procedures
  * Higher confidence in deployed work

Q&A
----

### Policy Files vs Berkshelf

Policy Files are good if you can get some visualization and pinning, like Berkshelf. Not sure if private supermarkets integrate well with policy files.

### How to implement blue/green or canary deployments

Depends on your infrastructure setup. Stripe or label instances to categorize A/B.
