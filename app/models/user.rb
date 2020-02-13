class User < ApplicationRecord
    has_secure_password

    has_many :user_songs
    has_many :songs, through: :user_songs
    has_many :user_artists
    has_many :artists, through: :user_artists

    validates :name, presence: true
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password, length: {minimum: 8}, presence: true





end
