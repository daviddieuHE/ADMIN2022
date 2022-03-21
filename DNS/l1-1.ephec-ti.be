$ORIGIN l1-1.ephec-ti.be.
$TTL  604800
@       IN      SOA     ns.l1-1.ephec-ti.be. he201896.students.ephec.be. (
                        1       ; Serial
                        604800  ; Refresh
                        86400   ; Retry
                        2419200 ; Expire
			604800 ); Negative Cache TTL			
;
; NS configs
            IN      NS      ns.l1-1.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       176.96.231.153


; Web
b2b         IN      A       176.96.231.153
www         IN      A       176.96.231.153

; Mail
mail        IN      A       176.96.231.153
smtp        IN      CNAME   mail


;VoIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    176.96.231.153
