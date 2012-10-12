class Etd < ActiveFedora::Base
  has_metadata :name => 'descMetadata', :type => ActiveFedora::SimpleDatastream do |d|
    d.field :author, :string
    d.field :title, :string
    d.field :abstract, :string
    d.field :pub_date, :datetime
    d.field :keywords, :string
  end 
  
  has_file_datastream :name => 'etd_text', :type => ActiveFedora::Datastream
  
  delegate_to 'descMetadata', [:author, :title, :abstract, :pub_date], :unique => true
  delegate_to 'descMetadata', [:keywords]
end