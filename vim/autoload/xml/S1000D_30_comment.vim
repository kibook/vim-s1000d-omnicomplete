let g:xmldata_S1000D_30_comment = {
\ 'comment': [['rdf:Description', 'cstatus', 'ccontent'], {'id': []}],
\ 'cstatus': [['ccode', 'ctitle', 'issdate', 'language', 'corig', 'security', 'datarest', 'priority', 'response', 'crefs', 'remarks'], {}],
\ 'ccode': [['modelic', 'sendid', 'diyear', 'seqnum', 'ctype'], {}],
\ 'modelic': [[], {}],
\ 'sendid': [[], {}],
\ 'diyear': [[], {}],
\ 'seqnum': [[], {}],
\ 'ctype': [[], {'type': ['q', 'i', 'r']}],
\ 'ctitle': [[], {}],
\ 'issdate': [[], {'year': [], 'month': [], 'day': []}],
\ 'language': [[], {'language': [], 'country': []}],
\ 'corig': [['dispaddr'], {}],
\ 'dispaddr': [['enterprise', 'person', 'address'], {}],
\ 'enterprise': [['ent-name', 'division', 'ent-unit'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'ent-name': [[], {}],
\ 'division': [[], {}],
\ 'ent-unit': [[], {}],
\ 'person': [['lastname', 'firstname', 'jobtitle'], {'prefix': []}],
\ 'lastname': [[], {}],
\ 'firstname': [[], {}],
\ 'jobtitle': [[], {}],
\ 'address': [['dept', 'street', 'pobox', 'zip', 'city', 'postcode', 'country', 'state', 'province', 'building', 'room', 'phone', 'fax', 'email', 'internet'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'dept': [[], {}],
\ 'street': [[], {}],
\ 'pobox': [[], {}],
\ 'zip': [[], {}],
\ 'city': [[], {}],
\ 'postcode': [[], {}],
\ 'country': [[], {}],
\ 'state': [[], {}],
\ 'province': [[], {}],
\ 'building': [[], {}],
\ 'room': [[], {}],
\ 'phone': [[], {}],
\ 'fax': [[], {}],
\ 'email': [[], {}],
\ 'internet': [[], {}],
\ 'security': [[], {'class': ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99'], 'commcls': ['cc01', 'cc02', 'cc03', 'cc04', 'cc05', 'cc06', 'cc07', 'cc08', 'cc09', 'cc10', 'cc11', 'cc12', 'cc13', 'cc14', 'cc15', 'cc16', 'cc17', 'cc18', 'cc19', 'cc20', 'cc21', 'cc22', 'cc23', 'cc24', 'cc25', 'cc26', 'cc27', 'cc28', 'cc29', 'cc30', 'cc31', 'cc32', 'cc33', 'cc34', 'cc35', 'cc36', 'cc37', 'cc38', 'cc39', 'cc40', 'cc41', 'cc42', 'cc43', 'cc44', 'cc45', 'cc46', 'cc47', 'cc48', 'cc49', 'cc50', 'cc51', 'cc52', 'cc53', 'cc54', 'cc55', 'cc56', 'cc57', 'cc58', 'cc59', 'cc60', 'cc61', 'cc62', 'cc63', 'cc64', 'cc65', 'cc66', 'cc67', 'cc68', 'cc69', 'cc70', 'cc71', 'cc72', 'cc73', 'cc74', 'cc75', 'cc76', 'cc77', 'cc78', 'cc79', 'cc80', 'cc81', 'cc82', 'cc83', 'cc84', 'cc85', 'cc86', 'cc87', 'cc88', 'cc89', 'cc90', 'cc91', 'cc92', 'cc93', 'cc94', 'cc95', 'cc96', 'cc97', 'cc98', 'cc99'], 'caveat': ['cv01', 'cv02', 'cv03', 'cv04', 'cv05', 'cv06', 'cv07', 'cv08', 'cv09', 'cv10', 'cv11', 'cv12', 'cv13', 'cv14', 'cv15', 'cv16', 'cv17', 'cv18', 'cv19', 'cv20', 'cv21', 'cv22', 'cv23', 'cv24', 'cv25', 'cv26', 'cv27', 'cv28', 'cv29', 'cv30', 'cv31', 'cv32', 'cv33', 'cv34', 'cv35', 'cv36', 'cv37', 'cv38', 'cv39', 'cv40', 'cv41', 'cv42', 'cv43', 'cv44', 'cv45', 'cv46', 'cv47', 'cv48', 'cv49', 'cv50', 'cv51', 'cv52', 'cv53', 'cv54', 'cv55', 'cv56', 'cv57', 'cv58', 'cv59', 'cv60', 'cv61', 'cv62', 'cv63', 'cv64', 'cv65', 'cv66', 'cv67', 'cv68', 'cv69', 'cv70', 'cv71', 'cv72', 'cv73', 'cv74', 'cv75', 'cv76', 'cv77', 'cv78', 'cv79', 'cv80', 'cv81', 'cv82', 'cv83', 'cv84', 'cv85', 'cv86', 'cv87', 'cv88', 'cv89', 'cv90', 'cv91', 'cv92', 'cv93', 'cv94', 'cv95', 'cv96', 'cv97', 'cv98', 'cv99']}],
\ 'datarest': [['instruct', 'inform'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'instruct': [['distrib', 'expcont', 'handling', 'destruct', 'disclose'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'distrib': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'expcont': [['expstatement', 'expregcode'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': [], 'expregtype': [], 'expgovauth': []}],
\ 'expstatement': [['p'], {'exprole': ['partial', 'full']}],
\ 'p': [['subscrpt', 'supscrpt'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'subscrpt': [[], {}],
\ 'supscrpt': [[], {}],
\ 'expregcode': [[], {'expregcodetype': []}],
\ 'handling': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'destruct': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'disclose': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'inform': [['copyright', 'polref', 'datacond'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'copyright': [['p'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'polref': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'datacond': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'priority': [[], {'cprio': ['cp01', 'cp02', 'cp03', 'cp04', 'cp05', 'cp06', 'cp07', 'cp08', 'cp09', 'cp10', 'cp11', 'cp12', 'cp13', 'cp14', 'cp15', 'cp16', 'cp17', 'cp18', 'cp19', 'cp20', 'cp21', 'cp22', 'cp23', 'cp24', 'cp25', 'cp26', 'cp27', 'cp28', 'cp29', 'cp30', 'cp31', 'cp32', 'cp33', 'cp34', 'cp35', 'cp36', 'cp37', 'cp38', 'cp39', 'cp40', 'cp41', 'cp42', 'cp43', 'cp44', 'cp45', 'cp46', 'cp47', 'cp48', 'cp49', 'cp50', 'cp51', 'cp52', 'cp53', 'cp54', 'cp55', 'cp56', 'cp57', 'cp58', 'cp59', 'cp60', 'cp61', 'cp62', 'cp63', 'cp64', 'cp65', 'cp66', 'cp67', 'cp68', 'cp69', 'cp70', 'cp71', 'cp72', 'cp73', 'cp74', 'cp75', 'cp76', 'cp77', 'cp78', 'cp79', 'cp80', 'cp81', 'cp82', 'cp83', 'cp84', 'cp85', 'cp86', 'cp87', 'cp88', 'cp89', 'cp90', 'cp91', 'cp92', 'cp93', 'cp94', 'cp95', 'cp96', 'cp97', 'cp98', 'cp99']}],
\ 'response': [[], {'rsptype': ['rt01', 'rt02', 'rt03', 'rt04', 'rt05', 'rt06', 'rt07', 'rt08', 'rt09', 'rt10', 'rt11', 'rt12', 'rt13', 'rt14', 'rt15', 'rt16', 'rt17', 'rt18', 'rt19', 'rt20', 'rt21', 'rt22', 'rt23', 'rt24', 'rt25', 'rt26', 'rt27', 'rt28', 'rt29', 'rt30', 'rt31', 'rt32', 'rt33', 'rt34', 'rt35', 'rt36', 'rt37', 'rt38', 'rt39', 'rt40', 'rt41', 'rt42', 'rt43', 'rt44', 'rt45', 'rt46', 'rt47', 'rt48', 'rt49', 'rt50', 'rt51', 'rt52', 'rt53', 'rt54', 'rt55', 'rt56', 'rt57', 'rt58', 'rt59', 'rt60', 'rt61', 'rt62', 'rt63', 'rt64', 'rt65', 'rt66', 'rt67', 'rt68', 'rt69', 'rt70', 'rt71', 'rt72', 'rt73', 'rt74', 'rt75', 'rt76', 'rt77', 'rt78', 'rt79', 'rt80', 'rt81', 'rt82', 'rt83', 'rt84', 'rt85', 'rt86', 'rt87', 'rt88', 'rt89', 'rt90', 'rt91', 'rt92', 'rt93', 'rt94', 'rt95', 'rt96', 'rt97', 'rt98', 'rt99']}],
\ 'crefs': [['cnorefs', 'crefdms', 'crefdmls', 'crefpms', 'crefddns'], {}],
\ 'cnorefs': [[], {}],
\ 'crefdms': [['crefdm'], {}],
\ 'crefdm': [['dmcextension', 'dmc', 'dmtitle', 'issno', 'issdate', 'language', ], {}],
\ 'dmcextension': [['dmeproducer', 'dmecode'], {}],
\ 'dmeproducer': [[], {}],
\ 'dmecode': [[], {}],
\ 'dmc': [['age', 'avee'], {}],
\ 'age': [['modelic', 'supeqvc', 'ecscs', 'eidc', 'cidc', 'discode', 'discodev', 'incode', 'incodev', 'itemloc'], {}],
\ 'supeqvc': [[], {}],
\ 'ecscs': [[], {}],
\ 'eidc': [[], {}],
\ 'cidc': [[], {}],
\ 'discode': [[], {}],
\ 'discodev': [[], {}],
\ 'incode': [[], {}],
\ 'incodev': [[], {}],
\ 'itemloc': [[], {}],
\ 'avee': [['modelic', 'sdc', 'chapnum', 'section', 'subsect', 'subject', 'discode', 'discodev', 'incode', 'incodev', 'itemloc'], {}],
\ 'sdc': [[], {}],
\ 'chapnum': [[], {}],
\ 'section': [[], {}],
\ 'subsect': [[], {}],
\ 'subject': [[], {}],
\ 'dmtitle': [['techname', 'infoname'], {}],
\ 'techname': [[], {}],
\ 'infoname': [[], {}],
\ 'issno': [[], {'issno': [], 'inwork': [], 'type': ['new', 'changed', 'deleted', 'revised', 'status', 'rinstate-changed', 'rinstate-revised', 'rinstate-status']}],
\ 'crefdmls': [['dmlref'], {}],
\ 'dmlref': [['dmlc', 'issno', ], {}],
\ 'dmlc': [['modelic', 'sendid', 'dmltype', 'diyear', 'seqnum'], {}],
\ 'dmltype': [[], {'type': ['c', 'p', 's']}],
\ 'crefpms': [['crefpm'], {}],
\ 'crefpm': [['pmc', 'pmtitle', 'issno', 'issdate', 'language', ], {}],
\ 'pmc': [['modelic', 'pmissuer', 'pmnumber', 'pmvolume'], {}],
\ 'pmissuer': [[], {}],
\ 'pmnumber': [[], {}],
\ 'pmvolume': [[], {}],
\ 'pmtitle': [[], {}],
\ 'crefddns': [['crefddn'], {}],
\ 'crefddn': [['ddnc', 'issdate', ], {}],
\ 'ddnc': [['modelic', 'sendid', 'recvid', 'diyear', 'seqnum'], {}],
\ 'recvid': [[], {}],
\ 'remarks': [['p'], {}],
\ 'ccontent': [['p', 'refcattach'], {}],
\ 'refcattach': [[], {'seqatt': [], 'extend': [], }]
\ }