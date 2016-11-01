class RemoteProcess < ActiveRecord::Base
  def self.find_top_running_processes(limit = 5)
    find(:all,
         :conditions => "state = 'Running'", :order => "percent_cpu desc", :limit => limit)
  end
  def self.find_top_running_system_processes(limit = 5)
    find(:all,
         :conditions => "state = 'Running' and (owner in ('root')",
         :order => "percent_cpu desc", :limit => limit)
  end end
