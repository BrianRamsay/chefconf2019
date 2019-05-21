title 'ssh'

control 'sshv2' do
	impact 0.7
	title 'Check SSH Version'
	desc 'Only SSH version 2 should be enabled'
	describe ssh_config do
		its('Protocol') { should cmp 2 }
	end
end
