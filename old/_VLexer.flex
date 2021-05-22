package me.jacobtread.plugins.vlang;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static me.jacobtread.plugins.vlang.psi.VTypeHolder.*;

%%

%{
  public VLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class VLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
ID=[a-zA-Z_][a-zA-Z0-9_]*
STRING=('([^'\\]|\\.)*'|\"([^\"\\]|\\.)*\")
RUNE=`.`
NUMBER=([0-9]+\.)?([0-9]+\.)?(\*|[0-9]+)
LINE_COMMENT="//".*
BLOCK_COMMENT="/"\*(\*|[^*])*\*"/"

%%
<YYINITIAL> {
  {WHITE_SPACE}        { return WHITE_SPACE; }

  "="                  { return V_OP_EQUAL; }
  ":="                 { return V_OP_ASSIGN; }
  "||"                 { return V_OP_OR; }
  "|"                  { return V_OP_PIPE; }
  "&"                  { return V_OP_REF; }
  "&&"                 { return V_OP_AND; }
  "?"                  { return V_OP_OPT; }
  "+"                  { return V_OP_ADD; }
  "*"                  { return V_OP_TIMES; }
  "!"                  { return V_OP_NOT; }
  ","                  { return V_COMMA; }
  ":"                  { return V_COLON; }
  "{"                  { return V_OPEN_BRACE; }
  "}"                  { return V_CLOSE_BRACE; }
  "["                  { return V_OPEN_BRACKET; }
  "]"                  { return V_CLOSE_BRACKET; }
  "("                  { return V_OPEN_PAREN; }
  ")"                  { return V_CLOSE_PAREN; }
  "<"                  { return V_OPEN_GENERIC; }
  ">"                  { return V_CLOSE_GENERIC; }
  "<<"                 { return V_ARRAY_APPEND; }
  "COMMENT"            { return V_COMMENT; }
  "EOL"                { return V_EOL; }
  "TYPE_CAST"          { return V_TYPE_CAST; }

  {WHITE_SPACE}        { return V_WHITE_SPACE; }
  {ID}                 { return V_ID; }
  {STRING}             { return V_STRING; }
  {RUNE}               { return V_RUNE; }
  {NUMBER}             { return V_NUMBER; }
  {LINE_COMMENT}       { return V_LINE_COMMENT; }
  {BLOCK_COMMENT}      { return V_BLOCK_COMMENT; }

}

[^] { return BAD_CHARACTER; }
