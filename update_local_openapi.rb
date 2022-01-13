require 'yaml'
require 'open-uri'

url = 'https://entreprise.api.gouv.fr/v3/openapi.yaml'
tmp_file = './tmp/openapi.yaml'
final_file = './openapi.yaml'

File.write(tmp_file, open(url).read)

open_api = YAML.load_file(tmp_file)

open_api['paths'].each do |path, attributes|
  tag = attributes['get']['tags'][0]

  final_tag = case tag
  when /générale/
    'CommonInformation'
  when /Attestations sociales/
    'Attestations'
  when /Certifications/
    'Certifications'
  when /intellectuelle/
    'IntellectuelProperty'
  when /financière/
    'FinancialInformation'
  else
    raise "Not valid tag: #{tag}"
  end

  attributes['get']['tags'] = [final_tag]

  open_api['paths'][path] = attributes
end

File.write(final_file, open_api.to_yaml)
