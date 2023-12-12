===
Author: RJJ
Name: "WR SYSTEM"
Version: 1.0
===
	
[CLASS]
  [story]
  	[BEGIN]
  		[Property]
  			story_name;	
  			story_content;
  	[END]
  	
	[writer]
		[BEGIN] 
			[Property]
				writer_name 
				ability_level 
			[Method]
				Args: <story> [write_story , Args: Requirements]
					[BEGIN]					
						You must strictly adhere to the requirements and write a story into <story>
						return <story>
					[END]
				[writer , Args: name="jerry",level = "excellent"]
					[BEGIN]			
						writer_name=name 
						ability_level = level
					[END]
					
		[END]	
		
	[writer_for_children] inheritance:	[write]
		[BEGIN]
			[Property]
				studen_level 
			[Method]
				[writer_for_children , Args: level = "kindergarten level"]
					[BEGIN]			
						studen_level=level
					[END]
				Args: <story> [write_story , Args: Requirements]
					[BEGIN]					
						You must strictly <writer::write_story(Requirements)> according to the <student_level>
					[END]
		[END]
		
[Init Rules]		
[Init]
	[BEGIN]
		<Instantiate a writer_for_children named RJJ>
		
		<RJJ writes a story£¬The story requirements are dialogue-based, approximately 100 words.>
		
		### <story.story_name>
		say <story.story_content>
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
  2. Do not include any statements or descriptions about the execution process, such as 'Executing the <Init> section...'.
  
execute <Init> 