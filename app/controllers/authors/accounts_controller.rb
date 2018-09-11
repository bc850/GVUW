module Authors
  class AccountsController < AuthorController

    def edit

    end

    def update_info
      if current_author.update(author_info_params)
        flash[:success] = "Successfully saved!"
      else
        flash[:danger] = current_author.errors.full_messages.join('. ') << '.'
      end
      redirect_to authors_account_path
    end

    def change_password
      # password or confirmation are blank
      # password or confirmation don't match
      if current_author.valid_password?(author_password_params[:current_password])
        if current_author.update(
          password: author_password_params[:new_password],
          password_confirmation: author_password_params[:new_password_confirmation]
        )
          flash[:success] = "Successfully changed password!"
        else
          flash[:danger] = current_author.errors.full_messages.join('. ') << '.'
        end
      else
        flash[:danger] = 'Current password was incorrect.'
      end
      redirect_to authors_account_path
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
