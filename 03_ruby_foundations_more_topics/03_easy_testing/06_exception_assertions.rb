=begin
Write a minitest assertion that will fail unless 
employee.hire raises a NoExperienceError exception.
=end

assert_raises(NoExperienceError) do 
  employee.hire
end