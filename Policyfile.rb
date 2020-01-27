# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'Chef_App_DevEnv_AMI'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'Chef_App_DevEnv_AMI::default'

# Specify a custom source for a single cookbook:
cookbook 'Chef_App_DevEnv_AMI', path: '.'
