Caml1999N018����            2src/ipv6/ndpv6.mli����  !�  S  v  �����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����*tcpip_ipv6@��.<command-line>A@@�A@L@@@`@�����Je@e@@e@e@@@e@@e@e���A�    �&buffer��2src/ipv6/ndpv6.mliQ!&�Q!,@@@@A������'Cstruct!t��Q!/�Q!8@@�@@@��Q!!@@�@���A�    �&ipaddr��R9>�R9D@@@@A�������&Ipaddr"V6!t��'R9G�(R9R@@�@@@��+R99@@�@���A�    �&prefix��5SSX�6SS^@@@@A��������&Ipaddr"V6&Prefix!t��DSSa�ESSs@@�@@@��HSSS@@�@���A�    �$time��RTty�STt}@@@@A�����%int64��[Tt��\Tt�@@�@@@��_Ttt@@�@���Р1ipaddr_of_cstruct��hV���iV��@��@����&buffer��rV���sV��@@�@@����&ipaddr��{V���|V��@@�@@�@@@@���V��@�@���Р5ipaddr_to_cstruct_raw���W����W��@��@����&ipaddr���W����W��@@�@@��@����&buffer���W����W��@@�@@��@����#int���W����W��@@�@@����$unit���W����W��@@�@@�@@�@@�%@@@@���W��@�@���Р(checksum���X����X��@��@����&buffer���X����X�@@�@@��@����$list���X���X�@�����&buffer���X���X�@@�@@@�@@����#int���X���X�@@�@@�@@�#@@@@���X��@�@���A�    �%event���Z ��Z%@@@@A�����#Tcp@@��������&ipaddr��[(4�[(:@@�@@�����&ipaddr��[(=�[(C@@�@@�����&buffer�� [(F�![(L@@�@@@�@@@��#Udp@@��������&ipaddr��1\MY�2\M_@@�@@�����&ipaddr��;\Mb�<\Mh@@�@@�����&buffer��E\Mk�F\Mq@@�@@@�@@@��'Default@@��������#int��V]r��W]r�@@�@@�����&ipaddr��`]r��a]r�@@�@@�����&ipaddr��j]r��k]r�@@�@@�����&buffer��t]r��u]r�@@�@@@�"@@@@@@��y[(*�z]r�@@@��|Z@@�@���A�    �'context���_����_��@@@@A@@���_��@@�@���Р%local���a����a��@���#now����$time���a����a��@@�@@���&random��@����#int���a����a��@@�@@�����'Cstruct!t���a����a��@@�@@�@@��@�����'Macaddr!t���a����a��@@�@@�������'context���a����a��@@�@@�����$list���a�
��a�@�����$list���a���a�	@�����&buffer���a����a�@@�@@@�@@@�@@@�"@@�/@@���a��@@���a��@@@���)ocaml.docj�������	� [local ~now ~random mac] is a pair [ctx, bufs] where [ctx] is a local IPv6 context
    associated to the hardware address [mac].  [bufs] is a list of ethif packets
    to be sent. @��b�d��@@@@@��	a��-@�.@���Р&add_ip��f���f��@���#now����$time��f���f��@@�@@��@����'context��)f���*f��@@�@@��@����&ipaddr��4f���5f��@@�@@�������'context��@f���Af� @@�@@�����$list��Jf��Kf�@�����$list��Sf�
�Tf�@�����&buffer��\f��]f�	@@�@@@�@@@�@@@�"@@�/@@�;@@��ef��@@@���m֐������	� [add_ip ~now ctx ip] is [ctx', bufs] where [ctx'] is [ctx] updated with a
    new local ip and [bufs] is a list of ethif packets to be sent. @��rg�shb�@@@@@��uf��+@�,@���Р&get_ip��~j���j��@��@����'context���j����j��@@�@@����$list���j����j��@�����&ipaddr���j����j��@@�@@@�@@�@@@�����������	- [get_ip ctx] returns the list of local ips. @���k����k��@@@@@���j��@�@���Р.allocate_frame���m��m@��@����'context���m��m@@�@@��@����&ipaddr���m!��m'@@�@@��@����$ICMP@A@��#TCP@A@��#UDP@A@@@@���m+��m@@@�������&buffer���mD��mJ@@�@@�����#int���mM��mP@@�@@@�@@�@@�,@@�8@@@��� i�������	� [allocate_frame ctx ip proto] returns a pair [buf, len] where [buf] is a new
    ethernet frame containing an ipv6 header of length [len]. @��nQQ�o��@@@@@��m@�@���Р-select_source��q���q��@��@����'context��q���q��@@�@@��@����&ipaddr��&q��'q�	@@�@@����&ipaddr��/q��0q�@@�@@�@@�@@@���;��������	p [select_source ctx ip] returns the ip that should be put in the source field
    of a packet destined to [ip]. @��@r�Ase�@@@@@��Cq��@�@���Р&handle��Lu���Mu��@���#now����$time��Xu���Yu��@@�@@���&random��@����#int��gu���hu��@@�@@�����'Cstruct!t��ru���su��@@�@@�@@��@����'context��~u���u��@@�@@��@����&buffer���u����u��@@�@@�������'context���u����u��@@�@@�����$list���u����u��@�����$list���u����u��@�����&buffer���u����u��@@�@@@�@@@�@@�����$list���u����u��@�����%event���u����u��@@�@@@�@@@�6@@�C@@�O@@���u��@@���u��@@@����A�������
   [handle ~now ~random ctx buf] handles an incoming ipv6 packet.  It returns [ctx',
    bufs, evs] where [ctx'] is the updated context, [bufs] is a list of packets to
    be sent and [evs] is a list of packets to be passed to the higher layers (udp,
    tcp, etc) for further processing. @���v����y	�
"@@@@@���u��#@�$@���Р$send���{
$
(��{
$
,@���#now����$time���{
$
3��{
$
7@@�@@��@����'context�� {
$
;�{
$
B@@�@@��@����&ipaddr��{
$
F�{
$
L@@�@@��@����&buffer��{
$
P�{
$
V@@�@@��@����$list��!{
$
a�"{
$
e@�����&buffer��*{
$
Z�+{
$
`@@�@@@�@@�������'context��7{
$
i�8{
$
p@@�@@�����$list��A{
$
�B{
$
�@�����$list��J{
$
z�K{
$
~@�����&buffer��S{
$
s�T{
$
y@@�@@@�@@@�@@@�"@@�0@@�E@@�Q@@�]@@��^{
$
/@@@���fϐ������
   [send ~now ctx ip frame bufs] starts route resolution and assembles an ipv6
    packet for sending with header [frame] and body [bufs].  It returns a pair
    [ctx', bufs] where [ctx'] is the updated context and [bufs] is a list of
    packets to be sent. @��k|
�
��lp�@@@@@��n{
$
$-@�.@���Р$tick��w A���x A��@���#now����$time��� A���� A��@@�@@��@����'context��� A���� A��@@�@@�������'context��� A���� A��@@�@@�����$list��� A���� A��@�����$list��� A���� A��@�����&buffer��� A���� A��@@�@@@�@@@�@@@�"@@�/@@��� A��@@@����/�������	� [tick ~now ctx] should be called periodically (every 1s is good).  It
    returns [ctx', bufs] where [ctx'] is the updated context and [bufs] is a list of
    packets to be sent. @��� B���� Dh�@@@@@��� A��*@�+@���Р*add_prefix��� F���� F��@���#now����$time��� F���� F��@@�@@��@����'context��� F���� F��@@�@@��@����&prefix��� F���� F��@@�@@����'context�� F��� F��@@�@@�@@�@@�� F��@@@���y�������	9 [add_prefix ~now ctx pfx] adds a local prefix to [ctx]. @�� G��� G��@@@@@�� F��@�@���Р*get_prefix��! I��" I�@��@����'context��+ I��, I�@@�@@����$list��4 I�!�5 I�%@�����&prefix��= I��> I� @@�@@@�@@�@@@���I��������	E [get_prefix ctx] returns the list of local prefixes known to [ctx]. @��N J&&�O J&p@@@@@��Q I��@�@���Р+add_routers��Z Lrv�[ Lr�@���#now����$time��f Lr��g Lr�@@�@@��@����'context��q Lr��r Lr�@@�@@��@����$list��| Lr��} Lr�@�����&ipaddr��� Lr��� Lr�@@�@@@�@@����'context��� Lr��� Lr�@@�@@�@@�#@@��� Lr�@@@�����������	Y [add_routers ~now ctx ips] adds a list of gateways to [ctx] to be used for
    routing. @��� M���� N@@@@@��� Lrr@�@���Р+get_routers��� P�� P!@��@����'context��� P$�� P+@@�@@����$list��� P6�� P:@�����&ipaddr��� P/�� P5@@�@@@�@@�@@@����?�������	@ [get_routers ctx] returns the list of gateways known to [ctx]. @��� Q;;�� Q;�@@@@@��� P@�@@