module Authors
  class PartnersController < AuthorController

    def index
      @partners = Partner.all
    end

  end
end
