module JavascriptAlerts
  include PageObject
  
  def js_accept_confirm
    @browser.alert.ok
  end
  
  def js_cancel_confirm
    @browser.alert.close
  end
  
  def js_alert_exists?
    @browser.alert.exists?
  end
  
  def js_alert_text
    @browser.alert.text
  end
  
  def js_alert_enter_text(text)
    @browser.alert.set text
  end
  
end