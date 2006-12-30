use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    (MM->can('signature_target') ? (SIGN => 1) : ()),
    NAME                => 'Image::ExifTool::Location',
    AUTHOR              => 'Andy Armstrong <andy@hexten.net>',
    VERSION_FROM        => 'lib/Image/ExifTool/Location.pm',
    ABSTRACT_FROM       => 'lib/Image/ExifTool/Location.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'                        => 0,
        'version'                           => 0,
        'Image::ExifTool'                   => 0,
        'Geo::Coordinates::DecimalDegrees'  => 0.06,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Image-ExifTool-Location-*' },
);
