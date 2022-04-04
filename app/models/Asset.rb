class Asset < ActiveRecord::Base #709 Methods in ActiveRecord
    #423 Methods in AR
    has_many :subsidiaries, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true
end