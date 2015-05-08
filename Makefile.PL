#======================================================================
# Makefile Maker for LaTeXML-Plugin-secureio
# d.ginev@jacobs-university.de
#======================================================================
use ExtUtils::MakeMaker;
use strict;
use warnings;

use FindBin;

#======================================================================
# Use "perl Makefile.PL <options>"
#======================================================================
our @EXCLUSIONS=();
our $MORE_MACROS = {};
our $MORE_MAKERULES=''; 

WriteMakefile(
  NAME => 'LaTeXML::Plugin::secureio',
  AUTHOR => 'Deyan Ginev <d.ginev@jacobs-university.de>',
  ABSTRACT => "Temporary workaround for secure IO for LaTeXML",
  VERSION => '0.1',
  PREREQ_PM => { 
    'LaTeXML'=>'0.8.1',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
      resources => {
        repository => {
          type => 'git',
          url => 'https://github.com/dginev/LaTeXML-Plugin-secureio.git',
          web => 'https://github.com/dginev/LaTeXML-Plugin-secureio',
        }}})
  : ()),
);
