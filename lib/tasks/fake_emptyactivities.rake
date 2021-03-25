namespace :fake_emptyactivities do
    desc "create fake empty activity"
    task :create => :environment do
      # Just create a 'fake' acctivity to trigger the corresponding notif
      ghost_fake_activity = Activity.where("name = ?", 'ghost').where("category = ?", 'fake')
      if (!ghost_fake_activity.any?)
        Activity.create(
          name: "ghost",  
          category: "fake",
          duration: "00:00"
        )
      end
    end
  end
  