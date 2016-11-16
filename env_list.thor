class Set < Thor
  include Thor::Actions
  
  no_tasks do
    def copy_environment(new_environment)
      run("cp features/support/environments/env.rb.#{new_environment} features/support/env.rb")
    end
  end
  
  desc "ffx_osx_staging", "Use Firefox on OSX on Staging"
  def ffx_osx_staging
    copy_environment("ffx_osx_staging")
  end
  
  desc "ffx_osx_production", "Use Firefox on OSX on Production"
  def ffx_osx_production
    copy_environment("ffx_osx_production")
  end
  
  desc "chrome_osx_staging", "Use Chrome on OSX on Staging"
  def chrome_osx_staging
    copy_environment("chrome_osx_staging")
  end
  
  desc "chrome_osx_production", "Use Chrome on OSX on Production"
  def chrome_osx_production
    copy_environment("chrome_osx_production")
  end

  desc "win_ie_staging", "Use IE on Windows on Staging"
  def win_ie_staging
    copy_environment("win_ie_staging")
  end
  
  desc "win_ie_production", "Use IE on Windows on Production"
  def win_ie_production
    copy_environment("win_ie_production")
  end
  
  desc "win_firefox_staging", "Use Firefox on Windows on Staging"
  def win_firefox_staging
    copy_environment("win_firefox_staging")
  end
  
  desc "win_firefox_production", "Use Firefox on Windows on Production"
  def win_firefox_production
    copy_environment("win_firefox_production")
  end
  
  desc "win_chrome_staging", "Use Chrome on Windows on Staging"
  def win_chrome_staging
    copy_environment("win_chrome_staging")
  end
  
  desc "win_chrome_production", "Use Chrome on Windows on Production"
  def win_chrome_production
    copy_environment("win_chrome_production")
  end

  
end
