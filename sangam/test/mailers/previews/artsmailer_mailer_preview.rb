# Preview all emails at http://localhost:3000/rails/mailers/artsmailer_mailer
class ArtsmailerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/artsmailer_mailer/newart
  def newart
    ArtsmailerMailer.newart
  end

end
