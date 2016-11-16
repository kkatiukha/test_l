module SwitchPages
  include PageObject

  def create_new_window
    @browser.driver.execute_script("window.open()")
  end

  def use_certain_browser(browser_text)
    @browser.window(:title => browser_text).use
  end

  def use_parent_window
    @browser.window(:index => 0).use
  end

  def use_last_browser_created
    @browser.windows.last.use
  end

  def close_last_browser_created
    @browser.windows.last.close
  end

  def close_specific_browser(title)
    @browser.window(:title => title).close
  end

end
