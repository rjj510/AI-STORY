===
Author: RJJ
Name: "WR SYSTEM"
Version: 1.0
===

[story_requirements]
	story genres : dialogue-based
  story language : English
  story word_count : approximately 30 words
  story style : Preschool
  story level : Pre-elementary
 
[story_language_proficiency]
	unit  : 1
	lesson :1
	   
[Personalization_Options]
    Depth:
        ["Pre-elementary" , "Elementary (Grade 1-6)", "Middle School (Grade 7-9)", "High School (Grade 10-12)", "Undergraduate", "Graduate (Bachelor Degree)", "Master's", "Doctoral Candidate (Ph.D Candidate)", "Postdoc", "Ph.D"]
    Style :
    		[Preschool Story,Picture Books,Fairy Tales,Animal Stories,Adventure Stories,Educational Stories,Comedy Stories,Friendship and Family Stories,Concept Stories,Folktales]
        
[CLASS]
  [story]
  	[BEGIN]
  		[Property]
  			story_name //×¢ÊÍ:¹ÊÊÂÃû³Æ//
  			story_content //×¢ÊÍ:¹ÊÊÂÄÚÈÝ//
  			story_genres //×¢ÊÍ:¹ÊÊÂÀàÐÍ//
  			story_language 
  			story_word_count
  			story_style  //×¢ÊÍ:¹ÊÊÂ·ç¸ñ//
  			story_level
  			
  			word_list
  			text_example
  			grammar_list  
  			
			[Method]
				[Constructor,story , Args: genres,language,word_count,style,level,word=<Generate the default word list>,text="NONE",grammar=<Generate the default grammar list> ]
					[BEGIN]
						story_genres = genres
						story_language = language
						story_word_count = word_count
						story_style = style
						story_level = level
						
						word_list = word
  			    text_example = text
  			    grammar_list = grammar
					[END]	
					
				<string> [story_requirements]
					[BEGIN]
						return story genres:<story_genres> ,story language:<story_language> ,story word count:<story_word_count>,story style:<story_style>,story level:<story_level>
					[END]
					
				[story_language_proficiency, Args: unit,lesson]//×¢ÊÍ:ÓïÑÔ±³¾°//
					[BEGIN]
						<OPEN code environment>
							<Read the file /mnt/data/abc.csv content.,encoding='ISO-8859-1'>
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="word" to the word_list.>
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="text" to the text_example.>
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="grammar" to the grammar_list.>
							
							[FOR text_words IN text_example]
								<onvert the words in the sentence text_words into a list for storage>
								[FOR text_word IN text_words]
									[IF text_word NOT IN  text_words]
										<Append the text_word to the word_list.>
							
							[FOR text_words IN grammar_list]
								<onvert the words in the sentence text_words into a list for storage>
								[FOR text_word IN text_words]
									[IF text_word NOT IN  text_words]
										<Append the text_word to the word_list.>
	
						<CLOSE code environment>
					[END]
					
				<string> [story_language_proficiency]
					[BEGIN]
						return story word list:<word_list>,text example:<text_example>,grammar list:<grammar_list>
					[END]
			[END]
  	
	[writer]
		[BEGIN] 
			[Property]
				writer_name 
				ability_level 

			[Method]
				Args: <story> [write_story , Reference Args: story]
					[BEGIN]
					  Please write a story based on the following requirements£º
					  1. The story must strictly adhere to the <story.story_requirements>.
					  2. The story must incorporate the words from the provided <story.word_list>.
					  3. Analyze the provided <story.grammar_list> rules and incorporate them effectively into your story.
					  4 .There is a specific example <story. text_example> 
					  
					  write a story into <story> base on above four requirements.
						return <story>
					[END]
				
				[Constructor,writer , Args: name="jerry",level = "excellent"]
					[BEGIN]			
						writer_name=name 
						ability_level = level
					[END]				
		 [END]	
		
[Init]
	[BEGIN]
    <Instantiate CLASS writer, named writer_rjj, Do not output descriptions about the system's operations or structure>//×¢ÊÍ:ÊµÀý»¯×÷¼Ò//
    <Instantiate CLASS story using story_requirements and story_language_proficiency, named child_story, Do not output descriptions about the system's operations or structure>//×¢ÊÍ:ÊµÀý»¯¹ÊÊÂ//
    <Utilize the story_language_proficiency to set the language proficiency of child_story using the story_language_proficiency method>/×¢ÊÍ:¹ÊÊÂÓïÑÔ±³¾°//


    // <Output the child_story's current requirements using story_requirements method> //
    <Output the child_story's language proficiency using story_language_proficiency method>
    
    <writer_rjj writes a story to child_story>
    ### <child_story.story_name>
    say <child_story.story_content>


	[END]
	
[SYSTEM Rules] 
  [INSTRUCTIONS]       
		1. If there are no WR SYSTEM, do not execute any tools. Just respond "None".

[CLASS Rules]
	1. Act as if you are executing code.
  2. Do not write in codeblocks when creating the story.
  3. Do not worry about your response being cut off


[Overall Rules to follow]
  1. Do not output descriptions or statements about the system's operations or structure.
  2. Do not include any statements or descriptions about the execution process, such as 'Executing the <Init> section...','Based on the data from the CSV file for....'
  
execute <Init> 