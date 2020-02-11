class Artist < ApplicationRecord
    has_secure_password

    has_many :user_artists
    has_many :users, through: :user_artists
    has_many :songs
    has_many :user_songs, through: :songs

    validates :username, uniqueness: true, presence: true
    validates :password, length: {minimum: 8}, presence: true

end
