# Copyright 2017 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START dlp_quickstart]
# Imports the Google Cloud client library
require "google/cloud/dlp"

# Instantiates a client
dlp = Google::Cloud::Dlp.new

request_configuration = {
  # The types of information to match
  info_types: [{ name: "US_MALE_NAME" }, { name: "US_FEMALE_NAME" }],

  # Only return results above a likelihood threshold (0 for all)
  min_likelihood: :LIKELIHOOD_UNSPECIFIED,

  # Limit the number of findings (0 for no limit)
  max_findings: 0,

  # Whether to include the matching string in the response
  include_quote: true
}

# The items to inspect
items_to_inspect = [{ type: "text/plain", value: "Robert Frost" }]

# Run request
response = dlp.inspect_content request_configuration, items_to_inspect

# Print the results
response.results.each do |result|
  result.findings.each do |finding|
    puts "Quote:      #{finding.quote}"
    puts "Info type:  #{finding.info_type.name}"
    puts "Likelihood: #{finding.likelihood}"
  end
end
# [END dlp_quickstart]
