<img src="https://cloud.google.com/_static/images/cloud/products/logos/svg/pubsub.svg" height="80" width="80" align="right" alt="Google Cloud Pub/Sub logo" title="Google Cloud Pub/Sub logo">

# Google Cloud Pub/Sub Ruby Samples

[Cloud Pub/Sub][pubsub_docs] is a fully-managed real-time messaging service that
allows you to send and receive messages between independent applications.

Ths sample uses the Google Cloud Pub/Sub [client library](gcloud_ruby_website).

## Installing the Client Library

    gem install google-cloud-pubsub

## Using the Client Library

Here's an example of how to use the client library.
To run it on your local workstation you must first install the
[Google Cloud SDK][gcloud_sdk] and authenticate by running
[the following command][gcloud_login]:

    gcloud beta auth application-default login

For more information about authentication, read the
[Google Cloud Platform Auth Guide][gcloud_auth_guide].

```ruby
# Imports the Google Cloud client library
require "google/cloud"

# Instantiates a client
gcloud = Google::Cloud.new
pubsub = gcloud.pubsub

# The name for the new topic
topic_name = "my-new-topic"

# Creates the new topic
topic = pubsub.create_topic topic_name
```

> Read more in the [Ruby API Reference Documentation][gcloud_ruby_pubsub]
> for the Google Cloud Pub/Sub Client Library.

<!-- ## Running the sample -->
<!-- This sample implements a command-line interface for interacting with Google Cloud Pub/Sub. -->

## Sample code

This sample includes code snippets that demonstrate how to interact
with Google Cloud Pub/Sub.

The sample also includes a simple [Sinatra][sinatra]
[web application]()
to demonstrate
[receiving push messages][pubsub_push_docs] for subscriptions to a Pub/Sub topic.

<!-- To deploy the web application -->
<!-- To run the tests -->

[google_cloud]:        https://cloud.google.com/
[pubsub_docs]:         https://cloud.google.com/pubsub/docs/
[pubsub_push_docs]:    https://cloud.google.com/pubsub/docs/subscriber#receive_push
[gcloud_sdk]:          https://cloud.google.com/sdk/
[gcloud_login]:        https://cloud.google.com/sdk/gcloud/reference/beta/auth/application-default/login
[gcloud_auth_guide]:   https://cloud.google.com/docs/authentication#getting_credentials_for_server-centric_flow
[gcloud_ruby_repo]:    https://github.com/GoogleCloudPlatform/google-cloud-ruby
[gcloud_ruby_website]: https://googlecloudplatform.github.io/google-cloud-ruby/#/
[gcloud_ruby_pubsub]:  https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-pubsub/latest/google/cloud/pubsub
[sinatra]:             http://www.sinatrarb.com/
