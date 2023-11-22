class AuthorAuthorable < ApplicationRecord
  belongs_to :author, optional: false
  belongs_to :authorable, polymorphic: true, optional: false
end
