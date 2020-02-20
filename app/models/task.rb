class Task < ApplicationRecord
    belongs_to :collaborator
    belongs_to :project
    belongs_to :user
    has_many :status_works
end
