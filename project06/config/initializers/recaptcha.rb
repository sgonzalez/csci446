#ENV['RECAPTCHA_PUBLIC_KEY'] = '6LeSY88SAAAAAMBhz8NOwLb6PC_pr8Fd7BT3geBK'
#ENV['RECAPTCHA_PRIVATE_KEY'] = '6LeSY88SAAAAAPbZ_124jNrTwvMUIUhIOZ3goRqI'

Recaptcha.configure do |config|
  config.public_key  = '6LeSY88SAAAAAMBhz8NOwLb6PC_pr8Fd7BT3geBK'
  config.private_key = '6LeSY88SAAAAAPbZ_124jNrTwvMUIUhIOZ3goRqI'
end