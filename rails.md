## Login

```ruby
def renew_api_token!(tms_api_token = nil)
    self.api_token = SecureRandom.hex(64)
    self.tms_api_token = tms_api_token
    self.jsession_id = nil if tms_api_token.nil?
    self.save!
end
```

**Checking API Token**
```ruby
def current_user
    if (api_token = request.headers['HTTP_API_TOKEN']).present?
      @current_user ||= User.find_by(api_token: api_token)
    end
end
```
