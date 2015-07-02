package Bluebonnet::VFS::Path::Native;

use Moo::Role;
use Path::Tiny;

has _path => ( is => 'ro' );

sub is_leaf {
	my ($self) = @_;
	$self->is_file;
}

sub is_parent {
	my ($self) = @_;
	$self->is_dir;
}

sub children {
	my ($self) = @_;
	return unless $self->is_dir;
	$self->new_with_metaclass()
}

sub name {

}

1;
