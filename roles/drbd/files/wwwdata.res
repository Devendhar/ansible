resource wwwdata {
 protocol C;
 meta-disk internal;
 device /dev/drbd1;
 syncer {
  verify-alg sha1;
 }
 net {
  allow-two-primaries;
 }
 on node11.example.com {
  disk   /dev/data/drbd-demo;
  address  192.168.56.11:7789;
 }
 on node12.example.com {
  disk   /dev/data/drbd-demo;
  address  192.168.56.12:7789;
 }
}
