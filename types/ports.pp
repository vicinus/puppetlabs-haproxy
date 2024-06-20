# @summary Port or list of ports for haproxy. Supports `,` seperated list of ports also.
#
type Haproxy::Ports = Variant[Array[Variant[Pattern[/^[0-9]+$/],Stdlib::Port,Array[Stdlib::Port, 2, 2]],0], Pattern[/^[0-9,]+$/], Stdlib::Port]
