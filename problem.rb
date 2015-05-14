if Person.count.zero?
	Person.create(name:'admin', admin:true)
	Person.create(name:'nonadmin', admin:false)
end

if Post.count.zero?
	1.upto(5) {|i| Post.create title:"Post #{i}" }
end

if Viewing.count.zero?
	Post.first.viewings.create person_id: 1
	Post.first.viewings.create person_id: 2
	Post.last.viewings.create person_id: 1
end

puts Post.first.viewers.merge(Person.nonadmin).to_sql

puts "TOTAL IS #{Post.first.viewers.merge(Person.nonadmin).count(:all)}"
