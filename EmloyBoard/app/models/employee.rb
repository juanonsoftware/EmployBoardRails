class Employee < ApplicationRecord
    has_one_attached :avatar

    def image_as_thumbnail
        if avatar.attached?
            avatar.variant(resize_to_limit: [350, 350]).processed          
        end
    end
end
