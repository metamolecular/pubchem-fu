set :path, '~/local/pubchem'

every 1.day, :at => "2pm" do
  rake "daily"
end
