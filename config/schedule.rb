set :path, '~/local/pubchem'

every 1.day, :at => "2:15pm" do
  rake "daily"
end
