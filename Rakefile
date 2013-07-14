task "lib/raccumber/feature_parser.rb" => "lib/raccumber/feature_parser.racc" do
  sh "racc -o lib/raccumber/feature_parser.rb lib/raccumber/feature_parser.racc"
end

task :run => :default do
  sh './raccumber'
end

task :default => "lib/raccumber/feature_parser.rb"
