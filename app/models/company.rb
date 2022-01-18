class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie dev, item_name, value
        dev1 = dev
        Freebie.create(item_name: item_name, value: value, company_id: self.id, dev_id: dev1.id)
    end

    def self.oldest_company
        Company.order(:founding_year).first
    end


end
