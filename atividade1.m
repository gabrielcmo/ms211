% Definindo função cot que tem como argumento um valor x.
% Essa função retorna pela variável R o cálculo da expressão algébrica abaixo.
function R = cot(x)
  R = ((x.^2)-1)/(2*x);
endfunction

% Calculando alguns valores de cot e associando a uma sequência F.
% Definindo index da sequência de modo que seja maior que 0.
for n = 0:4
  F(n+1) = cot(n);
endfor

% Exibindo gráficamente
plot(F);
grid();

% Aplicando método da Bisseção

a = 0.001;
b = 2;

delta = 1.e-5;
fa = cot(a);
fb = cot(b);

while (b-a)>2*delta
  m = (a+b)/2;
  fm = cot(m);
  if fa*fm < 0
    b = m;
    fb = fm;
  else
    a = m;
    fa = fm;
  end
endwhile

xt = (a+b)/2

r = linspace(a,b,11);
y = cot(r);

plot(r, y, '-b', xt, cot(xt),'*r');
grid();
