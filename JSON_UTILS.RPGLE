**free
ctl-opt nomain option(*srcstmt:*nodebugio);

// JSON helper procedures kept outside the orchestration program.
dcl-proc JsonBool export;
  dcl-pi *n varchar(5);
    flag ind const;
  end-pi;

  if flag;
    return 'true';
  endif;

  return 'false';
end-proc;

dcl-proc NormalizeIfsPath export;
  dcl-pi *n varchar(512);
    path varchar(512) const;
  end-pi;

  if %trim(path) = '';
    return '/home/LANUZACX/NovaSorc/glbln_recon.json';
  endif;

  return %trim(path);
end-proc;
