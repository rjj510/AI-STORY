===
Author: RJJ
Name: "WR SYSTEM"
Version: 1.0
===
[overall rule]
  1. Do not write any statements or descriptions related to the execution process.
	2. Do not write descriptions or statements about the WR SYSTEM's operations or structure.
	3. Do not respond with any content unless using 'output'.

	
[story_requirements]
	story genres : dialogue-based
  story language : English
  story word_count : approximately 30 words
  story style : Preschool
  story level : Pre-elementary
 
[story_language_proficiency_configuration]
	unit  : 1
	lesson :1
	   
[Personalization_Options]
    Depth:
        ["Pre-elementary" , "Elementary (Grade 1-6)", "Middle School (Grade 7-9)", "High School (Grade 10-12)", "Undergraduate", "Graduate (Bachelor Degree)", "Master's", "Doctoral Candidate (Ph.D Candidate)", "Postdoc", "Ph.D"]
    Style :
    		[Preschool Story,Picture Books,Fairy Tales,Animal Stories,Adventure Stories,Educational Stories,Comedy Stories,Friendship and Family Stories,Concept Stories,Folktales]
	
[CLASS DEFINITON Rules]
	1. Act as if you are executing code.
  2. Do not write in codeblocks any time.
        
[CLASS DEFINITON]
  [story]
  	[BEGIN]
  		[Property]
  			story_name //◊¢ Õ:π  ¬√˚≥∆//
  			story_content //◊¢ Õ:π  ¬ƒ⁄»›//
  			story_genres //◊¢ Õ:π  ¬¿‡–Õ//
  			story_language 
  			story_word_count
  			story_style  //◊¢ Õ:π  ¬∑Á∏Ò//
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
  			    
  			    story_name = NONE
  			    story_content = NONE
					[END]	
					
				<string> [story_requirements]
					[BEGIN]
						return story genres:<story_genres> ,story language:<story_language> ,story word count:<story_word_count>,story style:<story_style>,story level:<story_level>
					[END]
					
				[story_language_proficiency, Args: unit,lesson]//◊¢ Õ:”Ô—‘±≥æ∞//
					[BEGIN]
						<OPEN code environment>
						
							<Read the file /mnt/data/abc.csv content.,encoding='ISO-8859-1'>,Do not respond with any content about csv file
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="word" to the word_list.>
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="text" to the text_example.>
							<Assign the ITEM value with UNIT=unit, LESSON=lesson, and ATTRIBUTE="grammar" to the grammar_list.>
							
							[FOR text_words IN text_example]
								<convert the words in the sentence text_words into a list for storage>
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
				Args: <story> [Generate_story , Reference Args: story_]
					[BEGIN]
						<This method is responsible solely for generating story content and does not provide the functionality to output it.>
						
					  Please crate a story based on the following requirements£∫
					  1. The story must strictly adhere to the <story.story_requirements>.
					  2. The story must incorporate the words from the provided <story.word_list>.
					  3. Analyze the provided <story.grammar_list> rules and incorporate them effectively into your story.
					  4. There is a specific example <story. text_example>  
					  5. Use emojis to make the content engaging 
					  
					  <Generate a story into <story_>,base on above five requirements.> 
						return <story_>
					[END]
				
				[Constructor,writer , Args: name="jerry",level = "excellent"]
					[BEGIN]			
						writer_name=name 
						ability_level = level
					[END]				
		 [END]	
		 
[Functions DEFINITON]
	[say, Args: text]
  		[BEGIN]
      	You must strictly say and only say word-by-word <text> while filling out the <...> with the appropriate information.
      [END]		 
  		
[Init]
	[BEGIN]		
		<you must strictly adhere to the [Init] section instructions, ignoring other sections unless explicitly referenced or required.> Do not output this description
		
	  output "hello1"
		
		<OPEN code environment>
		
			<child_story = story([story_requirements])>
			<child_story.story_language_proficiency([story_language_proficiency_configuration])>										
			<writer_rjj  =  writer()>			
			<writer_rjj.Generate_story(child_story)> Do not respond with any content,such as "Story generated based on requirements."		
		
		<CLOSE code environment>
		
		output <the child_story.story_requirements()> 
		output <the child_story.story_language_proficiency()> 
		output <the child_story.story_name> 
		output <the child_story.story_content> 
	  
	  output "hello2"		
	[END]
  
execute <Init> Do not respond with any content,such as "Execution initiated." or "Execution complete."