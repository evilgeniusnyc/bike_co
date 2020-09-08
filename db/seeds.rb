# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Programmer.destroy.all
# Project.destroy_all
# Task.destroy_all
# ProjectManager.destroy_all
# Department.destroy_all
# UserBike.destroy_all

Task.destroy_all
Programmer.destroy_all
Project.destroy_all
ProjectManager.destroy_all
Department.destroy_all
UserBike.destroy_all


UserBike.create(name: "Iron Boxer Bike Company", motto: "Building a Better Ride", street: "555 East 5th Street", city: "New York, NY 10009", phone: "(212) 555-5555")

Department.create(name: "Frames ", user_bike_id: UserBike.first.id)
Department.create(name: "Wheels", user_bike_id: UserBike.all.first.id)
Department.create(name: "Gears", user_bike_id: UserBike.all.first.id)
Department.create(name: "Contact Points", user_bike_id: UserBike.all.first.id)
Department.create(name: "Accessories ", user_bike_id: UserBike.all.first.id)
Department.create(name: "Track Bikes", user_bike_id: UserBike.all.first.id)
Department.create(name: "Cyclocross Bikes", user_bike_id: UserBike.first.id)

ProjectManager.create(name: "Beryl Burton", nick_name: "Mile-a-Minute", dob: "May 1937 - May 1996", bio: "Beryl Burton is widely regarded as the greatest female racing cyclist of all time.   Her accolades include 96 English national titles, 15 world championship medals, seven world titles and six-world records.  In 1967, she rode 277.25 miles in a 12-hour time-trial, a women’s world record that stood for 50-years and exceeded the men’s record at the time by .733 miles.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Marshall Taylor", nick_name: "Major", dob: "November 1878 - June 1932", bio: "Marshall “Major” Taylor’s exploits on bike tracks across the world are legend.  In 1998, just one-year into his professional, he set seven world records in track events ranging from the quarter-mile to the two-mile.  He did the mile from a standing start in 1:41, a record that stood for 28-years, and was the second ever black athlete to win a world championship in any sport, behind Canadian bantamweight boxer George Dixon.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Eddy Merckx", nick_name: "The Cannibal", dob: "June 1945 - ", bio: "For 10 years, Merckx dominated professional cycling like few athletes have in the history of sport. Nicknamed “The Cannibal” for the way he devoured his competitors with his have-no-mercy style, Merckx racked up 445 victories over his professional career, winning every single major race on the pro calendar.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Jacques Anquetil", nick_name: "Monsieur Chrono", dob: "January 1934 - November 1987 ", bio: "Jacques Anquetil was the first cyclist to win the Tour de France five times, in 1957 and from 1961 to 1964.  He also won the Giro d'Italia in 1960 and 1964, and the Vuelta a España in 1963, making him the first cyclist to win all three grand tours.  In 1956 he rode 46.159 kilometres in one hour, making a new hour record.  All told, the flashy Frenchman won 200 road races, and his eight Grand Tour victories trail only Merckx and Bernard Hinault in the record books.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Bernard Hinault ", nick_name: "The Badger", dob: "November 1954 - ", bio: "With 250 professional victories, 52 time-trial wins, 10 Grand Tour titles and five victories in cycling’s one-day Classics, it’s truly amazing that another rider has managed to surpass what Hinault was able to do in his cycling career. “The Badger” was known for his aggressive, attacking style and was a complete rider who had no weaknesses on the bike.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Angelo Fausto Coppi", nick_name: "Champion of Champions", dob: "September 1919 - January 1960", bio: "Despite being unable to compete during the prime of his career because of World War II, Il Campionissimo (The Champion of Champions) still claimed victory at seven Grand Tours — the Giro d’Italia a record five times and the Tour de France twice.", department_id: Department.all.sample.id) 
ProjectManager.create(name: "Marianne Vos", nick_name: "Dutch Cannibal", dob: "May 1987 -", bio: "Marianne Vos has been called the best all-around cyclist in the world.   On the road, she’s a two-time Olympic Champion, five-time UCI World Champion, and triple winner of the Giro d’Italia Internazionale.  In cyclo-cross, she’s seven-time UCI World Champion, having won the rainbow jersey six times in a row from 2009 to 2014 after her first victory in 2006. ", department_id: Department.all.sample.id) 

Project.create(name: "Build a Better Brake Cable", budget: "$1.2 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Brake Lever", budget: "$1.3 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Brake Pad", budget: "$2.5 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Brake Roter", budget: "$3.5 million", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Drivetrain", budget: "$1.2 million", development_stage: "$planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Cassette", budget: "$2.5 million", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Chain", budget: "$1.6 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Chainring", budget: "$1.5 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Derailleur", budget: "$1.3 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Shifter", budget: "3,2 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Aerobar", budget: "1.5 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Saddle ", budget: "$1.2 million ", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Fork", budget: "$3 million ", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build Better Drop Handlebars", budget: "$2.2 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Bottle Cage", budget: "$1.5 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Peddle", budget: "$1.3 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Disc Calaber", budget: "3,2 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Dog Gear", budget: "1.5 million", development_stage: "monitoring", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Tuner", budget: "$1.2 million ", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build a Better Tube", budget: "$3 million ", development_stage: "planning", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build Better Cable", budget: "$2.2 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)
Project.create(name: "Build Better Bike Lock", budget: "$8.2 million", development_stage: "execution", project_manager_id: ProjectManager.all.sample.id)

Programmer.create(name: "Eric Kim", phone: "(212) 555-5500", email: "eric@ironboxer.com")
Programmer.create(name: "Sylwia Vargas", phone: "(212) 555-5501", email: "eric@ironboxer.com")
Programmer.create(name: "Annie ", phone: "(347) 555-5502", email: "eric@ironboxer.com")
Programmer.create(name: "Eric Kim", phone: "917-555-5503", email: "eric@ironboxer.com")

Task.create(name: "Task H", description: "Develop Software", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Li", description: "Develop Software", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Na", description: "Develop Software", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task K", description: "Develop Software", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Rb", description: "Develop Software", project_id: Project.all.sample.id, programmer_id: Programmer.all.first.id)
Task.create(name: "Task Cs", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Fr", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Be", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Mg", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ca", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Sr", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ba", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ra", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Cs", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Y", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ti", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Tr", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Hf", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Cr", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Tc", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Os", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ru", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ir", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Pt", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Hs", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Pm", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Np", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Am", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Pu", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Pd", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)
Task.create(name: "Task Ag", description: "Debug", project_id: Project.all.sample.id, programmer_id: Programmer.all.first.id)
Task.create(name: "Task Xe", description: "Build Database", project_id: Project.all.sample.id, programmer_id: Programmer.all.sample.id)

     


