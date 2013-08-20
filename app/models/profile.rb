class Profile < ActiveRecord::Base
  validates_uniqueness_of :user_id
  before_validation :url_check
  belongs_to :user
  has_many :video_pages
  
  has_attached_file :logo, :styles => { :small => "150x150>"}
  
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :phone, :numericality => true, 
                    :length => { :minimum => 10, :maximum => 15 },
                    :presence => { :message => "You must enter 10 digit phone number -- XXXXXXXXXX"}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  protected
  def url_check
      if ! self.facebook.blank? && !(self.facebook[/^http:\/\//] || self.facebook[/^https:\/\//])
        self.facebook = 'http://' + self.facebook
      elsif ! self.twitter.blank? && !(self.twitter[/^http:\/\//] || self.twitter[/^https:\/\//])
        self.twitter = 'http://' + self.twitter
      elsif ! self.linkedin.blank? && !(self.linkedin[/^http:\/\//] || self.linkedin[/^https:\/\//])
        self.linkedin = 'http://' + self.linkedin
      end
    end
end