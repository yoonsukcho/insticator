USE insticator;

insert into websites 
(name, url, phone, email, is_active, modified_at) 
values 
('baseball magazine', 
 'www.baseballmagazine.com',
 '555-123-1234',  
 'contact@baseballmagazine.com', 
 true, 
 CURRENT_TIMESTAMP());
 
 
 insert into websites 
(name, url, phone, email, is_active, modified_at) 
values 
('daily football', 
 'www.dailyfootball.com',
 '555-111-11111',  
 'contacts@dailyfootball.com', 
 true, 
 CURRENT_TIMESTAMP());
 
  
 insert into websites 
(name, url, phone, email, is_active, modified_at) 
values 
('weekly basketball', 
 'www.weeklybasketball.com',
 '555-222-2222',  
 'contacts@weeklybasketball.com', 
 true, 
 CURRENT_TIMESTAMP());
 
 
 insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'Which player holds the record for most consecutive games played?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'Which of these teams has never won a championship?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'What jersey number did Wayne Gretzky wear?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Which legendary head coach is the Super Bowl trophy named after?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'Which country hosted the 2014 World Cup?', 1, CURRENT_TIMESTAMP());
 
 insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Which Big 4 team has the most championship wins with 27?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'Who was the first person inducted into the WWE Hall of Fame?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'Which conference includes the Duke Blue Devils?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Which of these football terms is not used to describe a score?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'The 1992 US Men''s Olympic team was given what nickname?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Which position is marked as ''1'' on an official scorecard?', 1, CURRENT_TIMESTAMP());
 

 insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'How many periods are there in a typical ice hockey game?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'What color jacket is given to the winner of the Masters Tournament?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'Pete Sampras never won which of the Grand Slam tournaments?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'What is the official term for delivering the ball to the batsman?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (2, 'Which country has won the most Rugby Union World Cups?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Who is the only NASCAR driver to ever win 200 races?', 1, CURRENT_TIMESTAMP());
 

 insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'Which Olympic athlete has won a combined total of 28 medals?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'Which player holds the record for most consecutive games played?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (3, 'Which school holds the record for most consecutive NCAA Men''s Basketball titles won with 7?', 1, CURRENT_TIMESTAMP());
 
  insert into questions 
 (site_id, content, type, modified_at)
 values
 (1, 'How many times has Germany won the World Cup (incl. West Germany)?', 1, CURRENT_TIMESTAMP());
 

 
 

insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(1, 1, 'Lou Gehrig', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(1, 2, 'Cal Ripken Jr.', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(1, 3, 'Pete Rose', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(1, 4, 'Stan Musial', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(2, 1, 'Indiana Pacers', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(2, 2, 'Milwaukee Bucks', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(2, 3, 'Houston Rockets', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(2, 4, 'New York Knicks', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(3, 1, '1', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(3, 2, '9', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(3, 3, '99', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(3, 4, '27', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(4, 1, 'Don Shula', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(4, 2, 'Paul Brown', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(4, 3, 'Vince Lombardi', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(4, 4, 'Tom Landry', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(5, 1, 'Spain', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(5, 2, 'Brazil ', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(5, 3, 'Germany', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(5, 4, 'Argentina', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(6, 1, 'Boston Celtics', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(6, 2, 'Montreal Canadiens', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(6, 3, 'New York Yankees', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(6, 4, 'Green Bay Packers', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(7, 1, 'Randy Savage', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(7, 2, 'Vince McMahon', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(7, 3, 'Andre the Giant', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(7, 4, 'Hulk Hogan', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(8, 1, 'Pac-12', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(8, 2, 'SEC', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(8, 3, 'Big 10', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(8, 4, 'ACC', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(9, 1, 'Safety', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(9, 2, 'Interception', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(9, 3, 'Field Goal', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(9, 4, 'Touchdown', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(10, 1, 'Wayne Rooney', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(10, 2, 'Frank Lampard', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(10, 3, 'Robbie Fowler', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(10, 4, 'Alan Shearer', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(11, 1, 'Super Group', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(11, 2, 'Hoop Legends', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(11, 3, 'Court Stars', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(11, 4, 'Dream Team', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(12, 1, 'Pitcher', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(12, 2, 'Catcher', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(12, 3, 'Left Field', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(12, 4, 'First Base', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(13, 1, '2', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(13, 2, '3', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(13, 3, '1', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(13, 4, '4', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(14, 1, 'Brown', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(14, 2, 'Green', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(14, 3, 'Gold', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(14, 4, 'Black', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(15, 1, 'Wimbledon', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(15, 2, 'Australian Open', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(15, 3, 'US Open', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(15, 4, 'French Open', 1, CURRENT_TIMESTAMP());



insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(17, 1, 'England', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(17, 2, 'France', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(17, 3, 'New Zealand', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(17, 4, 'Australia', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(18, 1, 'Jimmie Johnson', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(18, 2, 'Richard Petty', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(18, 3, 'Dale Earnhardt', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(18, 4, 'Jeff Gordon', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(16, 1, 'Hurling', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(16, 2, 'Bowling', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(16, 3, 'Pitching', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(16, 4, 'Flinging', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(19, 1, 'Usain Bolt', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(19, 2, 'Mark Spitz', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(19, 3, 'Michael Phelps', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(19, 4, 'Carl Lewis', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(20, 1, 'Kentucky', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(20, 2, 'Indiana', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(20, 3, 'UCLA', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(20, 4, 'North Carolina', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(21, 1, '2', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(21, 2, '4', 1, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(21, 3, '5', 0, CURRENT_TIMESTAMP());


insert into QuestionChoices 
(question_id, idx, content, is_Correct, modified_at)
values
(21, 4, '3', 0, CURRENT_TIMESTAMP());



ALTER TABLE questions
ADD FOREIGN KEY (site_id) REFERENCES websites(id);
 
 
ALTER TABLE questionattachments
ADD FOREIGN KEY (question_id) REFERENCES questions(id);
 
  
ALTER TABLE questionchoices
ADD FOREIGN KEY (question_id) REFERENCES questions(id);
 
   
ALTER TABLE trxanswers
ADD FOREIGN KEY (trx_Id) REFERENCES trxquestions(id);
 
 
 
 
