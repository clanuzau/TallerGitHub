**free
ctl-opt nomain option(*srcstmt:*nodebugio);

// Data-layer helpers shared by reconciliation programs.
dcl-proc IsFilterAll export;
  dcl-pi *n ind;
    value varchar(256) const;
  end-pi;

  return %trim(value) = '' or %trim(value) = '*ALL';
end-proc;

dcl-proc InAccountRange export;
  dcl-pi *n ind;
    account varchar(24) const;
    accountFrom varchar(24) const;
    accountTo varchar(24) const;
  end-pi;

  if %trim(accountFrom) <> '' and %trim(account) < %trim(accountFrom);
    return *off;
  endif;

  if %trim(accountTo) <> '' and %trim(account) > %trim(accountTo);
    return *off;
  endif;

  return *on;
end-proc;
