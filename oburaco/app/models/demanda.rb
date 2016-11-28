class Demanda < ActiveRecord::Base
    
    def full_address
        [bairro,rua,numero].compact.join(',')
    end
    
    geocoded_by :full_address
    after_validation :geocode, if: ->(obj){ obj.full_address.present?}
    
end
