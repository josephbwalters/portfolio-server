module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :crypted_password, String, null: true
    field :salt, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :remember_me_token, String, null: true
    field :remember_me_token_expires_at, GraphQL::Types::ISO8601DateTime, null: true
    field :reset_password_token, String, null: true
    field :reset_password_token_expires_at, GraphQL::Types::ISO8601DateTime, null: true
    field :reset_password_email_sent_at, GraphQL::Types::ISO8601DateTime, null: true
    field :access_count_to_reset_password_page, Integer, null: true
  end
end
