use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'IPC::LeaderBoard',
    AUTHOR             => q{Binary.com <support@binary.com>},
    VERSION_FROM       => 'lib/IPC/LeaderBoard.pm',
    ( eval { ExtUtils::MakeMaker->VERSION(6.64) } ?
        (
            CONFIGURE_REQUIRES => {
                "ExtUtils::MakeMaker" => "6.64",
            },
            PREREQ_PM => {
              'Fcntl'            => 0,
              'Guard'            => 0,
              'IPC::ScoreBoard'  => 0,
              'Moo'              => 0,
              'Path::Tiny'       => 0,
              'namespace::clean' => 0,
            },
            BUILD_REQUIRES => {
                'Test::More'  => 0,
                'Test::Fatal' => 0,
            },
        ) : (
            PREREQ_PM => {
                "ExtUtils::MakeMaker" => '6.64',
                'Test::More'          => 0,
                'Test::Fatal'         => 0,
                'Fcntl'               => 0,
                'Guard'               => 0,
                'IPC::ScoreBoard'     => 0,
                'Moo'                 => 0,
                'Path::Tiny'          => 0,
                'namespace::clean'    => 0,
            },
        )
    ),
    ( eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
    ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ?
        (
            META_MERGE => {
                resources => {
                    repository => 'https://github.com/binary-com/perl-IPC-LeaderBoard',
                },
            }
        ) : ()
    ),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? ( MIN_PERL_VERSION => '5.8.1') : ()),
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'IPC-LeaderBoard*' },
);
