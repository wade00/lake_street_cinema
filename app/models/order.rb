class Order < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :theater
  belongs_to :movie
  before_update :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_CREDIT_CARD_REGEX = /(^\d{15,16}$)/
  VALID_ZIP_CODE_REGEX = /(^\d{5}$)/

  validates :email, presence: true,
                    on: :update,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX,
                              message: "- that email doesn't look right to us, check it again please." }

  validates :credit_card, presence: true,
                          on: :update,
                          length: { maximum: 16 },
                          format: { with: VALID_CREDIT_CARD_REGEX,
                                    message: "- the card info doesn't look right to us. Check the length and make sure it's only numbers please." }

  validates :name, presence: true, on: :update
  validates :card_expiration_month, presence: true, on: :update
  validates :card_expiration_year,  presence: true, on: :update
  validates :street_address, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :state, presence: true, on: :update
  validates :zip_code, presence: true,
                       on: :update,
                       length: { maximum: 5 },
                       format: { with: VALID_ZIP_CODE_REGEX,
                                 message: "- zip codes should only be 5 digits. No letters or extra numbers please."}
  validates :country, presence: true, on: :update

  private
    def downcase_email
      self.email = email.downcase
    end
end
