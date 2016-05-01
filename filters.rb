# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'date'
require 'active_support/all'



#Task 2
def experienced?(candidate)
  @candidates[:years_of_experience] >= 2 ? true : false
end

#Task 3
def find(id)
  @candidates.select {|x| x[:id] == id}
end

#Task 4
def qualified_candidates
  @candidates.select do |x|
    x[:github_points] >= 100 && x[:years_of_experience] >= 2 && x[:age] >= 18 && 
    (x[:date_applied] > 15.days.ago.to_date) && (x[:languages].include?("Ruby") || x[:languages].include?("Python"))
  end
end

#Task 5
def ordered_by_qualifications
  @candidates.sort_by {|hsh| [hsh[:years_of_experience], hsh[:github_points]]}.reverse
end