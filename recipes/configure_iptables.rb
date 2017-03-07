
include_recipe 'iptables::default'

iptables_rule 'redirect8080' do
  action :enable
end
