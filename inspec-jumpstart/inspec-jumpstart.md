Questions: how to specify particular controls in an external profile


Chef InSpec Jumpstart
======================

**Presenters**
Larry Eichenbaum
Alan Thatcher

Introduction to Automated Testing
-------------------------------------

### Types of Testing - Different Tools

  - Code Correctness
    - Foodcritic
		- Cookstyle (Rubocop - old)

  - Unit Testing
    - ChefSpec

  - Integration Test
		- Test Kitchen
		- Chef InSpec

  - Compliance Scanning
	  - Chef Automate
		- Chef InSpec

### Chef InSpec

  - https://www.inspec.io/
  - Provides consistent DSL that is platform agnostic to check status of any component.
  - Complex implementation code is abstracted out.
  - Many Chef InSpec profiles exist in the community, and Chef provides profiles matching specific compliance regulations.
  - No agent or Ruby required on target node.
	- Tests servers' actual state by executing the appropriate command locally via SSH, via WinRM, via Docker API and so on.
  - Cross-platform

#### Integration and Compliance tests are separate use cases

**Integration**
	- Usually maintained within a cookbook
	- Invoked by Test Kitchen to provide a sandbox environment
	- Determined by application (cookbook) requirements
	- Shipped with a cookbook

**Compliance**
	- Tests collated in InSpec profiles
	- Invoked by 'inspec' cli or from Chef Automate
	- Generic rules defined by external security requirements

### Anatomy of a Chef InSpec test

```ruby
  describe http('http://localhost', enable_remote_worker: true) do
    its('status') { should cmp 200 }
    its('body') { should cmp 'Inspec Jumpstart' }
    its('headers.Content-Type') { should cmp 'text/html' }
  end
```

**Each control contains:**
  - a `describe` statement
  - a resource
  - an optional argument
  - an optional parameter
  - a `do` ... `end` block
  - one or more tests

**Each Test Contains:**
  - one or more `it` and/or `its` statement
  - an optional property
  - each with a condition statement

**Each Condition Contains:**
  - a condition
  - a matcher

### Chef InSpec CLI, Profiles and Compliance Scanning

#### Chef InSpec as a Standalone Tool

#### Chef InSpec code is maintained in 'Profiles'

Chef InSpec organizes controls into versioned 'profiles'

A profile is a standalone structure containing
  - control files
  - documentation
  - extension libraries
  - dependencies

#### Basic Profile Creation

  - Create skeleton profile with `inspec init profile`.
  - Review the technical requirements and create the Chef InSpec control including the actual test.
  - Execute the InSpec profile

#### Anatomy of a Chef InSpec Profile

  - inspec.yml
  - README.md
  - Controls
  - libraries
  - optional files directory for addtional files that a profile can access

A profile contains one or more control files, each containing a number of tests

  - A `describe` block contains at least one test

**Each Control Contains:**
  - Some boilerplate information and a tilte
  - At least one `describe` block, but may contain as many as required
  - Extra metadata 

Impact is a measure

### Running Remote Scans

### Chef InSpec DSL: Deeper Dive

#### Chef InSpec Shell

Explore available chef and inspec resources with a REPL.

### Chef InSpec & Cloud Infrastructure

### Open Source Profiles, GitHub and Supermarket

Chef InSpec is open source, and there are community profiles available on GitHub (https://github.com/dev-sec) and Chef Supermarket (`inspec supermarket profiles').

There are more proprietary profiles bundled with Chef Automate, that are maintained and certified by Chef.

Profiles can be executed directly from GitHub and Supermarket.

One profile can have an explicit dependency upon another, and when the dependent profile is run, then some or all of the controls from the dependency can be invoked.

### Chef InSpec DSL & Compliance Regulations

Build confidence with auditors by showing the direct link between inspec controls and documentation.

### Chef InSpec and Chef Automate

Chef Automate allows you to start compliance scans and facilitates remediation

Chef will be building remediation cookbooks for all Chef InSpec profiles on Chef Automate

Chef 'Audit Cookbook' runs InSpec scans at the end of chef-client to report results to Chef Automate.
