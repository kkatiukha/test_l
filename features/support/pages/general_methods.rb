module GeneralMethods
  include PageObject

  def check_all_elements
    elements_array.each do |x|
      self.send("#{x.to_s}?").should == true
    end
  end

end
