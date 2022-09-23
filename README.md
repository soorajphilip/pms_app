<h3>Parking Management System (PMS) App </h3>
<p>
	The db is designed in such a way that 1000 slots is divided for 4 sections.
	<br>
	Sections named 1,2,3,4 each having 250 slots.
	<br>
	When a vehicle enters through any section, the algorithm checks for the nearest slot in that section first and if that section is fully occupied only then it checks for slot availability in the next nearest section.
</p>

Vesion Info:-

	Ruby version ~ 2.7.6
	Rails version ~ 6.1.7
	PostgreSQL version ~ 14.4


Installation:-

1. Clone the repo

		$ git clone git@github.com:soorajphilip/pms_app.git

2. Navigate to downloaded folder

		$ cd pms_app

3. Bundle gems

		$ bundle install

4. Install Webpacker

		$ yarn add @rails/webpacker

5. Create the database

		$ rails db:create

6. Run the migrations

		$ rails db:migrate

7. Prepopulate the database with initial/default data

		$ rails db:seed

8. Run server

		$ rails s

9. Website

		localhost:3000
