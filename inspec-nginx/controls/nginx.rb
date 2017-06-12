#Ver: 1.0

describe package('nginx') do
  it { should be_installed }
end

control '00' do
  title 'Verify nginx service'
  desc 'Ensures nginx service is up and running'
  describe service('nginx') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end

  web_user = 'nginx'

  describe user(web_user) do
    it {should exist}
end
end
