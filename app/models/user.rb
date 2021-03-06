# frozen_string_literal: true

class User < ApplicationRecord
  has_many :award
  has_many :inscription
  has_many :events_participation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
