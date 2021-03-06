use 5.010001;

use strict;
use warnings;
use utf8;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojo::Pg',
  VERSION_FROM => 'lib/Mojo/Pg.pm',
  ABSTRACT     => 'Mojolicious ♥ PostgreSQL',
  AUTHOR       => 'Sebastian Riedel <sri@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    no_index       => {directory => ['examples', 't']},
    prereqs        => {runtime => {requires => {perl => '5.010001'}}},
    resources      => {
      bugtracker => {web => 'https://github.com/mojolicious/mojo-pg/issues'},
      homepage   => 'https://mojolicious.org',
      license    => ['http://www.opensource.org/licenses/artistic-license-2.0'],
      repository => {
        type => 'git',
        url  => 'https://github.com/mojolicious/mojo-pg.git',
        web  => 'https://github.com/mojolicious/mojo-pg',
      },
      x_IRC => 'irc://irc.freenode.net/#mojo'
    },
  },
  PREREQ_PM =>
    {'DBD::Pg' => 3.005001, Mojolicious => '8.03', 'SQL::Abstract' => '1.86'},
  test => {TESTS => 't/*.t t/*/*.t'}
);
