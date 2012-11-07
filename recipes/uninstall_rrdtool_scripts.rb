my_hostname = "#{node.hostname}.dmz.betterplace.org"

directory "#{node.monitoring.output_folder}/#{my_hostname}" do
  action :delete
  recursive true
end

directory node.monitoring.root_folder do
  action :delete
  recursive true
end

file "/etc/cron.d/monitoring" do
    action :delete
end