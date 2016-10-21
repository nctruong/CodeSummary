## Login

```ruby
def renew_api_token!(tms_api_token = nil)
    self.api_token = SecureRandom.hex(64)
    self.tms_api_token = tms_api_token
    self.jsession_id = nil if tms_api_token.nil?
    self.save!
end
```
