module Authors
  class AccountsController < AuthorController

    def edit

    end

    def update_info

    end

    def change_password

    end

    private

    def author_info_params
      params.require(:author).permit(:name, :email, :bio)
    end

    def author_password_params
      params.require(:author).permit(:current_password, :new_password, :new_password_confirmation)
    end

  end
end
