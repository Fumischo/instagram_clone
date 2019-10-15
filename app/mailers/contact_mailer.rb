class ContactMailer < ApplicationMailer
  def contact_mail(picture)
    @picture = picture

    mail to:"nil.admirari1009@gmail.com", subject:"お問い合わせの確認メール"
  end
end
