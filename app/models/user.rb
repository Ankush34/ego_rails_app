class User
	include Mongoid::Document
  include Mongoid::Timestamps
  include ArrayBlankRejectable
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:jwt_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time
	include Mongoid::Timestamps
 	include ArrayBlankRejectable
   
	field :name, type: String, default: ""
	field :email, type: String, default: ""
	field :password, type: String
	field :contact_no, type: String
	field :role, type: String
  field :jti, type: String
  field :user_type, type: String, default: "ServiceSeeker"
	field :pubsub_channel, type: String, default: ""
  field :riding_status, type: String, default: ""
  validates :name, :email, :contact_no, presence: true
	validates :email, uniqueness: true , if: Proc.new{|user| user.contact_no.blank? }
	validates :contact_no, uniqueness: true, if: Proc.new{|user| user.email.blank? }
  validates :jti , uniqueness: true

	
  has_many :vehicles
  has_one :location
  accepts_nested_attributes_for :location

  def self.available_roles
		roles = [
			{id:"user",name:"User"},
			{id:"admin",name:"Admin"},
			{id:"superadmin",name:"SuperAdmin"}]
	end

  def self.build_criteria params
    if(params[:fltrs].present? )
      
    else
      criteria = User.all
    end
    criteria
  end

  # here in sob we get the id of the record that wias logged in by that jwt token
  def self.find_for_jwt_authentication(sub)
    User.find(id: sub)
  end

end