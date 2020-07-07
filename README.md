# nmap-monitoring
1. salt 'minion' state.apply nmap/proxy/init
2. salt 'minion' state.apply nmap/mail/init
3. salt 'minion' state.apply nmap/update/init
4. salt 'minion' state.apply nmap/packages/init
5. salt 'minion' state.apply nmap/nmap-monitoring/init
