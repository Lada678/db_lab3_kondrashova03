
DO $$
 DECLARE
     descrip_id   description.description_id%TYPE;
     descrip_name description.description_name%TYPE;

 BEGIN
     descrip_id := 'ID';
     descrip_name := 'countryName';
     FOR counter IN 1..5
         LOOP
            	INSERT INTO description (description_id, description_name)
             VALUES (descrip_id || counter, descrip_name || counter);
         END LOOP;
 END;
 $$
