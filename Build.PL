use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Image::ExifTool::Location',
    sign                => 1,
    license             => 'perl',
    dist_author         => 'Andy Armstrong <andy@hexten.net>',
    dist_version_from   => 'lib/Image/ExifTool/Location.pm',
    requires => {
        'Test::More'                        => 0,
        'version'                           => 0,
        'Image::ExifTool'                   => 0,
        'Geo::Coordinates::DecimalDegrees'  => 0.06,
    },
    add_to_cleanup      => [ 'Image-ExifTool-Location-*' ],
);

$builder->create_build_script();
