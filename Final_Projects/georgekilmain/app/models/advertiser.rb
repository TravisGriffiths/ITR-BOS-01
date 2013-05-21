class Advertiser < ActiveRecord::Base
  attr_accessible :advertisement, :password, :password_confirmation, :business_name, 
  				  :city, :contact_name, :email, :state, :street, :url, :zipcode, :school_id

  attr_accessor :password

  belongs_to :school

  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_presence_of :business_name
  # validates_presence_of 
  validates_uniqueness_of :email

  # for log in
  def self.authenticate(email, password)
  	advertiser = find_by_email(email)
  	if advertiser && advertiser.password_hash == BCrypt::Engine.hash_secret(password, advertiser.password_salt)
  		advertiser
  	else
  		nil
  	end
  end

  # for log in
  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end

  # for maps
  def gmaps4rails_infowindow
      @advertiser = School.find(1)
  end
end
