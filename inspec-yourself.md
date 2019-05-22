InSpec Yourself Before You Wreck Yourself
===========================================

### Be a better maintainer

Learning how a resource is constructed will assist you in verifying, troubleshooting, and authoring resources.

Bring clarity to your profiles to assist every consumer of the documentation created by InSpec.

By improving your understanding of the underlying language, you can use Ruby to make your profiles easier to maintain and understand.

### InSpec your Git

#### InSpec
  * Test Runner
  * Expectations
  * Resources

#### Resource

  * Subclass of `Inspec.resource`
  * name attribute allows InSpec `describe` to find it
  * methods are accessed by `its()`

*ruby tip to explore:* `require 'pry' ; binding.pry`

```ruby
class Git < Inspec.resource(1)
  name 'git'

  def initialize(path=nil)
	@path = path || 'git'
  end

  attr_reader :path

  def version
	raw_result = Inspec.command("#{path} --version").stdout
	raw_result.split[2]
  end
end
```
enables
```ruby
	describe git('/usr/bin/git') do
	  its(:version) { should match('2.20.1') }
	end
```

```ruby
class GitRepo < Inspec.resource(1)
  name :git_repo

  def initialize(path, options= {})
	@path = path
	@git_path = options[:git_path] || 'git'
  end

  attr_reader :path, :git_path

  def current_branch
	raw_branch = Inspec.command("#{git_path} branch").stdout
	/^\* (?<branch>.+)$/.match(raw_result)[:branch]
  end
end
```
enables
```ruby
	describe git_repo('.',:git_path='/usr/bin/git') do
	  its(:current_branch) { should match('master') }
	end
```

#### Test Driven Development

  * Define a test that expresses the desired state
  * Implement the solution
  * Verify that the implementation is correct
  * Refactor as necessary

