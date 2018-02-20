namespace :bookings do
  desc "Upload bookings from CSV"
  task load_csv: :environment do
    puts "Running upload . . ."
    CSV.foreach('bookings.csv') do |row|
      booking = Booking.new(name: row[0], start_time: row[1].to_datetime, end_time: row[2].to_datetime)
      if booking.save
        puts row[0]
      else
        puts "Duplication"
      end
    end
    puts "Upload complete"
  end
end
