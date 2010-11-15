use warnings;
use strict;
use Test::More;
use Test::Spelling;
set_spell_cmd('ispell -l');
all_pod_files_spelling_ok();

