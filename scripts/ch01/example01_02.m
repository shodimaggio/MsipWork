%% 例1.2（標準基底による展開）
% 村松正吾　「多次元信号・画像処理の基礎と展開」
% 
% 動作確認： MATLAB R2017a
%% $2\times 3$ 配列の生成
%%
V = rand(2,3)
%% 各配列要素の抽出
%%
v0 = V(1,1)
v1 = V(2,1)
v2 = V(1,2)
v3 = V(2,2)
v4 = V(1,3)
v5 = V(2,3)
%% $2\times 3$配列の標準基底
%%
B0 = [ 1 0 0 ; 
       0 0 0 ]
   
B1 = [ 0 0 0 ; 
       1 0 0 ]
   
B2 = [ 0 1 0 ; 
       0 0 0 ]
   
B3 = [ 0 0 0 ; 
       0 1 0 ]
   
B4 = [ 0 0 1 ; 
       0 0 0 ]
   
B5 = [ 0 0 0 ; 
       0 0 1 ]
%% 標準基底による展開表現
%%
v0*B0 + v2*B2 + v4*B4  ...
    + v1*B1 + v3*B3 + v5*B5