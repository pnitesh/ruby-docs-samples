<img src="https://avatars2.githubusercontent.com/u/2810941?v=3&s=96" alt="Google Cloud Platform logo" title="Google Cloud Platform" align="right" height="96" width="96"/>

# Google Cloud Platform Ruby Samples [![Slack][slack_badge]][slack_link] [![Build][build_badge]][build_link]

Ruby samples for [Google Cloud Platform products][cloud].

See [cloud.google.com/ruby][cloud_ruby] to get up and running with Ruby
on Google Cloud Platform.

## Table of Contents

* [Setup](#setup)
  * [Prerequisites](#prerequisites)
  * [How to run a sample](#how-to-run-a-sample)
* [Client libraries](#client-libraries)
  * [Google Cloud Ruby client library](#google-cloud-ruby-client-library)
  * [Google API Ruby client library](#google-api-ruby-client-library)
* [Contributing](#contributing)
* [License](#license)

## Setup

### Prerequisites

1. Install [Ruby 2.1 or greater][ruby]
1. Clone this repository:

        git clone https://github.com/GoogleCloudPlatform/ruby-docs-samples.git

1. Change directory in to the project:

        cd ruby-docs-samples

1. Set the `GOOGLE_CLOUD_PROJECT` environment variable:

    Linux:

        export GOOGLE_CLOUD_PROJECT=your-project-id

    Windows:

        set GOOGLE_CLOUD_PROJECT=your-project-id

    Windows (PowerShell):

        $env:GOOGLE_CLOUD_PROJECT="your-project-id"

1. Obtain authentication credentials.

    Create local credentials by running the following command and following the
    oauth2 flow (read more about the command [here][auth_command]):

        gcloud beta auth application-default login

    In non-Google Cloud environments, GCE instances created without the
    correct scopes, or local workstations where the
    `gcloud beta auth application-default login` command fails, use a service
    account by doing the following:

    * Go to API Manager -> Credentials
    * Click "New Credentials", and create a service account or [click here](https://console.cloud.google.com/project/_/apiui/credential/serviceaccount)
    * Download the JSON for this service account, and set the `GOOGLE_APPLICATION_CREDENTIALS`
    environment variable to point to the file containing the JSON credentials.

    Set the `GOOGLE_APPLICATION_CREDENTIALS` environment variable:

    Linux:

        export GOOGLE_APPLICATION_CREDENTIALS=/path/to/service_account_file.json

    Windows:

        set GOOGLE_APPLICATION_CREDENTIALS=/path/to/service_account_file.json

    Windows (PowerShell):

        $env:GOOGLE_APPLICATION_CREDENTIALS="/path/to/service_account_file.json"

    __Note for code running on GCE, GAE, or other environments:__

    On Google App Engine, the credentials should be found automatically.

    On Google Compute Engine, the credentials should be found automatically, but require that
    you create the instance with the correct scopes.

        gcloud compute instances create --scopes="https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/compute,https://www.googleapis.com/auth/compute.readonly" test-instance

    If you did not create the instance with the right scopes, you can still
    upload a JSON service account and set `GOOGLE_APPLICATION_CREDENTIALS`
    as described.

    Read more about [Google Cloud Platform Authentication][gcp_auth].

### How to run a sample

1. Change directory to one of the sample folders, e.g. `bigquery`:

        cd bigquery/

1. Install the sample's dependencies (see the sample's README for details):

        bundle install

1. Run the sample:

        bundle exec sample_file.rb [args]...

## Client libraries

### <img src="https://avatars2.githubusercontent.com/u/2810941?v=3&s=36" alt="Google Cloud Platform logo" title="Google Cloud Platform" align="left" height="36" width="36" style="margin-top: 9px;"/>Google Cloud Ruby client library

The recommended, idiomatic client for Google Cloud Platform services.

* [Documentation][gcloud_ruby_docs]
* [Source code][gcloud_ruby_github]

### <img src="https://avatars0.githubusercontent.com/u/1342004?v=3&s=36" alt="Google logo" title="Google" align="left" height="36" width="36" style="margin-top: 9px;"/>Google API Ruby client library

An older Ruby client library for making REST requests to Google APIs. Use
this for Google Cloud APIs that are not yet supported by the Google Cloud
Ruby client library.

* [Source code][google_api_client_github]
* [Documentation][google_api_client_docs]

## Contributing changes

* See [CONTRIBUTING.md](CONTRIBUTING.md)

## Licensing

* See [LICENSE](LICENSE)


[cloud]: https://cloud.google.com/
[cloud_ruby]: https://cloud.google.com/ruby/

[slack_badge]: https://img.shields.io/badge/slack-ruby%20on%20gcp-E01563.svg
[slack_link]: https://gcp-slack.appspot.com/

[build_badge]: https://img.shields.io/circleci/project/github/GoogleCloudPlatform/ruby-docs-samples/master.svg?style=flat
[build_link]:  https://circleci.com/gh/GoogleCloudPlatform/ruby-docs-samples

[gcloud_ruby_github]: https://github.com/GoogleCloudPlatform/google-cloud-ruby
[gcloud_ruby_docs]:   https://googlecloudplatform.github.io/google-cloud-ruby/

[google_api_client_github]: https://github.com/google/google-api-ruby-client
[google_api_client_docs]:   https://developers.google.com/api-client-library/ruby/

[ruby]: https://www.ruby-lang.org

[auth_command]: https://cloud.google.com/sdk/gcloud/reference/beta/auth/application-default/login
[gcp_auth]:     https://cloud.google.com/docs/authentication#projects_and_resources
