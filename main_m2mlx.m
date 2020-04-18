%% MATLABスクリプトからライブスクリプトへの変換
%
% Copyright (c) Shogo MURAMATSU, 2020
% All rights resereved

subDirs = [
    'ch01' ;
    ];

%
isVerbose = true;
for diridx = 1:size(subDirs,1)
    dname = subDirs(diridx,:);
    srcDir = ['./scripts/' dname '/'];
    dstDir = fullfile(pwd,['/livescripts/' dname '/']);
    % ファイルの取得
    list = ls([srcDir '*.m']);
    % ファイルの変換
    for fileidx = 1:size(list,1)
        % ファイル名の抽出
        [~,fname,~] = fileparts(list(fileidx,:));
        % ライブスクリプトへ変換
        msip.m2mlx(srcDir,fname,dstDir,isVerbose)
        % 変換後のスクリプトの内容
        %open(fullfile(dstDir,[fname '.mlx']))
    end
end