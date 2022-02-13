class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  belongs_to :boss
  has_many :working_times, dependent: :destroy
  
  def full_name
    first_name + " " + last_name
  end
  
end
