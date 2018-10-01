module Home
  class StaffMembersController < HomeController
    def index
      @staff_members = StaffMember.alphabetical
    end
  end
end
