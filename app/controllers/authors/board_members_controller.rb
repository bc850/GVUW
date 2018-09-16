module Authors
  class BoardMembersController < AuthorController
    before_action :set_board_member, only: [:show, :edit, :update, :destroy]

    def index
      @members = BoardMember.alphabetical
    end

    def new
      @member = BoardMember.new
    end

    def create
      @member = BoardMember.new(board_member_params)

      respond_to do |format|
        if @member.save
          format.html { redirect_to authors_board_members_path, notice: 'Board Member was successfully created.' }
          format.json { render :show, status: :created, location: @member }
        else
          format.html { render :new }
          format.json { render json: @member.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @member.update(board_member_params)
          format.html { redirect_to edit_authors_board_member_path(@member), notice: 'Board Member was successfully updated.' }
          format.json { render :show, status: :ok, location: @member }
        else
          format.html { render :edit }
          format.json { render json: @member.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @member.destroy
      respond_to do |format|
        format.html { redirect_to authors_campaigns_path, notice: 'Board Member was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_board_member
      @member = BoardMember.find(params[:id])
    end

    def board_member_params
      params.require(:board_member).permit(:name, :member_image, :business, :position, :commencement_year, :roll_off_year, :rolled_off)
    end

  end
end
