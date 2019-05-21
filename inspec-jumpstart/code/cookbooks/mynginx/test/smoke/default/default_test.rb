# # encoding: utf-8

# Inspec test for recipe mynginx::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?

	# Use Case 1
	describe http('http://localhost', enable_remote_worker: true) do
		its('status') { should cmp 200 }
		its('body') { should cmp 'Inspec Jumpstart' }
		its('headers.Content-Type') { should cmp 'text/html' }
	end

  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end
