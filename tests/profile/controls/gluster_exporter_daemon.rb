control 'gluster-exporter-daemon' do
  title 'Gluster Exporter Daemon'
  impact 1.0
  desc '
    Ensure Gluster Exporter Daemon is running
  '

  describe port(9189) do
    it { should be_listening }
  end

  describe service('gluster_exporter') do
    it { should be_enabled }
    it { should be_running }
  end
end
