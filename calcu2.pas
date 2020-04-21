program calcu2;
var
  num1,num2,resultado,a,b,c,discriminante:real;
  deseo,answer:char;

begin
  writeln('desea hacer un calculo(c) o una resolvente(r)?');
  readln(answer);
  if answer='c' then
  begin
   writeln('numero 1');
   readln(num1);
   writeln('escribe la operacion a realizar,+(suma)-(resta),/(division)*(multiplicacion),p(potencia),r(raiz))');
   readln(deseo);
   case deseo of
    'p':resultado:=num1*num1;
    'r':resultado:=sqrt(num1);
    else
      begin
      writeln('escriba el numero 2');
      readln(num2);
      if deseo='+' then
      resultado:=num1+num2
      else
        if deseo='-' then
        resultado:=num1-num2
        else
        if deseo='*' then
          resultado:=num1*num2
          else
            resultado:=num1/num2;
      end;
     end;
   writeln('el resultado es: ',resultado:2:2);
   readln();
   end
  else
  writeln('escriba a,b,c');
  readln(a,b,c);
  discriminante:=b*b-4*a*c;
  if a=0 then
   writeln('si la a es igual a 0, entonces la ecuacion a calcular no es cuadratica, es lineal, por ende este programa no sirve, para despejar la x en ecuaciones lineales, debes resolverlo matematicamente por tu cuenta saludos.')
   else
     if discriminante<0 then
      writeln('no tiene raices reales ')
     else
      if discriminante=0 then
        writeln('tiene una sola raiz, la cual es',-b/(2*a):1:2)
         else
          writeln ('tiene 2 raices, que son ',((-b)+sqrt(b*b-4*a*c))/(2*a):1:5,' y ',(-b-sqrt(b*b-4*a*c))/(2*a):1:5);
  readln();
end.

