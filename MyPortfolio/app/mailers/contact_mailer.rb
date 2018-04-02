class ContactMailer < ApplicationMailer
  def notify_project_owner(project)
    @project_owner = @project.user

    mail(
      to: @project_owner.email,
      subject: 'You got a new message from Liz Portfolio!'
    )
  end

  def contact_me_mailer(data)
    @name = data[:name]
    @email = data[:email]
    @phone = data[:phone]
    @message = data[:message]
    mail(
      from: @email,
      to: "mecbalbino@gmail.com",
      subject: 'You got a new message from Your Portfolio!'
    )
  end
end
