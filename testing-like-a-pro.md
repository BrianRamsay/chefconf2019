Testing Like a Pro
=====================

**Tim Smith**
*Chef*

Testing is our Job. Your job is to bring value to your business, and failure doesn't bring value to the business.

Testing is the only way to move fast without hurting the business.

Testing Types
--------------

### Linting 

Static analysis of style, syntax, and logic.

Style is important! Style is what makes your code readable by others.

**Cookstyle** is a set of curated rubocop rules that are relevant to Chef development.

**Foodcritic** tests Chef-specific DSL logic.

### Unit Testing 

Test individual component inputs and outputs.

**ChefSpec** is based on RSpec, and the new version can easily test specific platform targets with syntactic sugar.

Unit test logic, not just every line - prioritizing code coverage can be misleading and result in brittle tests.

### Integration Testing

'Real' testing, both of cookbook convergence and chef-client outcomes.

Test *convergence* with **Test Kitchen**. Create a test cookbook that mirrors production as much as possible, calling in multiple recipes, targeting multiple platforms.
  
Test *outcomes* with **Chef InSpec**.  Make sure to test platforms, app configs, file locations, os config, users, permissions, etc.

There are System tests and there are Business tests, and both should be tested.

*Delivery Local Mode*

Part of Chef Workstation to make it easier to test changes locally. Configured locally with `.delivery/project.toml`, but you can use a remote file for configuration.


Continuous Integration
-----------------------

You should not be putting anything into master that has not been fully tested. A CI pipeline ensure that changes don't advance past broken tests.

e.g. Circle CI, Jenkins, Travis CI

Examples: https://github.com/chef-cookbooks/testing\_examples
