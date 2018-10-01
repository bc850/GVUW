module Home
  class BoardMembersController < HomeController
    def index
      @board_members = BoardMember.alphabetical
    end
  end
end
