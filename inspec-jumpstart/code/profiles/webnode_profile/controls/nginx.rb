# # encoding: utf-8

# Inspec test for recipe mynginx::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

myconf = yaml(content: inspec.profile.file('conf.yml')).params

control 'mynginx-01' do
  title 'Functional Tests'
  desc 'Ensuring the web server is functioning correctly'
  describe http('http://localhost', enable_remote_worker: true) do
    its('status') { should cmp 200 }
    its('body') { should cmp 'InSpec Jumpstart' }
    its('headers.Content-Type') { should cmp 'text/html' }
  end
end

control 'mynginx-02' do
  title 'Nginx Version' 
  desc 'Checking Nginx Version'
    describe nginx do
      its('version') { should cmp >= myconf['nginx_version'] }
    end
end

control 'mynginx-03' do
  title 'Mandatory modules' 
  desc 'Checking mandatory modules'
    describe nginx do
      myconf['mandatory_modules'].each do |mod|
        its('modules') { should include mod }
      end
    end
end

control 'mynginx-04' do
  title 'nginx-http-sysguard check' 
  desc 'Checking for nginx-http-sysguard '
  describe nginx do
     myconf['debian_modules'].each do |mod|
       its('modules') { should include mod }
     end
  end
  only_if { os.debian? }
end

control 'mynginx-05' do
  title 'Auth module' 
  desc 'Checking for an auth module'
  describe.one do
    myconf['auth_modules'].each do |mod|
      describe nginx do
        its('modules') { should include mod }
      end
    end
  end
end

require_controls 'nginx-baseline' do
	control 'nginx-01'
	control 'nginx-02' do
		impact 0.6
	end
end
