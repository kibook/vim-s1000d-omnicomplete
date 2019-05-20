let g:xmldata_S1000D_23_dml = {
\ 'dml': [['rdf:Description', 'dmlc', 'issno', 'issdate', 'security', 'datarest', 'dmlref', 'dmentry', 'remarks'], {'id': [], 'direction': ['send', 'reply']}],
\ 'dmlc': [['modelic', 'sendid', 'dmltype', 'diyear', 'seqnum'], {}],
\ 'modelic': [[], {}],
\ 'sendid': [[], {}],
\ 'dmltype': [[], {'type': ['c', 'p', 's']}],
\ 'diyear': [[], {}],
\ 'seqnum': [[], {}],
\ 'issno': [[], {'issno': ['\d{3}'], 'inwork': ['\d{2}'], 'type': ['new', 'changed', 'deleted', 'revised', 'status', 'rinstate-changed', 'rinstate-revised', 'rinstate-status']}],
\ 'issdate': [[], {'year': ['\d{4}'], 'month': ['\d{2}'], 'day': ['\d{2}']}],
\ 'security': [[], {'class': ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99'], 'commcls': ['cc01', 'cc02', 'cc03', 'cc04', 'cc05', 'cc06', 'cc07', 'cc08', 'cc09', 'cc10', 'cc11', 'cc12', 'cc13', 'cc14', 'cc15', 'cc16', 'cc17', 'cc18', 'cc19', 'cc20', 'cc21', 'cc22', 'cc23', 'cc24', 'cc25', 'cc26', 'cc27', 'cc28', 'cc29', 'cc30', 'cc31', 'cc32', 'cc33', 'cc34', 'cc35', 'cc36', 'cc37', 'cc38', 'cc39', 'cc40', 'cc41', 'cc42', 'cc43', 'cc44', 'cc45', 'cc46', 'cc47', 'cc48', 'cc49', 'cc50', 'cc51', 'cc52', 'cc53', 'cc54', 'cc55', 'cc56', 'cc57', 'cc58', 'cc59', 'cc60', 'cc61', 'cc62', 'cc63', 'cc64', 'cc65', 'cc66', 'cc67', 'cc68', 'cc69', 'cc70', 'cc71', 'cc72', 'cc73', 'cc74', 'cc75', 'cc76', 'cc77', 'cc78', 'cc79', 'cc80', 'cc81', 'cc82', 'cc83', 'cc84', 'cc85', 'cc86', 'cc87', 'cc88', 'cc89', 'cc90', 'cc91', 'cc92', 'cc93', 'cc94', 'cc95', 'cc96', 'cc97', 'cc98', 'cc99'], 'caveat': ['cv01', 'cv02', 'cv03', 'cv04', 'cv05', 'cv06', 'cv07', 'cv08', 'cv09', 'cv10', 'cv11', 'cv12', 'cv13', 'cv14', 'cv15', 'cv16', 'cv17', 'cv18', 'cv19', 'cv20', 'cv21', 'cv22', 'cv23', 'cv24', 'cv25', 'cv26', 'cv27', 'cv28', 'cv29', 'cv30', 'cv31', 'cv32', 'cv33', 'cv34', 'cv35', 'cv36', 'cv37', 'cv38', 'cv39', 'cv40', 'cv41', 'cv42', 'cv43', 'cv44', 'cv45', 'cv46', 'cv47', 'cv48', 'cv49', 'cv50', 'cv51', 'cv52', 'cv53', 'cv54', 'cv55', 'cv56', 'cv57', 'cv58', 'cv59', 'cv60', 'cv61', 'cv62', 'cv63', 'cv64', 'cv65', 'cv66', 'cv67', 'cv68', 'cv69', 'cv70', 'cv71', 'cv72', 'cv73', 'cv74', 'cv75', 'cv76', 'cv77', 'cv78', 'cv79', 'cv80', 'cv81', 'cv82', 'cv83', 'cv84', 'cv85', 'cv86', 'cv87', 'cv88', 'cv89', 'cv90', 'cv91', 'cv92', 'cv93', 'cv94', 'cv95', 'cv96', 'cv97', 'cv98', 'cv99']}],
\ 'datarest': [['instruct', 'inform'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'instruct': [['distrib', 'expcont', 'handling', 'destruct', 'disclose'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'distrib': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'expcont': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'handling': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'destruct': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'disclose': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'inform': [['copyright', 'polref', 'datacond'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'copyright': [['p'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'p': [['subscrpt', 'supscrpt'], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'subscrpt': [[], {}],
\ 'supscrpt': [[], {}],
\ 'polref': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'datacond': [[], {'id': [], 'level': [], 'mark': [], 'change': ['add', 'delete', 'modify'], 'rfc': []}],
\ 'dmlref': [['dmlc', 'issno', 'xlink:resource', 'xlink:locator', 'xlink:arc'], {'xlink:type': [], 'xlink:href': [], 'xlink:title': [], 'xlink:show': [], 'xlink:actuate': []}],
\ 'dmentry': [['addresdm', 'security', 'rpc', 'answer', 'remarks'], {'type': ['c', 'd', 'n']}],
\ 'addresdm': [['dmcextension', 'dmc', 'dmtitle', 'issno', 'issdate', 'language', 'xlink:resource', 'xlink:locator', 'xlink:arc'], {'xlink:type': [], 'xlink:href': [], 'xlink:title': [], 'xlink:show': [], 'xlink:actuate': []}],
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
\ 'language': [[], {'language': ['[a-z]{2,3}'], 'country': ['[A-Z]{2}']}],
\ 'rpc': [[], {'rpcname': [], 'id': []}],
\ 'answer': [['remarks'], {'answer': ['y', 'n']}],
\ 'remarks': [['p'], {}]
\ }