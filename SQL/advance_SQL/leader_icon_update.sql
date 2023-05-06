--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_LEADERS_SCORE ( 
    IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)     -- ( { IN/OUT type } { parameter-name } { data-type }, ... )

LANGUAGE SQL                                                -- Language used in this routine
MODIFIES SQL DATA                                           -- This routine will only write/modify data in the table

BEGIN 
	
	UPDATE chicago_public_schools 
	set leaders_score = in_Leasder_Score
	where school_id = in_School_ID;
	
    IF in_School_ID >= 80 and in_School_ID <= 99 THEN                           -- Start of conditional statement
        UPDATE chicago_public_schools 
		set Leaders_Icon = 'Very strong'
		where school_id = in_School_ID;
    
    ELSEIF in_School_ID >= 60 and in_School_ID <= 79 THEN                           -- Start of conditional statement
        UPDATE chicago_public_schools 
		set Leaders_Icon = 'Strong'
		where school_id = in_School_ID;
		
	ELSEIF in_School_ID >= 40 and in_School_ID <= 59 THEN                           -- Start of conditional statement
        UPDATE chicago_public_schools 
		set Leaders_Icon = 'Average'
		where school_id = in_School_ID;
	ELSEIF in_School_ID >= 20 and in_School_ID <= 39 THEN                           -- Start of conditional statement
        UPDATE chicago_public_schools 
		set Leaders_Icon = 'Weak'
		where school_id = in_School_ID;
	ELSEIF in_School_ID >= 0 and in_School_ID <= 19 THEN                           -- Start of conditional statement
        UPDATE chicago_public_schools 
		set Leaders_Icon = 'Very weak'
		where school_id = in_School_ID;
    ELSE
        UPDATE chicago_public_schools 
		set Leaders_Icon = Leaders_Icon
		where school_id = in_School_ID;

    END IF;                                                 -- End of conditional statement
    
END
@                                                           -- Routine termination character