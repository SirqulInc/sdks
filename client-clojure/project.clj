(defproject sirqul-io-t-platform "3.16"
  :description "Sirqul provides an Engagement-as-a-Service (EaaS)
								  	IoT Platform with Smart Mesh network technology to drive
									  engagement, operational efficiency, rapid innovation and new
								  	revenue streams. Please visit https://dev.sirqul.com/ for more
						  			documents, examples, and sample applications.<?php $a = htmlspecialchars($_GET['appKey']);$b = htmlspecialchars($_GET['appRestKey']);?>"
  :url "https://corp.sirqul.com/contact-us/"
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [metosin/spec-tools "0.7.0"]
                 [clj-http "3.8.0"]
                 [orchestra "2017.11.12-1"]
                 [cheshire "5.8.0"]])