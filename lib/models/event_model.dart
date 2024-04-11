// import 'package:flutter/material.dart';

class Event {
  final String name;
  final double price;
  final String imageUrl;
  final String duration;
  final bool isTechnical;
  final String description;
  final Map<String, String> rules;
  final Map<String, String> structure; // Added field
  final List<Map<String, String>>
      contact; // Changed type to List<Map<String, String>>
  final List<Map<String, String>> prizes; // Added field
  final List<String> datetime; // Changed type to List<String>
  final String body;
  final int id;

  Event({
    required this.body,
    required this.id,
    required this.structure, // Added field
    required this.contact, // Changed type
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.duration,
    required this.isTechnical,
    required this.description,
    required this.rules,
    required this.prizes, // Added field
    required this.datetime, // Added field
  });

  static List<Event> events = [
    Event(
      id: 102,
      name: 'Reverse\nCoding',
      price: 50,
      imageUrl: 'assets/RC.png',
      duration: '30',
      isTechnical: true,
      body:
          "A coding competition to test your conceptual understanding of algorithms and programming languages. Combine logic and agility to decipher given patterns and code to decode these sequences to find the final answer.",
      rules: {
        "1":
            "Integer type questions which involve complex mathematical problems which are not easy to solve without coding.",
        "2": "A 30-minute game for a person or a team of two people.",
        "3":
            "Teams or players are allowed to use any IDE or software after the game has started.",
        "4":
            "You will have 3 lifelines (description will be provided in the game itself).",
        "5":
            "You are not allowed to switch tabs or close the browser during the game. If you do so, you will be logged out automatically.",
        "6":
            "You will have two attempts to answer a particular question. In the first attempt, the marking scheme will be +4 0. In the second attempt, the marking scheme will be changed to +2 -2."
      },
      structure: {
        "1":
            "Round-1(Logic Round): A 30 minute round of Numerical Answer of Questions for individuals as well as a team(max 2 people) contenders  based on coding concepts in C/C++, Java and python divided into Juniors and Seniors category. Juniors including F.E’s and S.E's, seniors including T.E’s and B.E’s (Python, C/C++ for both the categories) where you would also be provided with 3 boonful lifelines(description will be provided in the game itself) and the marking scheme would be as follows:- The primary marks allotted are +4 if answered correctly and if the answer for a particular question is incorrect then the contenders gets second attempt +2 marks are allotted for the correctly answered question, else -2 and for the upcoming question again same marking scheme is repeated.",
        "2":
            "Round-2(Decipher and code Round): A 2 hour long round where each team or individuals have to solve 6 core code based questions with increasing difficulty and without the help of any Lifelines. Questions would be a blend of Data-Structures and Algorithms and mind bending Competitive programming Questions which the contenders would have to solve and pave their path to victory. Note: Junior level questions would be comparatively a little less challenging than the Senior level. Judging for round 2 will be based on the time and space efficiency of your code to solve the given challenges in restricted time."
      },
      description: 'Wrong Event Tapped',
      contact: [
        {"name": "Harsh Khandelwal", "phone": "9529993590"},
        {"name": "Omkar Wagholikar", "phone": "9604779804"}
      ],
      prizes: [
        {"1": "Sr. First Prize: Rs. 5000", "2": "Sr. Second Prize: Rs. 3000"},
        {"1": "Jr. First Prize: Rs. 5000", "2": "Jr. Second Prize: Rs. 3000"}
      ],
      datetime: [
      "Round 1 (Slot 1): 19th April 2024, 04:00 PM onwards",
      "Round 1 (Slot 2): 20th April 2024, 09:00 AM onwards",
      "Round 2: 21th April 2024, 11:30 AM to 1:30 PM"
      ],
    ),
    Event(
        id: 112,
        name: 'Xodia',
        structure: {
          "1":
              "It would be a single-round competition and matches will be held in a single-elimination format."
        },
        body:
            "Dive into the realm of bot development where participants craft bots, leveraging reinforcement learning techniques or algorithms, to compete head to head in an exhilarating gaming environment. Let the games begin!!",
        price: 50,
        imageUrl: 'assets/xodia.png',
        duration: '50',
        isTechnical: true,
        description: 'Wrong Event Tapped',
        rules: {
          "1":
              "The game environment for the competition would be 'Pocket Tanks'.",
          "2":
              "The details of the game environment will be released on the 12th April.",
          "3":
              "Participants have to build bots capable of competing against other bots in the provided game environment and submit them before the given deadline.",
          "4":
              "Participants can submit both RL (Reinforcement Learning) based as well as algorithmic bots.",
          "5":
              "The standard format of bot submission would be conveyed to participants.",
          "6":
              "The matches between bots will be conducted and streamed on the 14th April"
        },
        contact: [
          {"name": "Prem Gaikwad", "phone": "9823392274"},
          {"name": "Maheshwar Bhosale", "phone": "9067507393"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 5000", "2": "Second Prize: Rs. 3000"}
        ],
        datetime: [
       "Environment Release: 19th April",
      "Bot Submission: 19th and 20th April",
      "Matches: 21th April"
        ] // Set it as non-technical
        ),
    Event(
        name: 'DataWiz',
        structure: {"1": "Individual event"},
        price: 50,
        rules: {
          "1":
              "Fair Play: Uphold integrity by adhering to the rules and refrain from engaging in cheating or unethical behaviour.",
          "2":
              "Give Your Best: Demonstrate your skills and expertise by putting forth your utmost effort.",
          "3":
              "Enjoy the Journey: Embrace the competition, learn from the experience, and relish the opportunity to collaborate with others.",
          "4":
              "Respect Others: Show respect towards fellow participants, organisers, and the broader community.",
          "5":
              "Continuous Learning: Use this platform as a means to enhance your skills and knowledge in the field of data science.",
          "6":
              "Innovation Welcome: Encourage innovative solutions and creative approaches to problem-solving.",
          "7":
              "Support Each Other: Foster a supportive environment by assisting and collaborating with fellow participants whenever possible.",
          "8":
              "Celebrate Diversity: Embrace diversity and inclusivity within the data science community.",
          "9":
              "Stay Positive: Maintain a positive attitude, even in the face of challenges, and persevere towards success."
        },
        imageUrl: 'assets/datawiz.png',
        body:
            "DataWiz is an exhilarating event designed to test participants' proficiency in data analysis, machine learning, and artificial intelligence. It serves as a platform where participants are challenged to showcase their skills in handling real-world datasets and developing robust AI/ML models to derive meaningful insights.",
        duration: '230',
        isTechnical: true,
        description: 'Wrong Event Tapped',
        id: 104,
        contact: [
          {"name": "Prem Gaikwad", "phone": "9823392274"},
          {"name": "Mangesh Salunke", "phone": "9001589696"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 3000", "2": "Second Prize: Rs. 2000"}
        ],
        datetime: [
         "Start Time: 19th April 2024 00:00 IST",
      "End Time: 20th April 2024 23:59 IST"
        ]

        // Set it as technical
        ),
    Event(
        name: 'Web\nWeaver',
        body:
            "Ever wondered how GSOC and other Open-Source programs work? Register now for web-weaver to get a taste!",
        price: 75,
        imageUrl: 'assets/webweaver.png',
        duration: '30',
        isTechnical: true,
        id: 110,
        structure: {
          "1":
              "Round 1: It is the idea submission round. Participants need to submit the idea for way of approach using PPT or PDF for the given problem statements.",
          "2":
              "Round 2: It is the actual implementation of the problem statement. In the given time duration participants can submit their implementation to the given repo for the problem statement.",
          "3":
              "To View the problem statements, visit https://github.com/Credenz-Web-Weaver",
          "4": "Submit your ideas here. https://forms.gle/khmDuuHNbb2ioJ8g9"
        },
        rules: {
          "1": "Each team can consist of a maximum of 3 members.",
          "2":
              "For first round, participants need to submit their idea about the problem statement in PPT or PDF.",
          "3": "Use of ready-made templates is not allowed.",
          "4":
              "People opting for backend are supposed to build at least a minimalistic frontend to showcase their work."
        },
        description: 'Wrong Event Tapped',
        contact: [
          {"name": "Sarthak Phadnis", "phone": "9930611330"},
          {"name": "Shreya Bansod", "phone": "7972616766"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 3000", "2": "Second Prize: Rs. 2000"}
        ],
        datetime: [
         "To be announced."
        ] // Set it as non-technical
        ),
    Event(
        name: 'Cretonix',
        body:
            "Battle it out on the breadboard! Challenge your brains to clear a test where you demonstrate your knowledge in the field of core electronics, physics, logical ability and building a circuit by interpreting the hints provided.",
        price: 50,
        imageUrl: 'assets/cretronix.png',
        duration: '320',
        isTechnical: true,
        description: 'Wrong Event Tapped',
        structure: {
          "1": "There are 2 groups- Senior and junior",
          "2": "FE & SE - junior and TE & BE - senior",
          "3":
              "Round 1: It will consist of Multiple Choice Questions (MCQs) based on theoretical and practical concepts of electronics,embedded systems,microcontrollers,IOT,VLSI. There will be 30 questions for a time limit of 60 minutes. Domains and divided into groups",
          "4":
              "Round 2  : Participants will be given a problem statement and they are supposed to implement the circuit with the help of hardware components."
        },
        id: 109,
        rules: {
          "1": "Each team can consist of a maximum of 3 members.",
          "2": "Participants can use the given datasheets.",
          "3": " Use of Mobile is not allowed .",
          "4": "Use of a calculator is allowed . ",
          "5":
              "Participants are supposed to make a document which describes the proper working of the circuit."
        },
        contact: [
          {"name": "Nishant Deshpande", "phone": "7058009555"},
          {"name": "Roshan Behra Kumar", "phone": "8355990623"}
        ],
        prizes: [
          {"1": " First Prize: Rs. 3000", "2": " Second Prize: Rs. 2000"}
        ],
        datetime: [
          "Round 1 (Slot 1): 19th April 2024, 4:00 PM to 5:00 PM",
      "Round 2: 20th April 2024, 10:00 AM to 02:00 PM"
        ] // Set it as technical
        ),

    Event(
        id: 101,
        name: 'Clash',
        price: 50,
        imageUrl: 'assets/Clash.png',
        duration: '30',
        isTechnical: true,
        body:
            "Put your logical acumen and coding expertise to the test as you clash with a round of perplexing MCQs followed by a set of time-bound coding challenges,carefully designed to assess your command over programming in the language of your choice- Python, C or C++. Showcase your technical proficiency as you have a go at competitive coding with plenty to learn and nothing to lose.",
        rules: {
          "1":
              "Contenders are not allowed to use multiple smart devices while solving the test and it would be considered as malpractice if Caught ",
          "2":
              "Teams or players are not allowed to use any IDE or software once the game has started.",
          "3":
              "You are not allowed to switch tabs or close the browser during the game. If you do so, you will be logged out automatically.",
          "4":
              "Multiple Device Logins from same account are strictly prohibited"
        },
        structure: {
          "1":
              "Round-1: A 28 minute round of MCQs for individuals as well as a team(max 2 people) contenders  based on coding concepts in C/C++, Java and python, divided into Juniors and Seniors category. Juniors including F.E’s and S.E's, seniors including T.E’s and B.E’s  where you would also be provided with 3 boonful lifelines(description will be provided in the game itself) and the marking scheme would be as follows:- The primary marks allotted are +4 if answered correctly and -2 if the answer for a particular question is incorrect. If a question attempted is incorrect, then from the next question +2 marks are allotted for each correctly answered question, else -1 until you get a correct answer for upcoming questions.",
          "2":
              "Round-2: A 2 hour long round where each team or individuals have to solve 6-8 core competitive coding questions. Questions would be a blend of Data-Structures and Algorithms and mind bending Competitive programming Questions which the contenders would have to solve and pave their path to victory. Note: Junior level questions would be comparatively a little less challenging than the Senior level. Languges allowed to code are C/C++, Java and Python. Judging for round 2 will be based on the time and space efficiency of your code to solve the given challenges in restricted time."
        },
        description: 'Wrong Event Tapped',
        contact: [
          {"name": "Prasad Khatake", "phone": "8767039196"},
          {"name": "Animesh Jain", "phone": "7385170022"}
        ],
        prizes: [
          {"1": "Sr. First Prize: Rs. 5000", "2": "Sr. Second Prize: Rs. 3000"},
          {"1": "Jr. First Prize: Rs. 5000", "2": "Jr. Second Prize: Rs. 3000"}
        ],
        datetime: [
              "Round 1 (Slot 1): 19th April 2024, 4:00 PM onwards",
      "Round 1 (Slot 2): 20th April 2024, 10:00 AM to 6:00 PM",
      "Round 2: 21th April 2024, 9:15 AM to 11:15 PM"
        ]),
    Event(
        id: 103,
        name: 'NTH',
        price: 0,
        imageUrl: 'assets/nth.png',
        duration: '30',
        isTechnical: false,
        body:
            "Network Treasure Hunt is an online Treasure Hunt played across the globe. Read between the lines, find the hidden clues and connect the dots. You can use every tool at your disposal. Even with Google and Wikipedia by your side, it's going to be fun and challenging.",
        rules: {
          "1":
              "The questions in this contest have clues and hints in form of images, video, GIFs, audio, and text.",
          "2":
              "A user can submit their answer after 'question/' in the url by replacing put_your_answer_here, the answer shouldn't contain any spaces.",
          "3":
              "A correct answer will direct the user to the next question while an incorrect answer will redirect the user to the same question as before.",
          "4": "Top scorers will be visible on a dynamic leaderboard.",
          "5":
              "Additionally, a user will be awarded keys after solving a question and free keys will be awarded to active users after a certain duration of time.",
          "6":
              "Keys can be used to claim extra hints for questions further in the hunt.",
          "7":
              "The cost of the extra hint will be the ceiling function of 1.5 times the level of the current question.",
          "8":
              "A user can claim only 1 extra hint per question, so use this facility wisely.",
          "9":
              "After the 24-hour hunt, the one on the top of the leaderboard wins!",
          "10":
              "The winner will be declared once and there will be no change in our decision. Furthermore, users should play with one account only."
        },
        structure: {
          "1":
              "Channel your inner Wednesday Addams to solve this great mystery of PISB's very own Nevermore Academy"
        },
        description: 'Your Hint is:19',
        contact: [
          {"name": "Karan Mundhada", "phone": "8080792381"},
          {"name": "Kshitij Dhapse", "phone": "9145299114"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 5000", "2": "Second Prize: Rs. 3000"}
        ],
        datetime: [
         "Start Time: 13th April 9:00 PM",
      "End Time: 14th April 9:00 PM"
        ]),
            Event(
        id: 111,
        name: 'Roboliga',
        price: 200,
        imageUrl: 'assets/roboliga.png',
        duration: '30',
        isTechnical: false,
        description: 'Wrong Event Tapped',
        structure: {
          "1": "Match :",
          "2":
              "The duration of each match will be 8 minutes (i.e. two halves, each of 4 minutes duration). A 30- seconds break will be given after half time during which the teams will be allowed to attend to their robots.",
          "3":
              "Each match will be a one-on-one match between two similar teams selected randomly. For scoring system, refer to the scoring section.",
          "4":
              "The team with the highest number of points is the winner of the match. In case of a tie, a penalty shootout will be held, details of which will be announced at the time of the event.",
          "5":
              "The field will be subjected to changes after the elimination rounds. The field design for final rounds will be revealed on the website before the final rounds.",
          "6": "The tournament will be either Leagues and Playoffs.",
          "7": "League games won't be knockout games.",
          "8":
              "In final rounds, matches will be one-on-one with a scoring system as described below.",
          "9": "Scoring :",
          "10": "A. Elimination round :",
          "11": "1. Goal from inner circle : +20 points",
          "12": "2. Goal from between inner circle and half line : +40 points",
          "13": "3. Goal from beyond half line : +60 points",
          "14": "4. Yellow Card : Points will be deducted on conceding a foul",
          "15": "5. Red Card : Red Card will lead to disqualification of team",
          "16": "Note: This may change at the time of the event",
          "17": "B. Final round :",
          "18": "To be declared on the website after elimination round."
        },
        body:
            "For those passionate about robotics and seeking an adrenaline-fueled challenge, an exciting event awaits. Bring your innovative creations and football skills to the field, where competitors will engage in a thrilling showdown for supremacy. Prepare to be amazed as bots showcase remarkable speed, agility, and strategic prowess in their quest for victory.",
        rules: {
          "1":
              "A maximum of 3 candidates pursuing undergraduate program in their institution are allowed per team.",
          "2":
              "There should be no intentional damage done to the other robot by means of attacking wires, wheels, motors etc. ",
          "3":
              "Any damage to the field or to the opposing robot would result in immediate disqualification of the team.",
          "4": "There could be more than one team from same college.",
          "5": "The bot should fit the bot limitation criteria.",
          "6":
              "Teams can register at the desk put up in various colleges in and around Pune.",
          "7":
              "Teams can also register at the registration desk on the day of the event, at least an hour prior to the event.",
          "8":
              "All the participants should bring valid I-cards while coming for the contest. No one without I-card will be allowed for the contest and the team will be disqualified. The participants should carry the same at all times.",
          "9":
              "\n   Robot Limitations: \n\t\t\t\t\n1. Maximum robot dimensions: 30cm x 30 cm x 30 cm.\n\t\t\t\t\n2. Maximum weight 3.5 kg.\n\t\t\t\t\n3. Power specifications: Max Voltage: 12V (Normal Operation). Participating teams have to bring their own batteries sufficiently enough to play all day.\n\t\t\t\t\n4. The robot cannot split into two independent parts.\n\t\t\t\t\n5. Robot should be manually controlled(wireless connection) or automatic.\n\t\t\t\t\n6. No weapons (blades, spikes) of any kind are to be attached onto the robot.\n\t\t\t\t\n7. The participants are allowed to use any number of actuators.\n\t\t\t\t\n8. One robot can't be shared between two teams for any reason.\n\t\t\t",
          "10":
              "\n Judging Criteria: \n\t\t\t\t\n1. A yellow card will be flashed on each hand touch after the first one. A maximum of three such cards will add up to a red card i.e. Disqualification.\n\t\t\t\t\n2. Organizers have the authority to disqualify any team for misconduct or disorderly behaviour. This team would not be allowed to re-register.\n\t\t\t\t\n3. Organizers reserve the rights to make changes to the field design at any time without prior notification. Participants are requested to refer to the website regularly for any such changes.\n\t\t\t\t\n4. Organizers' decisions will be final and binding to all.\n\t\t\t"
        },
        contact: [
          {"name": "Chinmay Dixit", "phone": "8605288723"},
          {"name": "Shruti Shinde", "phone": "9309021275"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 8000", "2": "Second Prize: Rs. 6000"}
        ],
        datetime: [
           "All matches: 19th April 2024, 11:00 AM to 7:00 PM",
      "Semi-finals and Finals: 20th April 2024, 11:00 PM to 3:00 PM"
        ]),
    Event(
        name: 'Wall\nStreet',
        price: 50,
        imageUrl: "assets/wallstreet.png",
        duration: '2:00',
        isTechnical: false,
        description: 'Wrong Event Tapped',
        body:
            "'The stock market is a device for transferring money from the impatient to the patient.' - Warren Buffett Interested in learning about the stock market and improving your investment skills? Well you are in luck, as we bring you, 'Wall Street'",
        structure: {
          "1":
              "Wall Street is a virtual Stock Market where you'll get the chance to simulate investing in the stock market and see how your choices stack up against others. With no real money on the line, you can experiment with different strategies and learn from your successes and failures."
        },
        rules: {
          "1":
              "Each participant will be provided with a unique ID and password to log on the Wallstreet website and start playing.He/She is expected to buy stocks and subscribe to IPOs using the cash amount.",
          "2":
              "IPOs will be floated every day before start of the actual trading days to which participants can subscribe. ",
          "3":
              "IPO allocation will be visible on the first day of actual trading and will be done on a first come first serve basis. So keep an eye on our social media handles for constant updates.",
          "4":
              "As soon as the market opens at 9:00 AM on the first day, participant can see all the stocks along with their listing price.",
          "5":
              "The market will be up from 9:00 AM to 3:00 PM for 3 days.This period is defined as 'day' henceforth in the document.",
          "6":
              "Any buy bid or sell ask can be made within a margin of ±2% of the current share price.For ex,if the current market price of a share is Rs.100/-,a buy or sell bid can be made from any range between Rs. 98/- Rs.102/-",
          "7":
              "The Ranking of the user is decided using a 'Valuation Formula'.Valuation of the user will be 60% of his total asset value in Shares acquired (according to current market prices) + 40% of the cash balance in his account.This total will be termed as the valuation amount.",
          "8": "Participants can be disqualified for MALPRACTICES.",
          "9":
              "News regarding the listed companies would be displayed 15 minutes"
        },
        id: 104,
        contact: [
          {"name": "Abhishek Bhosale", "phone": "8446165714"},
          {"name": "Maheshwar Bhosale", "phone": "9067507393"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 5000", "2": "Second Prize: Rs. 3000"}
        ],
        datetime: [
        "IPO release: From 16th April",
      "Trading: 19th-20th April 2024, 9:00 AM to 3:00 PM"
        ]

        // Set it as technical
        ),
    Event(
      id: 105,
      name: 'B-Plan',
      price: 70,
      imageUrl: 'assets/bplan.png',
      duration: '30',
      isTechnical: false,
      description: 'Wrong Event Tapped',
      rules: {
        "1":
            "Participants are not allowed to use Smart Gadgets and Mobile Phones during the event.",
        "2":
            "Participants should report 20 minutes earlier than the given time.",
        "3": "Any Malpractices can direct lead to disqualification."
      },
      structure: {
        "1":
            "Aptitude testing: Round-1 is aptitude round will contain questions based on data interpretation and basic aptitude with a business flavor in it followed by stock and share market.",
        "2":
            "Auction Round: Qualified participants will be asked to bring three more members to form a team of 4. Every team will be given an equal budget and with excellent decision-making and analysis, you have to buy Companies. Teams will be shortlisted according to the addition of Company ratings for the next round.",
        "3":
            "Shark Tank Round:Qualified teams will be given random pitches and they have to pitch in front of real sharks who will judge your pitching skills to decide the winner team."
      },
      datetime: [
     "Round 1: 19th April 2024, 01:00 PM to 3:00 PM",
      "Round 2: 20th April 2024, 04:00 PM to 07:00 PM",
      "Round 3: 21th April 2024, 11:30 AM to 2.30 PM"
      ],
      prizes: [
        {"1": "First Prize: Rs. 5000", "2": "Second Prize: Rs. 3000"}
      ],
      contact: [
        {"name": "Pranav Bhiungade", "phone": "+91 82620 56084"},
        {"name": "Prem Deshmukh", "phone": "+91 70204 04591"},
        {"name": "Vishal Bhokre", "phone": "+91 70204 04591"}
      ],
      body:
          "Put your logical, aptitude and business knowledge and analyzing expertise to crack some time-bound challenges. Showcase your communication skills through presentations and ideation. Showcase strong decision-making skills at crucial timings.",
      // Set it as non-technical
    ),
    Event(
        id: 106,
        name: 'Enigma',
        structure: {
          "1":
              "Enigma is a logical reasoning based questionnaire, which will test your aptitude, thinking capability, response time and mental ability. Get ready to put your Grey Cells to work!"
        },
        rules: {
          "1":
              "Electronic gadgets (phones, calculators, smart watches) are prohibited.",
          "2": "The first round is a 30 min aptitude test.",
          "3":
              "The second round will consist of a two-hour descriptive logical reasoning interview.",
          "4":
              "Enigma Wildcard is conducted specially for PICT students whose winners are directly promoted to Round 2 of the event free of cost."
        },
        body:
            "Are you diligent enough to face the mind-boggling questions which will push your logical reasoning to its limits? Then do not miss this amazing opportunity.",
        price: 50,
        imageUrl: 'assets/enigma.png',
        duration: '130',
        isTechnical: false,
       description: 'Wrong Event Tapped',
        contact: [
          {"name": "Renuka Dad", "phone": "+91 99759 10877"},
          {"name": "Pratik Walale", "phone": "+91 94226 22709"},
          {"name": "Ansh Bhutada", "phone": "+91 81490 76503"}
        ],
        prizes: [
          {"1": "First Prize: Rs. 3000", "2": "Second Prize: Rs. 2000"}
        ],
        datetime: [
             "Round 1 (Slot 1): 19th April 2024, 4:30 PM to 06:00 PM",
      "Round 2: 20th April 2024, 05:00 PM to 07:00 PM"
        ]
// Set it as non-technical
        ),
    Event(
        id: 108,
        body:
            "Dive into a whirlwind of knowledge with Quizillionaire! It is a completely offline event ! Journey through eclectic questions spanning bollywood/hollywood to sports, from Shakespeare to business gurus. Led by a charismatic quiz master, embark on three rounds of mind-bending quizzes, from general knowledge to current affairs, sports, memes, movies, and entertainment.The grand finale awaits with a Kaun Banega Crorepati format round ! Flex your IQ and compete for glory !",
        name: 'Quizillionaire',
        price: 50,
        imageUrl: 'assets/quizillionaire.png',
        duration: '30',
        isTechnical: false,
       description: 'Wrong Event Tapped',
        structure: {
          "1": "Round 1: Menti meter round",
          "2": "Round 2:n•Buzzer round",
          "3": "Round 3: KBC(Kaun Banega Crorepati Round)"
        },
        rules: {
          "1":
              "Candidate pursuing an undergraduate program at any institute is allowed to participate.",
          "2":
              " Participants are encouraged to maintain a copy of their ID card.",
          "3":
              "Participants can register online on the official Credenz website.",
          "4": "Each team will have a maximum of two participants.",
          "5":
              "Marking scheme and other rules will be announced on the day of the event itself.",
          "6":
              "Enjoy the Journey: Embrace the competition, learn from the experience, and relish the opportunity to collaborate with others."
        },
        contact: [
          {"name": "Jeeya Shah", "phone": "+91 98340 56254"},
          {"name": "Mitra Barve", "phone": "+91 94223 14442"}
        ],
        prizes: [
          {"1": "To Be Declared"}
        ],
        datetime: [
              "Start Time: 19th April 2024",
      "End Time: 20th April 2024"
        ]),

  ];
}
