class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates :name, :gmail, presence: true
  # validates :term_of_service, acceptance: {accept: 'yes'}
  # validates :eula, acceptance: {accept: ['TRUE', 'accepted']}
  # validates :email, confirmation: true
  # validates :start_date, compariosn: {greater_than: :end_dtae}
  # validates :subdomain, exclusion: {in: %w(www us ca jp),
  #   message: "%{value} is reserved."}
  # validates :legacy_code, format: {with: /\A-[a-zA-Z]+\z/,
  # message: "only allow letters"}
  # validates :size, inclusion: { in: %w(small medium large),
  # message: "%{value} is not a valid size"}
  # validates :name, length: {minimum:2, maximum:25}
  # validates :password, length: {in: 5..25}
  # validates :registration_number, length: {is: 9}
  # validates :points, numerically: true
  val

  # //////////

  # before_validation :ensure_login_has_value
  # before_validation :normalize_name, on: :create
  # after_validation :set_location, on: [:create, :update]
  # after_save_commit :log_user_saved_to_db
  # after_updtae_commit :log_user_saved_to_db


  # end
  # after_initialize do |student|
  #   puts "you have initialize an object"
  # end
  # after_find do |student|
  #   puts "you have found an obj"
  # end
  # after_touch do |student|
  #   puts "you have touch an obj"

  # end

  # private

  # def log_user_saved_to_db
  #   puts "user was saved to db"
  # end
  #   def normalize_name
  #     self.name = name.downcase.titleize
  #   end
  #   def set_location
  #     puts "after validation"
  #   end

  # def ensure_login_has_value
  #   if gmail.nil?
  #     puts "enter your email"
  #   end
  # end
end
