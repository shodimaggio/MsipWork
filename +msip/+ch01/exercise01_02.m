%% ���1.2�i���摜�̃f�[�^�ʁj
% ��������@�u�������M���E�摜�����̊�b�ƓW�J�v
% 
% ����m�F�F MATLAB R2017a
%% �t���[���̐���
%%
frame = ones(4320,7680,3,'uint8');
%% 1�t���[��������̗v�f���i��f���~�F�������j
%%
nS = numel(frame)
%% 1�t���[��������̃r�b�g��
%%
B = 8*nS
%% �r�b�g���[�g
%%
deltaT = 1/60;
R = B / deltaT