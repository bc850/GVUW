module Authors
  class StaffMembersController < AuthorController
    before_action :set_staff_member, only: [:show, :edit, :update, :destroy]

    def index
      @staff_members = StaffMember.alphabetical
    end

    def new
      @staff_member = StaffMember.new
    end

    def create
      @staff_member = StaffMember.new(staff_member_params)

      respond_to do |format|
        if @staff_member.save
          format.html { redirect_to authors_staff_members_path, notice: 'Staff Member was successfully created.' }
          format.json { render :show, status: :created, location: @staff_member }
        else
          format.html { render :new }
          format.json { render json: @staff_member.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @staff_member.update(staff_member_params)
          format.html { redirect_to authors_staff_members_path, notice: 'Staff Member was successfully updated.' }
          format.json { render :show, status: :ok, location: @staff_member }
        else
          format.html { render :edit }
          format.json { render json: @staff_member.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @staff_member.destroy
      respond_to do |format|
        format.html { redirect_to authors_staff_members_path, notice: 'Staff Member was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_staff_member
      @staff_member = StaffMember.find(params[:id])
    end

    def staff_member_params
      params.require(:staff_member).permit(:name, :member_image, :position, :description)
    end
  end
end
