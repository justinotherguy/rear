# Create a fresh /etc/rear/recovery at each "rear mkrescue" run
# FIXME - must build a check that an user does not run by accident 'rear mkrescue'
# when he really ment 'rear recovery' - maybe with a FLAG somehow??
rm -Rf "$VAR_DIR/recovery" || Error "Could not remove recovery configuration directory: $VAR_DIR/recovery"
mkdir -p  -m 750 "$VAR_DIR/recovery" || Error "Could not create recovery configuration directory: $VAR_DIR/recovery"
