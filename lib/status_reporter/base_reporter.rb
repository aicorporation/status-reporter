class BaseReporter
  def report_success params=nil
    raise NotImplementedError, "Implement this method in a child class"
  end
  
  def report_failure params=nil
    raise NotImplementedError, "Implement this method in a child class"
  end
  
  def report_status params=nil
    raise NotImplementedError, "Implement this method in a child class"
  end
end