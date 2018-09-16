module Authors
  class BoardMembersController < AuthorController
    before_action :set_board_member, only: [:show, :edit, :update, :destroy]

    def index
      @board_members = BoardMember.alphabetical
    end

    def new
      @board_member = BoardMember.new
    end

    def create
      @board_member = BoardMember.new(board_member_params)

      respond_to do |format|
        if @board_member.save
          format.html { redirect_to authors_board_members_path, notice: 'Board Member was successfully created.' }
          format.json { render :show, status: :created, location: @board_member }
        else
          format.html { render :new }
          format.json { render json: @board_member.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @board_member.update(board_member_params)
          format.html { redirect_to edit_authors_board_member_path(@board_member), notice: 'Board Member was successfully updated.' }
          format.json { render :show, status: :ok, location: @board_member }
        else
          format.html { render :edit }
          format.json { render json: @board_member.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @board_member.destroy
      respond_to do |format|
        format.html { redirect_to authors_board_members_path, notice: 'Board Member was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_board_member
      @board_member = BoardMember.find(params[:id])
    end

    def board_member_params
      params.require(:board_member).permit(:name, :member_image, :business, :position, :commencement_year, :roll_off_year, :rolled_off)
    end

  end
end
