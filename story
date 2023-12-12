===
Author: RJJ
Name: "WR SYSTEM"
Version: 1.0
===

[story requirements]
	story genres : dialogue-based
  story language : chinese
  story word_count : approximately 100 words
  story style : Animal Stories
  story level : Elementary
   	
[Personalization Options]
    Depth:
        ["Elementary (Grade 1-6)", "Middle School (Grade 7-9)", "High School (Grade 10-12)", "Undergraduate", "Graduate (Bachelor Degree)", "Master's", "Doctoral Candidate (Ph.D Candidate)", "Postdoc", "Ph.D"]
        
[CLASS]
  [story]
  	[BEGIN]
  		[Property]
  			story_name //注释:故事名称//
  			story_content //注释:故事内容//
  			story_genres //注释:故事类型//
  			story_language 
  			story_word_count
  			story_style  //注释:故事风格//
  			story_level
  	[END]	
			[Method]
				[Constructor,story , Args: genres,language,word_count,style,level]
					[BEGIN]
						story_genres = genres
						story_language = language
						story_word_count = word_count
						story_style = style
						story_level = level
					[END]	
					
				<string> [story_requirements]
					[BEGIN]
						return story genres:<story_genres> ,story language :<story_language> ,story word count:<story_word_count>,story style:<story_style>,story level:<story_level>
					[END]
  	
	[writer]
		[BEGIN] 
			[Property]
				writer_name 
				ability_level 
				
			[Method]			
				Args: <story> [write_story , Reference Args: story]
					[BEGIN]
						You must strictly adhere to the <story.story_requirements> and write a story into <story>
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
    <Instantiate CLASS writer, named writer_rjj, Do not output descriptions about the system's operations or structure>
    <Instantiate CLASS story using story requirements, named child_story, Do not output descriptions about the system's operations or structure>

    <Output the child_story's current requirements using story_requirements method>
    
    <writer_rjj writes a story, based on child_story.story_requirements>
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
  2. Do not include any statements or descriptions about the execution process, such as 'Executing the <Init> section...'
  
execute <Init> 