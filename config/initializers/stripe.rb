Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_UXQeKjsu1oCamJGimVKz3nH1'],
  secret_key:      ENV['sk_test_EXscBtlaxOkUaCd5seo30cjh']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
