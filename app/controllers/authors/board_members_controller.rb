module Authors
  class BoardMembersController < AuthorController

    def index
      @members = BoardMember.alphabetical
    end

  end
end
