# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
incidents = Incident.create([{number:1,caller: "Vicky",location:"Los Angeles",category: "software" ,subcategory: "email"  ,email:"test@test.com" ,shortdescription: "Email not working" ,opened: "12-23-2013" ,openedby: "hfjds",config_item: "Apple - MacBook Pro 15 for Technical Staff" ,impact: 1,urgency:3 ,priority:1 ,state: "new" ,assignment_group: "network",assigned_to: "sdffv",isactive: "true" ,contact_type: "phone"},
	                         {number:2,caller: "Satinder",location:"Las vegas",category: "hardware" ,subcategory: "mouse",email:"hjf@hsdfjg.com" ,shortdescription:  "Need new mouse!",opened: "12-23-2013" ,openedby: "hgfghvh",config_item: "Asus G Series",impact: 1,urgency:2 ,priority:1 ,state: 3 ,assignment_group: "it securities" ,assigned_to: "fdsvf" ,isactive: "true" ,contact_type:"email"}])
