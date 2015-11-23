class Datum < ActiveRecord::Base
  belongs_to :dataset
  validates :row, presence: true, json: true

  #validates :submitterIp, presence: true







  def to_json (someObject)
    return self.row
  end
end
