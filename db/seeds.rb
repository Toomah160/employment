r = Role.create(name: "Employer")
 Role.create(name: "Job Seeker")
 Type.create([{name: "Executive"}, {name: "Networking"},
{name: "Programming"}, {name: "Design"}])
 User.create(email: "tartan@cmu.edu", password:
"foobar", admin: true, role_id: r.id)