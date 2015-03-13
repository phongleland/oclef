class BaseMailer < ActionMailer::Base
 # include Resque::Mailer if Rails.env == 'production'
  
  layout 'email'

  def send_now(subject, to, from=MAIL_CONFIG['from_default'], cc=nil, bcc=nil)
    to = MAIL_CONFIG['to_default'] unless Rails.env == 'production'
    
   # begin
      mail(:template_path => "mailers/#{self.class.mailer_name}", :from=>from, :to => to, :subject => subject, :cc=>cc, :bcc=>bcc)
#    rescue Exception => e

 #   end
  end
  
end