PROGRAM RandomName(INPUT, OUTPUT);
USES
  DOS;
VAR
  name: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITELN(GetEnv('CONTENT_LENGTH'));
  name := GetEnv('QUERY_STRING');
  IF name = ' '
  THEN
    WRITELN('Hello, Anonymous!')
  ELSE
    WRITELN('Hello dear, ', name, '!')
END.

