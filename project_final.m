img = imread('sample_text.png');
img = rgb2gray(img);
img = adapthisteq(img);
img = imadjust(img,stretchlim(img),[]);
thresh = graythresh(img) * 256;
img_binary = img < thresh;
[labels, num] = bwlabel(img_binary);

% Captial
A=imread('capital\A.png');B=imread('capital\B.png');
C=imread('capital\C.png');D=imread('capital\D.png');
E=imread('capital\E.png');F=imread('capital\F.png');
G=imread('capital\G.png');H=imread('capital\H.png');
I=imread('capital\I.png');J=imread('capital\J.png');
K=imread('capital\K.png');L=imread('capital\L.png');
M=imread('capital\M.png');N=imread('capital\N.png');
O=imread('capital\O.png');P=imread('capital\P.png');
Q=imread('capital\Q.png');R=imread('capital\R.png');
S=imread('capital\S.png');T=imread('capital\T.png');
U=imread('capital\U.png');V=imread('capital\V.png');
W=imread('capital\W.png');X=imread('capital\X.png');
Y=imread('capital\Y.png');Z=imread('capital\Z.png');

% Small
a=imread('small\a.png');b=imread('small\b.png');
c=imread('small\c.png');d=imread('small\d.png');
e=imread('small\r.png');f=imread('small\f.png');
g=imread('small\g.png');h=imread('small\h.png');
i=imread('small\i.png');j=imread('small\j.png');
k=imread('small\k.png');l=imread('small\l.png');
m=imread('small\m.png');n=imread('small\n.png');
o=imread('small\o.png');p=imread('small\p.png');
q=imread('small\q.png');r=imread('small\r.png');
s=imread('small\s.png');t=imread('small\t.png');
u=imread('small\u.png');v=imread('small\v.png');
w=imread('small\w.png');x=imread('small\x.png');
y=imread('small\y.png');z=imread('small\z.png');

% digit
d1=imread('digit\d1.png');d2=imread('digit\d2.png');
d3=imread('digit\d3.png');d4=imread('digit\d4.png');
d5=imread('digit\d5.png');d6=imread('digit\d6.png');
d7=imread('digit\d7.png');d8=imread('digit\d8.png');
d9=imread('digit\d9.png');d0=imread('digit\d0.png');


character = [A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z d1 d2 d3 d4 d5 d6 d7 d8 d9 d0];
templates = mat2cell(character, 20, [20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20]);

char = input('Enter a character to find: ', 's');

count = 0;
char_index = 0;
if (char == 'A')
    char_index = 1;
elseif (char == 'B')
    char_index = 2;
elseif (char == 'C')
    char_index = 3;
elseif (char == 'D')
    char_index = 4;
elseif (char == 'E')
    char_index = 5;
elseif (char == 'F')
    char_index = 6;
elseif (char == 'G')
    char_index = 7;
elseif (char == 'H')
    char_index = 8;
elseif (char == 'I')
    char_index = 9;
elseif (char == 'J')
    char_index = 10;
elseif (char == 'K')
    char_index = 11;
elseif (char == 'L')
    char_index = 12;
elseif (char == 'M')
    char_index = 13;
elseif (char == 'N')
    char_index = 14;
elseif (char == 'O')
    char_index = 15;
elseif (char == 'P')
    char_index = 16;
elseif (char == 'Q')
    char_index = 17;
elseif (char == 'R')
    char_index = 18;
elseif (char == 'S')
    char_index = 19;
elseif (char == 'T')
    char_index = 20;
elseif (char == 'U')
    char_index = 21;
elseif (char == 'V')
    char_index = 22;
elseif (char == 'W')
    char_index = 23;
elseif (char == 'X')
    char_index = 24;
elseif (char == 'Y')
    char_index = 25;
elseif (char == 'Z')
    char_index = 26;
elseif (char == 'a')
    char_index = 27;
elseif (char == 'b')
    char_index = 28;
elseif (char == 'c')
    char_index = 29;
elseif (char == 'd')
    char_index = 30;
elseif (char == 'e')
    char_index = 31;
elseif (char == 'f')
    char_index = 32;
elseif (char == 'g')
    char_index = 33;
elseif (char == 'h')
    char_index = 34;
elseif (char == 'i')
    char_index = 35;
elseif (char == 'j')
    char_index = 36;
elseif (char == 'k')
    char_index = 37;
elseif (char == 'l')
    char_index = 38;
elseif (char == 'm')
    char_index = 39;
elseif (char == 'n')
    char_index = 40;
elseif (char == 'o')
    char_index = 41;
elseif (char == 'p')
    char_index = 42;
elseif (char == 'q')
    char_index = 43;
elseif (char == 'r')
    char_index = 44;
elseif (char == 's')
    char_index = 45;
elseif (char == 't')
    char_index = 46;
elseif (char == 'u')
    char_index = 47;
elseif (char == 'v')
    char_index = 48;
elseif (char == 'w')
    char_index = 49;
elseif (char == 'x')
    char_index = 50;
elseif (char == 'y')
    char_index = 51;
elseif (char == 'z')
    char_index = 52;
elseif (char == '1')
    char_index = 53;
elseif (char == '2')
    char_index = 54;
elseif (char == '3')
    char_index = 55;
elseif (char == '4')
    char_index = 56;
elseif (char == '5')
    char_index = 57;
elseif (char == '6')
    char_index = 58;
elseif (char == '7')
    char_index = 59;
elseif (char == '8')
    char_index = 60;
elseif (char == '9')
    char_index = 61;
elseif (char == '0')
    char_index = 62;
end

imshow(img);
hold on;
count = 0;
for i=1:1:num
    st = regionprops(labels);
    bb = st(i).BoundingBox;
    char_img = imcrop(img_binary,[bb(1),bb(2),bb(3),bb(4)]);
    char_img = imresize(char_img,[20 20]);
    
    cor = [];
    for j=1:1:62
        cor = [cor corr2(char_img,templates{1,j})];
    end
    m = max(cor);
    j = find(cor==m);
    
    if (j==char_index)
        count = count + 1;
        rectangle('Position', [bb(1),bb(2),bb(3),bb(4)],'EdgeColor','r','LineWidth',2 );
        hold on;
    end
end

disp(count)
