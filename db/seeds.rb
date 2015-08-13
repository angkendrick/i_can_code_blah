# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Subject.create(name: 'Ruby', description: 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. According to its authors, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp.')
Subject.create(name: 'Ruby on Rails', description: 'Ruby on Rails, sometimes known as "RoR" or just "Rails," is an open source framework for Web development in Ruby, an object-oriented programming (OOP) language similar to Perl and Python.')
Subject.create(name: 'Javascript', description: 'Javascript is an object-oriented computer programming language commonly used to create interactive effects within web browsers.')
Subject.create(name: 'jQuery', description: 'jQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. jQuery is the most popular JavaScript library in use today, with installation on 65% of the top 10 million highest-trafficked sites on the Web. jQuery is free, open-source software licensed under the MIT License.')
Subject.create(name: 'Ajax', description: 'Ajax is not a single technology, but a group of technologies. HTML and CSS can be used in combination to mark up and style information. The DOM is accessed with JavaScript to dynamically display – and allow the user to interact with – the information presented.')
Subject.create(name: 'AngularJS', description: 'AngularJS (commonly referred to as "Angular") is an open-source web application framework maintained by Google and by a community of individual developers and corporations to address many of the challenges encountered in developing single-page applications. It aims to simplify both the development and the testing of such applications by providing a framework for client-side model–view–controller (MVC) and model-view-viewmodel (MVVM) architectures, along with components commonly used in rich Internet applications.')
Subject.create(name: 'Node.js', description: 'Node.js is an open source, cross-platform runtime environment for server-side and networking applications.')
Subject.create(name: 'Java', description: 'Java is an object-oriented language similar to C++, but simplified to eliminate language features that cause common programming errors.')
Subject.create(name: 'PHP', description: 'PHP is a script language and interpreter that is freely available and used primarily on Linux Web servers. PHP, originally derived from Personal Home Page Tools, now stands for PHP: Hypertext Preprocessor, which the PHP FAQ describes as a "recursive acronym."')
Subject.create(name: 'Python', description: 'Python a high-level general-purpose programming language.')
Subject.create(name: 'Objective-C', description: 'Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. It is the main programming language used by Apple for the OS X and iOS operating systems, and their respective application programming interfaces (APIs), Cocoa and Cocoa Touch.')
Subject.create(name: 'C++', description: 'C++ is an object-oriented programming (OOP) language that is viewed by many as the best language for creating large-scale applications. C++ is a superset of the C language.')
Subject.create(name: 'C#', description: 'C# (C sharp) An object-oriented programming language that is based on C++ with elements from Visual Basic and Java. Like Java, C# provides automatic garbage collection, whereas traditional C and C++ do not.')
Subject.create(name: 'SQL', description: 'SQL is a standardized query language for requesting information from a database. The original version called SEQUEL (structured English query language) was designed by an IBM research center in 1974 and 1975. SQL was first introduced as a commercial database systemin 1979 by Oracle Corporation.')
Subject.create(name: 'Swift', description: "Swift is a multi-paradigm, compiled programming language created by Apple Inc. for iOS, OS X, and watchOS development. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of existing Objective-C code written for Apple products.")
Subject.create(name: 'HTML', description: "HTML is short for HyperText Markup Language, the authoring language used to create documents on the World Wide Web. HTML is similar to SGML, although it is not a strict subset. HTML defines the structure and layout of a Web document by using a variety of tags and attributes.")
Subject.create(name: 'CSS', description: 'CSS stands for "Cascading Style Sheet." Cascading style sheets are used to format the layout of Web pages. They can be used to define text styles, table sizes, and other aspects of Web pages that previously could only be defined in a page\'s HTML.')

User.create(username: "TestUser", password: "123456", password_confirmation: "123456", first_name: "John", last_name: "Smith", email: "John.Smith@gmail.com")

Tutorial.create(name: 'Try Ruby', description: '15-minute guided introduction to common Ruby methods', url: 'http://tryruby.org/', cost: 0.0, difficulty: 'beginner', format: 'interactive', company: 'Code School')
Tutorial.create(name: 'Ruby in 100 Minutes', description: 'Overview of Ruby that will probably take you more than 100 minutes to complete', url: 'http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html', cost: 0.0, difficulty: 'beginner', format: 'article', company: 'Jumpstart Labs')

TutorialSubject.create(tutorial_id: 1, subject_id: 1)
TutorialSubject.create(tutorial_id: 2, subject_id: 1)