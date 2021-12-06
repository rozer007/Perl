use lib 'lib';
use student;

my $pep = new student("base",1);
$pep->get_all();
$pep->set_name("pep");
$pep->get_all();