class PassengerMailer < ApplicationMailer

  def thank_you(passenger)
    @passenger = passenger
    @url = "https://secure-sands-80209.herokuapp.com/bookings/{@passenger.bookings.last.id}"
    mail(to: @passenger.email, subject: "Thank you for your booking!")
  end
end
