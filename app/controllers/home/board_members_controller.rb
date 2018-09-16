module Home
  class BoardMembersController < HomeController
    def index
      @board_members = BoardMembers.alphabetical
    end
  end
end
