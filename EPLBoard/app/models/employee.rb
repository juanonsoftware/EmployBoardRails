class Employee < ApplicationRecord
    has_one_attached :avatar

        def avatar_as_thumbnail(x, y)
        if avatar.attached?
            avatar.variant(resize_to_limit: [x, y]).processed          
        end
    end
end
