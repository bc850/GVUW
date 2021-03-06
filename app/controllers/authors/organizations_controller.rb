module Authors
  class OrganizationsController < AuthorController
    before_action :set_organization, only: [:edit, :update]

    def update
      respond_to do |format|
        if @organization.update(organization_params)
          format.html { redirect_to edit_authors_organization_path(@organization), notice: 'Organization was successfully updated.' }
          format.json { render :show, status: :ok, location: @organization }
        else
          format.html { render :edit }
          format.json { render json: @organization.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_organization
      @organization = Organization.first
    end

    def organization_params
      params.require(:organization).permit(:name, :address, :city, :state, :zip, :phone, :email, :latitude, :longitude, :map_api, :mailchimp_api, :mandrill_api, :logo)
    end
  end
end
