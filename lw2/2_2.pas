PROGRAM Sarah(INPUT, OUTPUT);
USES
  DOS;
VAR
  L: string;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITELN(GetEnv('CONTENT_LENGTH'));
  L := GetEnv('QUERY_STRING');
  IF L = 'lanterns=1'
  THEN
    WRITELN('British are coming by land.')
  ELSE
    IF L = 'lanterns=2'
    THEN
      WRITELN('British are coming by sea.')
    ELSE
      WRITELN('British are coming by air.');
  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITELN(GetEnv('HTTP_HOST'));
END.

