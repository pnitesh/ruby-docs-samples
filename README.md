<img src="https://avatars2.githubusercontent.com/u/2810941?v=3&s=96" alt="Google Cloud Platform logo" title="Google Cloud Platform" align="right" height="96" width="96"/>

[![Build][build_badge]][build_link]

Ruby samples for [Google Cloud Platform products][cloud].

See [cloud.google.com/ruby][cloud_ruby] to get up and running with Ruby
on Google Cloud Platform.

[build_badge]: https://img.shields.io/travis/GoogleCloudPlatform/ruby-docs-samples.svg?style=flat
[build_link]:  https://travis-ci.org/GoogleCloudPlatform/ruby-docs-samples
[cloud]:       https://cloud.google.com/
[cloud_ruby]:  https://cloud.google.com/ruby/

## Table of Contents

- [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [How to run a sample](#how-to-run-a-sample)
- [Client libraries](#client-libraries)
  - [Google Cloud Ruby client library](#google-cloud-ruby-client-library)
  - [Google API Ruby client library](#google-api-ruby-client-library)
- [Code samples](#code-samples)
  - [Storage and Databases](#storage-and-databases)
    - [Google Cloud Datastore](#google-cloud-datastore)
    - [Google Cloud Storage](#google-cloud-storage)
  - [Big Data](#big-data)
    - [Google BigQuery](#google-bigquery)
    - [Google Cloud Pub/Sub](#google-cloud-pubsub)
  - [Management Tools](#management-tools)
    - [Stackdriver Logging](#stackdriver-logging)
- [Google App Engine (Flexible Environment) samples](#google-app-engine-flexible-environment-samples)
    - [Quickstart](#quickstart)
    - [Integrating with Google Analytics](#integrating-with-google-analytics)
    - [Using Memcache](#using-memcache)
    - [Serving Static Files](#serving-static-files)
    - [Using Google Cloud Pub/Sub](#using-google-cloud-pubsub)
    - [Querying Compute Engine metadata server](#querying-compute-engine-metadata-server)
    - [Email and Messaging](#email-and-messaging)
      - [Sending Emails with Mailgun](#sending-emails-with-mailgun)
      - [Sending Emails with SendGrid](#sending-emails-with-sendgrid)
      - [Using SMS and Voice Services via Twilio](#using-sms-and-voice-services-via-twilio)
    - [Storing Data and Files](#storing-data-and-files)
      - [Using Cloud SQL](#using-cloud-SQL)
      - [Using Cloud Datastore](#using-cloud-datastore)
      - [Using Cloud Storage](#using-cloud-storage)
- [Other sample applications](#other-sample-applications)
  - [Bookshelf tutorial app](#bookshelf-tutorial-app)
- [Contributing](#contributing)
- [License](#license)

## Setup

### Prerequisites

1. Install [Ruby][ruby] and [Bundler][bundler]
1. Clone this repository:

    ```sh
    git clone https://github.com/GoogleCloudPlatform/ruby-docs-samples.git
    ```

1. Change directory in to the project:

    ```sh
    cd ruby-docs-samples
    ```

1. Obtain authentication credentials.

    Create local credentials by running the following command and following the
    oauth2 flow (read more about the command [here][auth_command]):

    ```sh
    gcloud beta auth application-default login
    ```

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

    ```sh
    export GOOGLE_APPLICATION_CREDENTIALS=/path/to/service_account_file.json
    ```

    Windows:

    ```batch
    set GOOGLE_APPLICATION_CREDENTIALS=/path/to/service_account_file.json
    ```

    Windows (PowerShell):

    ```PowerShell
    $env:GOOGLE_APPLICATION_CREDENTIALS="/path/to/service_account_file.json"
    ```

    __Note for code running on GCE, GAE, or other environments:__

    On Google App Engine, the credentials should be found automatically.

    On Google Compute Engine, the credentials should be found automatically, but require that
    you create the instance with the correct scopes.

    ```sh
    gcloud compute instances create --scopes="https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/compute,https://www.googleapis.com/auth/compute.readonly" test-instance
    ```

    If you did not create the instance with the right scopes, you can still
    upload a JSON service account and set `GOOGLE_APPLICATION_CREDENTIALS`
    as described.

    Read more about [Google Cloud Platform Authentication][gcp_auth].

[ruby]:         https://www.ruby-lang.org/
[bundler]:      http://bundler.io/
[auth_command]: https://cloud.google.com/sdk/gcloud/reference/beta/auth/application-default/login
[gcp_auth]:     https://cloud.google.com/docs/authentication#projects_and_resources

### How to run a sample

1. Change directory to one of the sample folders, e.g. `bigquery`:

    ```sh
    cd bigquery/
    ```

1. Install the sample's dependencies (see the sample's README for details):

    ```sh
    bundle install
    ```

1. Run the sample:

    ```sh
    bundle exec ruby sample_file.rb [args]...
    ```

## Client libraries

### <img src="https://avatars2.githubusercontent.com/u/2810941?v=3&s=36" alt="Google Cloud Platform logo" title="Google Cloud Platform" align="left" height="36" width="36" style="margin-top: 9px;"/>Google Cloud Ruby client library

The idiomatic client for Google Cloud Platform services.

- [Documentation](https://googlecloudplatform.github.io/gcloud-ruby/)
- [Source code](https://github.com/GoogleCloudPlatform/gcloud-ruby)

### <img src="https://avatars0.githubusercontent.com/u/1342004?v=3&s=36" alt="Google logo" title="Google" align="left" height="36" width="36" style="margin-top: 9px;"/>Google API Ruby client library

Ruby client library for Google APIs.

- [Documentation](http://www.rubydoc.info/github/google/google-api-ruby-client/)
- [Source code](https://github.com/google/google-api-ruby-client)

## Code samples

### Storage and Databases

#### Google Cloud Datastore

[Cloud Datastore][datastore_docs] is a NoSQL document database built for
automatic scaling, high performance, and ease of application development.

View the [Cloud Datastore Ruby samples][datastore_samples].

[datastore_docs]:    https://cloud.google.com/datastore/docs/
[datastore_samples]: datastore

#### Google Cloud Storage

[Cloud Storage][storage_docs] allows world-wide storage and retrieval of any
amount of data at any time.

View the [Cloud Storage Ruby samples][storage_samples].

[storage_docs]:    https://cloud.google.com/storage/docs/
[storage_samples]: storage

### Big Data

#### Google BigQuery

[BigQuery][bigquery_docs] is Google's fully managed, petabyte scale, low cost
analytics data warehouse.

View the [BigQuery Ruby samples][bigquery_samples].

[bigquery_docs]:    https://cloud.google.com/bigquery/docs/
[bigquery_samples]: bigquery

#### Google Cloud Pub/Sub

[Cloud Pub/Sub][pubsub_docs] is a fully-managed real-time messaging service that
allows you to send and receive messages between independent applications.

View the [Cloud Pub/Sub Ruby samples][pubsub_samples].

[pubsub_docs]:    https://cloud.google.com/pubsub/docs/
[pubsub_samples]: pubsub

### Management Tools

#### Stackdriver Logging

[Stackdriver Logging][logging_docs] allows you to store, search, analyze,
monitor, and alert on log data and events from Google Cloud Platform and Amazon
Web Services.

View the [Stackdriver Logging Ruby samples][logging_samples].

[logging_docs]:    https://cloud.google.com/logging/docs/
[logging_samples]: logging

## Google App Engine flexible environment samples

The [App Engine flexible environment][flex_docs] is based on Google Compute
Engine and automatically scales your app up and down while balancing the load.

These sample applications run on App Engine flexible environment.

[flex_docs]: https://cloud.google.com/appengine/docs/flexible/ruby/

### Quickstart

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/quickstart)
- [Source code](appengine/hello_world)

### Integrating with Google Analytics

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/integrating-with-analytics)
- [Source code](appengine/analytics)

### Using Memcache

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/caching-application-data)
- [Source code](appengine/memcache)

### Serving Static Files

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/serving-static-files)
- [Source code](appengine/static_files)

### Using Google Cloud Pub/Sub

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/writing-and-responding-to-pub-sub-messages)
- [Source code](appengine/pubsub)

### Querying Compute Engine metadata server

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/runtime#metadata_server)
- [Source code](appengine/metadata_server)

### Email and Messaging

#### Sending Emails with Mailgun

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/sending-emails-with-mailgun)
- [Source code](appengine/mailgun)

#### Sending Emails with SendGrid

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/sending-emails-with-sendgrid)
- [Source code](appengine/sendgrid)

#### Using SMS and Voice Services via Twilio

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/using-sms-and-voice-services-via-twilio)
- [Source code](appengine/twilio)

### Storing Data and Files

#### Using Cloud SQL

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/using-cloud-sql)
- [Source code](appengine/cloudsql)

#### Using Cloud Datastore

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/using-cloud-datastore)
- [Source code](appengine/datastore)

#### Using Cloud Storage

- [Documentation](https://cloud.google.com/appengine/docs/flexible/ruby/using-cloud-storage)
- [Source code](appengine/storage)

## Other sample applications

### Bookshelf tutorial app

The [Bookshelf app][bookshelf_docs] is a sample web app written in Ruby that
shows you how to use a variety of Google Cloud Platform features.

View the [tutorial][bookshelf_docs] or the [source code][bookshelf_code].

[bookshelf_docs]: https://cloud.google.com/ruby/getting-started/tutorial-app
[bookshelf_code]: https://github.com/GoogleCloudPlatform/getting-started-ruby

## Contributing

Contributions welcome! See the [Contributing Guide][contrib].

## License

Apache Version 2.0

See [LICENSE](LICENSE)

[contrib]:       CONTRIBUTING.md
[appengine_sla]: https://cloud.google.com/appengine/sla
