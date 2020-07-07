# nmap-monitoring
1. salt 'minion' state.apply nmap-monitoring/proxy/init
2. salt 'minion' state.apply nmap-monitoring/mail/init
3. salt 'minion' state.apply nmap-monitoring/update/init
4. salt 'minion' state.apply nmap-monitoring/packages/init
5. salt 'minion' state.apply nmap-monitoring/nmap-monitoring/init
