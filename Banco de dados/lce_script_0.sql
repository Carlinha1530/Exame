--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13 (Ubuntu 10.13-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.13 (Ubuntu 10.13-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidade (
    id integer NOT NULL,
    nome character varying(100)
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- Name: investidor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.investidor (
    id integer NOT NULL,
    nome character varying(200)
);


ALTER TABLE public.investidor OWNER TO postgres;

--
-- Name: investimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.investimento (
    id integer NOT NULL,
    startup_id integer,
    investidor_id integer,
    valor double precision,
    data_realizada date,
    obs character varying(255)
);


ALTER TABLE public.investimento OWNER TO postgres;

--
-- Name: startup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.startup (
    id integer NOT NULL,
    nome character varying(100),
    industria_vertical character varying(100),
    sub_industria_vertical character varying(200),
    cidade_id integer
);


ALTER TABLE public.startup OWNER TO postgres;

--
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cidade (id, nome) FROM stdin;
1	Bengaluru
2	Gurgaon
3	New Delhi
4	Mumbai
5	Chennai
6	Pune
7	Noida
8	Faridabad
9	San Francisco
10	San Jose,
11	Amritsar
12	Delhi
13	Kormangala
14	Tulangan
15	Hyderabad
16	Burnsville
17	Menlo Park
18	Gurugram
19	Palo Alto
20	Santa Monica
21	Singapore
22	Taramani
23	Andheri
24	Chembur
25	Nairobi
26	Haryana
27	New York
28	Karnataka
29	Mumbai/Bengaluru
30	Bhopal
31	Bengaluru and Gurugram
32	India/Singapore
33	Jaipur
34	India/US
35	Nagpur
36	Indore
37	New York, Bengaluru
38	California
39	India
40	Ahemadabad
41	Rourkela
42	Srinagar
43	Bhubneswar
44	Chandigarh
45	Delhi & Cambridge
46	Kolkatta
47	Kolkata
48	Coimbatore
49	Bangalore
50	Udaipur
51	\N
52	Ahemdabad
53	Bhubaneswar
54	Ahmedabad
55	Surat
56	Goa
57	Uttar Pradesh
58	Nw Delhi
59	Gaya
60	Vadodara
61	Trivandrum
62	Missourie
63	Panaji
64	Gwalior
65	Karur
66	Udupi
67	Kochi
68	Agra
69	Bangalore/ Bangkok
70	Hubli
71	Kerala
72	Kozhikode
73	US
74	Siliguri
75	USA
76	Lucknow
77	Kanpur
78	SFO / Bangalore
79	London
80	Seattle / Bangalore
81	Pune/Seattle
82	Pune / Dubai
83	Bangalore / SFO
84	Varanasi
85	New Delhi / US
86	Mumbai / UK
87	Jodhpur
88	Hyderabad/USA
89	Boston
90	Bangalore / Palo Alto
91	Mumbai / NY
92	USA/India
93	Goa/Hyderabad
94	Noida / Singapore
95	Belgaum
96	Pune / US
97	Chennai/ Singapore
98	Pune / Singapore
99	Bangalore / San Mateo
100	New York/ India
101	US/India
102	Gurgaon / SFO
103	Bangalore / USA
104	New Delhi/ Houston
105	Mumbai / Global
106	India / US
107	New Delhi / California
108	Dallas / Hyderabad
\.


--
-- Data for Name: investidor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.investidor (id, nome) FROM stdin;
1	Tiger Global Management
2	Susquehanna Growth Equity
3	Sequoia Capital India
4	Vinod Khatumal
5	Sprout Venture Partners
6	Chiratae Ventures
7	Ant Financial
8	Sathguru Catalyzer Advisors
9	Ping An Global Voyager Fund
10	Mumbai Angels, Ravikanth Reddy
11	SAIF Partners, Spring Canter Investment Ltd.
12	Paytm, NPTK, Sabre Partners and Neoplux
13	Vertex Growth Fund
14	\N
15	Ruizheng Investment
16	Manipal Education and Medical Group (MEMG)
17	SoftBank Vision Fund
18	Sequoia, CapitalG, Accel
19	Sauce.vc, Rainforest Ventures
20	Prime Venture Partners, LetsVenture, PS1 Venture and GlobalLogic co-founder Rajul Garg
21	RB Investments
22	DG Daiwa Ventures, DG Incubation
23	Trifecta Capital Advisors
24	FinTech
25	Dream Incubator
26	Altimeter Capital, Sutter Hill Ventures
27	Startup Buddy
28	Amour Infrastructure
29	Ackermans & van Haaren, HealthQuad, Rebright Partners, Toppan Printing
30	Matrix Partners, Stellaris Venture Partners, Kalaari Capital
31	IAN Fund and DSG Consumer Partners
32	Vijay Shekhar Sharma
33	Lightbox
34	Altimeter Capital, DST Global
35	Ayushmann Khurana
36	Matrix Partners India, Sequoia India
37	SAIF Partners
38	TIW Private Equity
39	Exfinity Venture Partners
40	Breakthrough Energy Ventures
41	Endiya Partners
42	A91 Partners
43	Bennett Coleman and Company Ltd (BCCL)
44	India Quotient, Axilor Ventures
45	SC GG India Mobility Holdings LLC
46	Sequoia India
47	Azim Premji, Binny Bansal
48	Pine Labs Pte Ltd
49	Naspers
50	MS Dhoni
51	March Capital Partners
52	XL Innovate
53	Rashmi Daga (founder, FreshMenu), Raveen Sastry (co-founder, Myntra) and Mitesh Shah (finance chief, BookMyShow)
54	RPS Ventures
55	One97 Communications Ltd.
56	Growth DNA
57	Vir Sanghvi
58	Softbank Vision Fund
59	Westbridge Capital
60	Lok Capital, IIFL Wealth
61	WaterBridge Ventures
62	Kapil Dev
63	DIG Investment Ab, Deshe Holdings, Samih Toukan and Hussam Khoury
64	Artha Venture
65	Qatar Investment Authority
66	Composite Capital Management, Sequoia Capital India, Tiger Global Management
67	Undisclosed
68	Ventureast
69	Blume Ventures
70	Binny Bansal
71	Multiple Angel Investors
72	General Atlantic
73	Anicut Capital
74	Goldman Sachs, Accel Partners and Qualcomm
75	Matrix Partners
76	Insight Partners
77	Triton Investment Advisors, Pidilite Industries director Ajay Parekh
78	Blume Ventures and RTP Global
387	RNT Capital
79	Shell Foundation, DILA CAPITAL, Engie RDE Fund, EcoEnterprise Fund, EDFIMC (ElectriFI), Endeavor Catalyst Fund, CoCapital, Triodos, Alpha Mundi, and Lendahand
80	IAN Fund
81	Qiming Venture Partners
82	Nexus Venture Partners
83	WestBridge Capital
84	Alteria Capital
85	Mumbai Angels
86	Tata Sons
87	C4D Partners
88	Indian Angel Network and other angel investors, Innov8 founder Ritesh Malik, Josh Talks founders Supriya Paul and Shobha Banga, and former Hero Corporate president Rohit Chanana
89	Goldman Sachs Investment Partners and Silicon Valley-based Accel, Wellington, Sequoia Capital, B Capital, LightStreet, Sands Capital and International Finance Corporation,
90	Sachin Bansal
91	Equanimity Ventures
92	Korea Investment Partners, Vertex Ventures
93	Sixth Sense Ventures
94	Eight Roads
95	Prasid Uno Family Trust
96	Unilever, Beehive Capital Advisor, ABCOM Investments, Parekh Marine Transport,
97	Orchid India, Hornbill Orchid India Fund, Chiratae Ventures (formerly IDG Ventures), 3one4 Capital, Lasmer NV
98	Unnamed angel investors
99	Lightspeed India Partners
100	Milestone
101	Supera Pte Ltd
102	Kalyan Krishnamurthy
103	Sequoia India, Tiger Global Management, Accel Partners
104	BAC Acquisitions, Unifi AIF, BRD Securities, Northern R Capital
105	New Atlantic Ventures
106	021 Capita, Binny Bansal
107	India Quotient and LetsVenture\\\\xe2\\\\x80\\\\x99s Angel Fund
108	Sequoia Capital and Temasek Holdings, EDBI, Burda Principal Investments, and Sofina
109	LetsVenture, PitchRight Venture, 91SpringBoard, AL Nour International Holdings and Mark V Investments
110	DiDi Chuxing
111	Sequoia India, Hillhouse Capital, Alphabet\\\\xe2\\\\x80\\\\x99s growth investment arm Capital G and Axis Bank
112	Iron Pillar, Perceptive Advisors, Romulus Capital and Kalaari Capital
113	MASSIF, a Dutch government fund
114	Stellaris Venture Partners
115	Steadview Capital and Vy Capital.
116	Individual Investors
117	Omphalos Ventures India LLP
118	Info Edge, AET Fund, Akatsuki and Incubate Fund from Japan and Better Capital AngelList syndicate.
119	Venture Highway, GREE Ventures, Space Matrix, Individual Investors
120	Lead Angels Network
121	Norwest Venture Partners, CDC Group, the UK\\\\xe2\\\\x80\\\\x99s Development Finance Institution and P Surendra Pai
122	Shunwei Capital, DST Partners and RPS Ventures
123	RB Investments, Singapore
124	Tiger Global
125	Mayfield Fund
126	Stevens Creek Ventures
127	Venture Catalysts
128	Sistema Asia Fund, VC Samsung NEXT, Chiratae Ventures, Inventus Capital, Blume Ventures and Innoven Capital.
129	Individual investors
130	Teachers Insurance and Annuity Association (TIAA)
131	Stellaris Venture Partners and Kalaari Capital, Rajan Anandan from Google, Dilip Khandwelwal from SAP Labs India, and Amrish Rau from PayU India
132	Lakestar and Jungle Ventures, Softbank\\\\xe2\\\\x80\\\\x99s DeepCore.
133	Paragon Partners, Individual Investors
134	Bertelsmann India Investments
135	Prashant Jaiswal
136	Cooperative Oikocredit, Caspian and Hivos-Triodos Fund
137	Ravi Viswanathan
138	ZigExN
139	Credence Family Office
140	Fosun International
141	Sistema Asia Fund, Sistema JSFC and Tanncam Investment
142	DST Global and Lightspeed Venture Partners\\\\xe2\\\\x80\\\\x99 global fund.
143	Falcon Edge
144	Korea Investment Partners (KIP), Samsung and China-based CITIC Capital and others
145	Lighthouse
146	KDDI\\\\xc2\\\\xa0
147	Tencent, Kalaari Capital and Private equity firm Multiples Alternate Asset Management
148	Stellaris Ventures & Others
149	CLP Holdings Group, Innogy, \\\\xc3\\\\x98rstead, and Tenaska
150	InnoVen Capital
151	Shunwei Capital,Quotient, Mayfield & Others
152	Vertex Ventures Southeast Asia (SEA) and India and Sistema Asia Fund, Fosun RZ Capital, Ventureast, and Endiya Partners.\\\\n\\\\n
153	Farm To Fork, Arts Alliance, The Syndicate Fund, Sven Hensen, Zeroth and Artesian Venture Partners
154	Axilor, Sprout Venture Partners and others
155	Xiaomi and Sequoia Capital India
156	Y Combinator
157	Fung Strategic Holdings
158	MakeMyTrip Limited
159	Vertex Ventures
160	Sequoia Capital India Advisors, Accel Partners and G Raghunandan
161	Flipkart
162	Nexus Venture Partners, Prime Venture Partners and Others
163	AJ Ventures and Jain International Trade Organisation (JITO)
164	Ventureast, Orios Venture Partners and the IAN Fund
165	Nexus Venture Partners, MGV, Liquid 2 Ventures, Hack VC, Emergent Ventures and Y Combinator
166	Denlow Investment Trust and Beenext
167	CDC Group plc\\\\xc2\\\\xa0
168	Hyundai, Edelweiss and Beenext, Dream Incubator, Sunjay Kapoor and Telama Investment
169	Xiaomi,PayU, Ribbit Capital and Omidyar Network
170	Saama Capital, SRI Capital, Beenext, and Pravega Ventures
171	Nexus Venture Partners, Omidyar Network and Shunwei Capital
172	Accel (formerly known as Accel Partners)
173	Ajay Relan and Vinay Mittal
174	MDI Ventures & Telkom Indonesia
175	Shunwei Capital, Tuscan Ventures, Ashish Goenka, VC firms India Quotient and Kae Capital
176	Info Edge (India) Ltd and Temasek
177	Info Edge (India) Ltd
608	Dunamis Ventures Pte Ltd
178	Insignia Ventures Partners, Lightbridge Partners & Kairos
179	Avtar Monga, chief operating office at IDFC Bank, Aditya Malik & Others
180	ResponsAbility
181	Stellaris Venture Partners, Vy Capital, Raghunandan G, and Ramakant Sharma
182	Base of Pyramid Asia (BOPA) Pte Ltd
183	Rishi Vasudev, Excelsior Investments, Ritesh Vohra, Praveer Kumar, Prashant Gupta and Others
184	Brand Capital and Others
185	Siddharth Agarwal, Mahavir Sharma, Amit Singal, 100 Co-founders Lab and others.
186	Creation Investments, Falcon Edge, Matrix Partners India and Zodius Capital
187	Kingsway FCI Fund, KCK Global & Others
188	Omidyar Network & Others
189	TPG Growth, The Rise Fund & Others
190	PayU & Others
191	AngelList, Rahul Khanna, Rajeev Arora and Ram Ramsundar.
192	Metaform Ventures, Hemant Luthra, Micro venture capital firm GEMS Partners and Others
193	Gray Matters
194	Fairfax
195	Allcargo Logistics, Navneet Education and Mahavir Agency
196	BeeNext , WEH Ventures and Sprout Ventures
197	Ventureast and Exfinity
198	Bharat Innovation, IDFC-Parampara Capital, Arthavida Ventures, Jitendra Gupta & Others
199	MakeMyTrip
200	Lindwall Family Investments LLC (LFI)
201	Amazon Alexa Fund & Dentsu Ventures
202	IDG Ventures, Accel Partners, Kalaari Capital and Others
203	TPG, Norwest Venture Partners, Sequoia Capital & Matrix Partners
204	Kantilal Patel
205	Sabre Partners, Puneet Dalmia & Others
206	Aspire Logistics LLC
207	Bhairavi Jani, Alok Divatia, Namrata Kaul, Sohail Hashemi, Aijaz Saleem
208	Anil Advani, Pramod Jain, Amrendra Reddy and Manish Satnaliwala.
209	NB Ventures and Others
210	Oman India Joint Investment Fund (OIJIF)
211	Sequoia Capital India, SAIF Partners, Y Combinator and Venture Highway
212	CapitalG, SAIF Partners and LGT Impact Ventures
213	Mumbai Angels Network
214	Alpha Capital
215	Paragon Partners
216	Saama Capital and Sequoia Capital
217	Spiral Ventures, Subho Ray and Samir Kumar
218	LetsVenture, Rajan Anandan, Basab Pradhan, Vivek Khare and Bijoy George
219	Rannvijay Singha
220	Brand Capital
221	Helix Investments
222	Lighthouse Funds & Thuasne Participations
223	Hyperplane Venture Capital and several angel investors
224	Menterra Venture & Artha Initiatives
225	Shorooq Investments, LetsVenture & Others
226	Accel Partners, Sequoia India, Y Combinator and others.
227	Sequoia Capital, Accel Partners & Raghunandan Gangappa
228	SoftBank Vision Fund & Info Edge (India) Ltd
229	Diageo India
230	Equanimity Venture Fund
231	One 97 Communications
232	Accel Partners, IDG Venture, Endiya Partners, pi Ventures, VH Capital, Axilor Ventures and Binny Bansal
233	Undisclosed Existing Investors As Well As The Tamarind Family Trust
234	Speciale Invest & Others
235	Leo Capital
236	Shiva Gunapu & Others
237	Unknown High Net-Worth Individuals
238	B Capital, International Finance Corporation (IFC), Accel Partners and IDG Ventures
239	IL&FS Private Equity, Kae Capital & Others
240	Unitus Ventures, Behram Vakil and Jerxis Vandrevala
241	Rairah Corporation
242	Sunil Munjal, Harsh Mariwala, Dalip Pathak and Others
243	Prime Venture Partners, Stellaris Venture Partners and Mayur Abhaya Srisrimal
244	Blume ventures
245	Kalaari Capital, Unilever Ventures and Blume Ventures
246	Credika and unnamed angel investors
247	LetsVenture
248	RS Shanbag
249	Insistor, Oikocredit
250	Ashish Kacholi, S Chand Group
251	Atul Gupta and Saurabh Rastogi
252	Amazon, Ashish Dhawan, Catamaran Ventures, NR Narayana Murthy.
253	Prashant Mehta, Mitali Pawar, Nikhil G and Bhavesh P, R Ranganathan, ONCOTRUST and Medintel Services Pvt. Ltd
254	Kalaari Capital, Omidyar Network and Accion Venture Labs
255	Amazon Inc. and Mastercard
256	Treebo
257	IndusAge Partners, Bill & Melinda Gates Foundation, Qualcomm Venture, ABB Technology Ventures, Omnivore, Blume Ventures, Venture Highway and BEENEXT
258	Accion Venture Lab, YourNest Venture Capital And Other Angel Investors
259	Exfinity Venture, Saha fund Partners, Arihant Patni of Patni Family Office, Anjali Bansal, Shardul Amarchand Mangaldas, Satish Khanna and Taparia family office.
260	Subhkam Ventures and Mohit Khadaria
261	Vishal Bali, Yogesh Misra, Thomas Assessments and others
262	ChrysCapital, Existing investors, Elevar Equity, LGT Impact, Omidyar Network and Kaizen Private Equity also participated in the round
263	Maheshwar Peri, founder and chairman of career information portal Careers360, and Jamshed Jeejeebhoy, director at Byramjee Jeejeebhoy Pvt. Ltd were among the angels
264	Accel Partners, Tiger Global And Others
265	Omidyar Network. Blume Ventures and Professor Shlomo Ben-Haim
266	Fireside Ventures
267	Matrix Partner, Amrish Rau, Investopad, Digital Currency Group, Hinduja Group, Lightspeed India, Eight Innovate, Amit Ranjan, Prashant Malik and others
268	Kae Capital Management
269	Fundamentum, SAIF Partners, Bessemer Venture Partners, RB investments & Others
270	SRI Capital, Waterbridge Ventures and ThinKuvate
271	BlueOrchard Finance Ltd, Hinduja Leyland Finance and IntelleGrow
272	Lok Capital
273	Mr. Manoj Prasad
716	DG Ventures India, Dewan Housing Finance Corp
274	Rajan Anandan, Madhusudhan Kannan, Jayant Kadambi, Puneet Gupta and Pradeep K Jaisingh
275	International Finance Corporation, Transamerica and others.
276	TR Capital
277	Shilpa Shetty Kundra
278	Pravega Ventures and Beenext
279	Line Ventures Corporation, Line Corp, Naver, Shinhan Bank and TS Investment
280	Biz Stone, Kunal Bahl, Rohit Bansal, Alagu Periyannan and Karthee Madasamy
281	Vidal Healthcare
282	Amazon
283	GEMS Advisory, Alok Mittal and Sachin Bhatia
284	Neoplux, OPPO, IDG Ventures India, Kalaari Capital, GREE Ventures and Summit Media
285	Omidyar Network, Nandan Nilekani, Blume Ventures, Helion Venture Partners
286	Sequoia Capital, Maverick Capital Ltd and HBM Healthcare Investments Ltd
287	Emery Capital, Blacksoil and Kalaari Capital
288	Bay Capital Investments and Others
289	SAR Group
290	Bessemer Venture Partners and Orios Venture Partners, JM Financials and MEMG
291	CBA Capital and others
292	Sequoia Capital, SAIF Partners and Kalaari capital
293	Baskar Subramanian, Saket Kumar, Gaurav Suri and Ankit Kesarwani
294	InfoEdge
295	Ranjan Pai, Apoorva Patni, Beenext Ventures,GrowX Ventures
296	HDFC Life, HDFC Asset Management
297	Sequoia Capital
298	Vertex Ventures, Accel Partners and Saama Capital
299	Avendus Finance Pvt. Ltd
300	Aegon NV
301	State Street Global Advisors
302	Trifecta Capital
303	HR Fund
304	Actis, Altimeter Capital
305	Venkat Subramanian, Sudhakar Pennam, and other tech investors from Silicon Valley
306	Matrix Partners, Bhavish Aggarwal, Ankit Bhati, Binny Bansal, Kunal Shah and Manish Patel.
307	SoftBank, Tiger Global and Apoletto Managers.
308	1Crowd, Ankur Capital
309	Amit Burman, SIDBI Venture Capital
310	Pi Ventures, Axilor Ventures
311	Micromax Informatics Ltd
312	Jessica Wong, Hiro Mashita, Xue Manzi and Yiyun Zhang.
313	Insight Venture Partners, Accel Partners and Tiger Global Management.
314	SucSEED Venture Partners
315	Kumar Vembu, Axilor Ventures
316	Initia Holdings,Vipin Agarwal and others.
317	Accion Venture Lab, Unicorn India Ventures and ISME ACE.
318	Ratan Tata
319	Amit Singhal and Unitus Seed Fund
320	Google, Kae Capital, IIFL, Singularity Ventures, GrowX, Tracxn Labs, Venture Catalyst, Patni family office and Axis Capital.
321	Alibaba, Helion Venture Partners, Bessemer Venture Partners, Ascent Capital
322	Ant Financials
323	Omidyar Network
324	CDC Group Plc
325	Man Capital LLP, Girnar Software, Others
326	Bhavesh Manglani, Suraj Saharan, Darshan Upadhyay, Sanjay Notani & Others
327	Montane Ventures
328	Sandeep Mathur
329	Meritech Capital Partners
330	Sistema Asia Fund
331	British and Indian Governments
332	Accel Partners, Sequoia Capital
333	Social Capital
334	Fullerton Financial Holdings Pte Ltd & Others
335	Bessemer Venture Partners, Stellaris Venture Partners, Axis Capital, Singapore, Jungle Venture Partners
336	Ashok Kumar Gajera
337	Tribe Impact Capital LLP
338	Michael & Susan Dell Foundation, LGT Impact Ventures
339	Kalpavriksh
340	Axis Capital Partners
341	Dewang Neralla, Mahesh Kothurkar,Atul Agarwal
342	S7 Group
343	Michael Patrick Hickey
344	Network 18
345	Sequoia and Jerry Yang
346	Mohammed Khan, Sameer Narayan & Others
347	Hinduja Leyland Finance, IntelleGrow
348	Ankur Capital
349	Lightspeed & Yuri Milner
350	Wargburg Pincus, Sequoia
351	Blume Ventures, HealthQuad and Fireside Ventures
352	PNC, Citi Ventures
353	Auxano Deals
354	Kris Gopalakrishnan, Pratithi Investment Trust, MEMG Family Office, S Gopal
355	Dr Devi Shetty
356	Startup Buddy,Amit Manocha and others
357	Tencent Holdings Ltd, Times Internet
358	Y Combinator, Khosla Ventures, Vy Capital and others
359	Unitus Seed Fund
360	Recruit Holdings, Sequoia Capital India, Accel Partners
361	Eight Roads Ventures India
362	Claris Capital, Mumbai Angels Network
363	Rohan Agila
364	Nederlandse Financierings-Maatschappij voor Ontwikkelingslanden N.V.
365	RuNet & Other
366	Amazon-Patni JV
367	responsAbility, Elevar Equity and Accel Partners
368	Morgan Stanley Private Equity Asia
369	Pankaj Chopra, Ankush Gupta
370	Tiger Global, Y Combinator
371	Indian fintech fund, Rainmatter
372	Sunil Kant Munjal, Hero Electronix\\\\xe2\\\\x80\\\\x99s corporate financing arm, Electronic Development Fund
373	Goldman Sachs, hedge fund & Others
374	Polaris Fund
375	Xiaomi Singapore, Shunwei Capital
376	The Chennai Angels
377	Lionrock Capital
378	Incubate Fund India, Anuj Agrawal
379	DMI Finance
380	Dr. Ranjan Pai
381	Unilever Ventures
382	LeapFrog Investments, Aspada Investment, Quona Capital
383	Avendus Finance
384	IFMR Capital
385	Chennai Angels, Lead Angels, LetsVenture
386	Pravega Ventures
388	Ventureast, Endiya Partners, Eight Roads Ventures, Touchstone Equities, BVR Mohan Reddy
389	Shivani Singh, Rahul Maroli, Mitesh Shah, Venture Catalysts, Alfa Capital, Green Shots Capital, Real Time Ventures.
390	Accel Partners
391	Axilor Ventures, Newfort Capital
392	Undisclosed Investors
393	HDFC Bank, Axis Bank
394	Scale Minds
395	Google
396	Hines
397	NB Ventures
398	Apis Partner, Eight Roads Ventures, Bamboo Capital Partners
399	Eduardo Saverin
400	Kalpvriksh
401	Somerset Indus Capital Ventures
402	IDG Ventures
403	Singapore Angel Network, Mumbai Angel
404	Village Capital
405	Aamir Khan
406	HT Media
407	Hyderabad Angels
408	Munesh Khanna
409	Canaan Partners
410	Rakesh Jhunjhunwala
411	Bessemer Venture Partners
412	Mohan Tanksale, Kiran Shetty, Darshak Shah, Mandar Mhatre
413	RoundGlass Partners LLC
414	Accel Partners, Sequoia Capital, RB Investments
415	Mountain Pain Capital, Suncoast Investments
416	InsuResillience Investment Fund
417	Costanoa, Learn Capital, Jyoti Bansal
418	Swati Gupta, Purnima Khandelwal, Maheshwar Peri, Sanjay Singh
419	Axilor Ventures, E-City VEntures Atul Goel
420	"Kedaraa Capital, Ontario Teachers\\\\'"
421	Ambarish Gupta, Aneesh Reddy, Bold Ventures, Vona Investments
422	Gaurav Gupta
423	Jones Lang LaSalle
424	Manish Poddar, Arun Garg, Parmeshwar Sharma
425	CIO Angel Network
426	Jayant Humbarwadi
427	Kae Capital Management, Nazara Technologies
428	IDG Ventures India
429	Alok Mittal, Deepak Jain, Ritesh Malik, Jim Schimdktke
430	Infosys co-founder Kris Gopalakrishnan
431	Matrix Partners India, Khosla Ventures
432	Titan Co Ltd, Tata Group\\\\xe2\\\\x80\\\\x99s watch and jewellery retailing firm
433	Lumis Partners
434	Quona Capital Management
435	Pioneering Ventures, Syngenta AG
436	Axilor Ventures, Kumar Vembu
437	Info Edge
438	IDG Ventures, IDFC-Parampara Fund
439	Singtel, Innov8, Harmony Partners
440	Wipro Consumer Care
441	GAIL India Ltd
442	Rugmini Menon
443	Girish Mathrubootham, Apurva Chamaria, Rohit Chanana
444	Nishit Sharma, Alok Srivastava
445	SSCBS Innovation, Incubation Foundation (SIIF)
446	Z Nation Lab
447	Skycatcher Fund, Aravind Sanka
448	Notion Capital, IDG Ventures
449	1Crowd
450	Vida Ventures, Dr. Aniruddha Malpani
451	Sabre Partners, MEMG CDC
452	Paytm
453	Global Institutional Investors
454	Axilor Ventures
455	Sandeep Aggarwal
456	Uniliver Ventures
457	Javelin StartupO Victory Fund
458	Undisclosed investors
459	Amit Patni
460	Gaja Capital
461	NB Ventures, MediAssist
462	Matrix PArtners, Accel
463	Startup Buddy, Apurva Chamaria,Sachin Arora, Bharat Gupta, Amit Manocha
464	Tencent, Softbank Group
465	Digital Garage
466	Sprout Angels
467	Blume Ventures, IDG Ventures & Indian Angel Network
468	Globevestor
469	Sequoia India, Helion Venture Partners, Beenext
470	Carpediem Capital
471	Epsilon Venture Partners, Tara India Fund IV and others
472	Das Capital, Axan Partners, Das Capital and IT Farm
473	Das Capital, Simile Ventures
474	Daffodil Software
475	Firoze Irani, Vipul Parekh, Ananda Kallugadde, Rajesh K Murthy
476	Shailesh Haribhakti
477	Aequs Group
478	Orient BlackSwan
479	Rahul Agarwalla, Keshav Sanghi, Batlivala & Karani Securities
480	Multipoint Capital,
481	Saama Capital and DSG Consumer Partners
482	SAIF Partners, YCombinator, Venture Highway
483	KStart Capital
484	Wellington Management, DG Ventures India, True North
485	Vida Ventures, Snehal Mantri, Anshu Bahadur
486	Xiaomi Technologies, Shunwei Capital
487	Amicus Capital
488	Accel Partners, Zephyr Peacock
489	Experian
490	Nexus, GREE Ventures
491	Innoven Capital
492	Undisclosed Investor
493	SAIF Partners, Helion Ventures, FIL Capital Management
494	DSG Consumer Partners, Sequoia Capital, Saama Capital
495	Rockstart Accelerator
496	Indian Angel network, IAN Fund
497	Matrix Partners India, WaterBridge Ventures, Whiteboard Capital, Sarbvir Singh
498	Blume Ventures, Indian Angel Network
499	Greenfield Advisory
500	Abhishek Bhatewara, Vivek Shah, Haitong Securities, Suraj Saharan, Paras Arora
501	Hunch Ventures, Spiral Ventures, 500 Startups, Singapore Angel Network, Citrus Payments
502	Helion Ventures Partners
503	Kotak Mahindra Bank
504	Incubate Fund, Sandesh Kirkire, Anand Kumar, Yogesh Chaudhary
505	ANI Technologies Pvt. Ltd
506	Mahindra & Mahindra and Infuse Ventures
507	TannCam Investment & Sistema Asia Fund
717	Chirag Nikunj Sheth & Others
508	IL&FS, Trust Capital, Rosy Blue Securities, Radhakrishan Damani and Rakesh Jhunjhunwala
509	YourNest Angel Fund
510	Stellaris Venture Partners, Mayur Abhaya, Rohit MA
511	Accel Partners, Exfinity Ventures, Partech Ventures
512	SRI Capital, BeeNext, Pravega Ventures
513	Michael and Susan Dell Foundation, Anand Mahindra
514	Bertelsmann India, Mayfield Capital, Saama Capital, Darrin Capital
515	HIS Co. Ltd, MakeMyTrip
516	Sequoia Capital India, Artiman Ventures
517	International Finance Corporation (IFC), Inventus Capital Partners, Accel Partners, Kalaari Capital, and Nandan Nilekani,
518	V Balakrishnan.
519	SoftBank Group, Sequoia Capital India, Lightspeed Venture Partners, Greenoaks Capital, Hero Enterprise
520	RPG Enterprises
521	Triodos Investment Management,
522	Venture Highway, Alok Mittal, Mohit Agarwal, Anuj Gupta,
523	Warburg Pincus
524	Sachin Tendulkar, P.V SIndhu, Pullela Gopichand
525	Raman Roy, Arvind Uppal, Sonu Bhasin, G Ravishankar
526	WRV Capital, Qualcomm Ventures, Edelweiss Private Equity, Artiman Ventures
527	IAN Fund, Beenext, Indian Angel Network
528	Anand Chandrasekaran, Apurva Chamaria, Ritesh Malik, Ashish Toshniwal, Ajeet Khurana
529	Accel Partners,
530	China Lodging Group
531	Sequoia Capital India, SAIF Partners, Nexus Venture Partners and Blume Ventures,
532	Chennai Angels, Keiretsu Forum & Others
533	Rohit Nanda, Rajit Nanda, Smarak Bhuyan, Sashwat Brahma,
534	ECL Finance
535	Rising Stars, Manish Amin, Pallav Pandey, Chavi Jafa
536	DSG Consumer Partners, Saama Capital
537	Shamik Sharma, Aprameya Radhakrishna
538	Susquehanna Growth Equity LLC
539	Incofin Investment Management.
540	AdvantEdge
541	Sandway Investment Ltd, Pearl Brook Holdings, Silo Holdings and Al Nour
542	LG Chandrasekhar
543	InnoVen Capital India
544	AV Thomas Group
545	Vertex Ventures, Prime Venture Partners.
546	Zomato Media Pvt. Ltd
547	Beenext
548	Battery Road Digital Holdings LLC
549	Mehul Shah
550	Kae Capital
551	Rajan Anandan, Jamil Khatri, Ravi Iyer, Raghav Bahl
552	Aniruddha Malpani, Startup Oasis
553	IL&FS Investment Managers, Omidyar Network.
554	Capillary Technologies, Whiteboard Capital, YourNest Angel Fund, Rajul Garg
555	Blume Ventures, Goldbell Group, Anurag Srivastava, Shailesh Rao, Amiya Pathak, Rajesh Yohanan and Rahul Garg
556	Rivergate Capital,
557	Keiretsu Forum
558	Triton Investment Advisors
559	Kashyap Deorah, Anand Sankeshwar, Deepak Jain, Sadashiva NT, Arjun Mehta, Satish Kaul, Anindya Ghose
560	Kunal Shah, LetsVenture, Anupam Mittal, Hetal Sonpal
561	Narottam Thudi, Shireesh Palle
562	Cismat Cargo Services Pvt. Ltd.
563	Rajasthan Angel Investor Network
564	DSG Consumer Partners, Eight Roads Ventures India
565	SIDBI
566	JSW Ventures
567	Anuj Puri, Redcliffe Capital, Artha India Ventures, Siddharth Kothari, Apoorv Ranjan Sharma,
568	R. Jayakumar, Vaibhav Vohra, Aditya Vazirani, Rhea Vazirani, AVN Business Solutions, Dreamweaver Investments
569	Rahul Dev Kumar, Rajesh Mahajan, Ankit Sharma and others
570	Venugopal Dhoot, Ajay Bhatia, Tarun Khandelwal, Ganpat Singhvi, Mandhian family & Others
571	Factor[e] Ventures
572	Tom Varkey
573	Incubate Fund, Sanjay Shenoy, Mridul Upreti,
574	Softbank
575	Nazara Games
576	Tekne Capital Management
577	Bennett, Coleman and Company Ltd (BCCL),
578	InCred Finance, Fullerton India Credit Company Ltd
579	InCred, Krishnakumar Natarajan, Ravi Bhardwaj
580	Green Visor Capital LP II, IA Venture Strategies Fund II LP, Boillot Family Trust, Russell M Byrne, The Oliver R. Grace, Jr. Millennium Trust, SF Capital Investments LP
581	Abhinav Gupta,
582	Undisclosed HNI\\\\xe2\\\\x80\\\\x99s
583	iSquare Global,
584	Social Alpha, Rajan Anandan, Rajeev Ahuja, Kshitij Arora
585	Blume Ventures. Lenovo Capital and Incubator Group (LCIG)
586	Riverwood Capital, Sequoia Capital India, Nexus Venture Partners, Tenaya Capital
587	IIT Ropar, Imanpreet Singh Arora, Sidharth Rozario, Saurabh Abichandani, Shikhar Gupta,
588	Haresh Chawla
589	JS Capital Management, Social Capital, Horizons Ventures,
590	VAMM Ventures, Raksul, Dena
591	PBS Srinivas, Vinod Martin,
592	Sistema Asia Fund, C31 Ventures, Qualgro.
593	Accel Partners, IDG Ventures, Kalaari Capital,\\\\xc2\\\\xa0 UC-RNT fund
594	idal Health, growx ventures, Capier Investments, Globevestor & others
595	Small Industries Development Bank of India (SIDBI)
596	Ward Ferry Management and Karst Peak Capital,
597	Sequoia India, Sofina s.a., Zodius Capital, Kris Gopalakrishnan, Lakshmi Narayanan,
598	Reliance Corporate Advisory Services Ltd
599	Infuse Ventures, JLL
600	Asset Management (Asia) Ltd, Digital Garage Inc
601	Kalaari Capital, Nexus India Capital Advisors
602	International Finance Corporation, Rocketship, Accel Partners, Jungle Ventures, Shailesh Rao, Venture Highway
603	BCCL
604	Blume Ventures, Contrarian Capital India Partners, Emergent Ventures India, Pallav Nadhani, Ashish Gupta, Sharad Sharma, Sirion Labs
605	India Quotient, Shunwei Capital
606	Sreeram Iyer, Suvo Sarkar, Anita Gupta, Likemind Ventures
607	Mitsui & Co.
609	Venture Catalysts, Sourav Ganguly, Ankit Aditya, Moksh Sports Ventures
610	Fireside Ventures, Apurva Salarpuria, Sidharth Pansari, Sprout Capital
611	SBI-FMO Fund, Bessemer Venture Partners, Catamaran Ventures
612	Corvus Ventures, MAPE Advisory Group
613	500 Startups, Purvi Capital, Rajan Anandan, Abhishek Gupta
614	Indian Angel Network
615	Brigade Innovations LLP, TV Mohandas Pai, Suhail Rahman, Bobby Reddy, M George Oommen
616	Blacksoil Capital Pvt. Ltd
617	Sequoia Capital, Grey Orange, Rajesh Ramaiah, Anshuman Das, Rishi Das
618	IDG Ventures India Advisors, Jungle Ventures
619	One97 Communication Ltd
620	Uber Technologies Inc, Amaya Capital LLP
621	Xelpmoc
622	ain Capital Ventures, Renaud Laplanche
623	Francesco Cara
624	ABI-Showatech (India) Ltd
625	Kae Capital, M&S Partners,
626	Subramani Somasundaram, Sundeep Sahni, Mayank Mittal & Others
627	Harmeet Bajaj, Pameela P, Fusiontech Ventures & Others
628	Sunil Kalra, Aditya Singh, Rishi Srivastava, Rajan Anandan
629	Blume Ventures, NB Ventures, Nspira
630	Stellaris Venture Partners,
631	Tencent Holdings
632	Yuvraj Singh
633	Goldman Sachs
634	Indian Angel Network, Anand Mahindra
635	HBM Healthcare Investments, Maverick Capital Ventures, Sequoia India, Omidyar Network and Kae Capital
636	Amen Dhyllon
637	RoundGlass Partners
638	Grace Grace Techno Ventures LLP, Rajul Garg & Other undisclosed investors
639	TVS Motor Company
640	Emerging India
641	lockchain ecosystem Global Advisors, Horseferry
642	Blume Ventures, Indian Angel Network, Kunal Shah, Sandeep Tandon
643	Arun Patodia, Bharat Kedia
644	500 Startups, IvyCap Ventures
645	Harsh Mahajan, Farhan Naqvi, Sreepathy Viswanathan
646	Sundaram Finance Holdings
647	SBI (Stand Up India Scheme)
648	SQue Capital
649	Bodhtree Consulting Limited
650	Norwest Venture Partners
651	Mohan Alexander, R. Natarajan, Vikrant Varshney, Amit Sinha
652	Pawan Borle, Nirmal Singh, Manish Prasad, Vineet Varma, Nick Haulkoury, Abhai S. Rao
653	Dr Ramesh Ayyala, Satya Muthyala
654	Cao Yibin, Huang Wei, Madhusudan E,
655	Yes Bank
656	Unicorn India Ventures, Venky Krishnakumar, Suresh Shankar, Vivek Bhargava
657	Venture Catalysts, Alfa Capital, Green Shots Capital, Real Time Ventures
658	Artha India Ventures, Singularity Holdings, Rajan Anandan, Girish Mathrubootham
659	Transamerica
660	Nexus Venture Partners, Founders Fund
661	Nexus Venture Partners, Omidyar Network
662	Fairfax Holdings
663	Tekne Capital Management LLC
664	undisclosed investors
665	Sequoia India, NEA, Prime Venture Partners
666	Nexus Venture Partners, Mekin Maheshwari
667	Alphard Maritime Group
668	Cross Border Angels & Experts, Rajasthan Angel Innovators Network, The Chennai Angels
669	YouWeCan Ventures
670	BLIP Initiatives
671	Eight Roads Ventures
672	Lightspeed India Partners, Endiya Partners, 3one4 Capital Advisors LLP, Startupxseed Ventures LLP
673	91maker.com
674	IIFL Seed Ventures, Kae Capital, FJ Labs, Singularity Ventures, GrowX, Tracxn Labs, Axis Capital
675	Manipal Education and Medical Group (MEMG), SAR Group, The Grover Trust
676	iBhubs
677	UC-RNT Fund, Matrix Partners, alcon Edge Capital, DSG Consumer Partners
678	General Catalyst, Founder Collective
679	Endiya Partners, Ventureast
680	Mekin Maheshwari, Bharat Vijay, Krish Seshadri, Amar Arsikere
681	Kae Capital, India Quotient, IFMR, and MAS Financial Services Ltd
682	Mohit Srivastav, Kishore Ganji, Venkat Vallabhaneni, Rajeev Menon
683	Seedfund, RB International
684	Snow Leopard Ventures, Alto Partners
685	Gujarat Venture Finance Ltd
686	The Chennai Angels, Anthill Scale Ventures, Esvee Technologies Inc, Inc95 Consulting
687	Aparup Sengupta, Devendra Reddy,
688	Kalaari Capital, Udayan Goyal
689	SAP.iO, Unilazer Ventures
690	Abhinav Bindra, Gaurav Marya
691	Zeta
692	Vy Capital, SAIF Partners, Accel Partner, Bessemer Venture Partners
693	Clairvest Group
694	International Finance Corporation
695	Accel Partners, Nandan Nilekani,
696	Dutch government fund
697	Falcon Edge Capital,\\\\xc2\\\\xa0 Capital Advisers
698	Asuka Holdings, YouWeCan Ventures, Beenext, Beenos, M&S Partners
699	Nimit Panigrahi
700	Hinduja family
701	50K Ventures
702	Rainmatter
703	Rainbow Digital Services Pvt. Ltd, ILearnFinance Academy Pvt. Ltd.
704	Indian Angels Network, LetsVenture
705	Deepak Nathani
706	Ajay Relan, LetsVenture
707	Vertex Ventures, C31 Ventures
708	Trifecta Capital Advisors LLP, Prathithi Investment Trust, RNT Capital, Gokul Rajaram, Aditya Agarwal, Ruchi Sanghvi & others
709	Satoshi Studios
710	Anand Chandrasekaran
711	Luxasia Group
712	GVFL, Unicorn India Ventures
713	Vellayan Subbiah, Jonathan Boutelle, Rajan Anandan,\\\\xc2\\\\xa0 Rahul Chawla, Salil Donde, Amit Ranjan, Govind Rajan & Others
714	Times Internet, GVFL
715	Varsha Rao, Surojit Chatterjee, Nirav Choksi & Others
718	Aakrit Vaish, Swapan Rajdev, Sushill Jiwarajka
719	Impanix Capital
720	GEMs
721	Infibeam, CCavenue
722	IdeaSpring Capital
723	Kstart Capital
724	SAP
725	Innovations East
726	Rocketship
727	Jungle Ventures
728	Ayesha Takia Azmi, Abu Farhan Azmi
729	Dr. Ritesh Malik
730	SoftBank Group
731	Dheeraj Pandey, Rajesh Yohannan, Akash Garg
732	Ankur Capital, Hyderabad Angels
733	Gokaldas Exports Ltd
734	JLL, 1Crowd
735	Eagle10 Ventures
736	Lightspeed Venture Partners, Vy Capital,
737	Ratan Tata, Nandan Nilekani, Uday Kotak, Vijay Shekhar Sharma, Kiran Mazumdar-Shaw, Rajiv C Mody
738	Blue Orchard
739	Lahiri Music\\\\xe2\\\\x80\\\\x99s family office
740	PV Sahad, Sandeep Shroff, Rahul Gupta
741	Soma Capital, Great Oaks Ventures, 122 West Ventures
742	Nasper, Accel India, SAIF Partners, Bessemer Venture Partners, Harmony Partners, Norwest Venture Partners
743	Rohto Pharmaceutical
744	Lightspeed India Partners, Waterbridge Ventures
745	Mathew Cyriac, Florintree Advisors,
746	Bertelsmann India
747	Matrix Partners India
748	Quadria Capital Advisors
749	Rohitash Gupta
750	Unicorn India Ventures & Others
751	Aspada Investments
752	Stellaris Venture Partners, Helion Venture Partners, Powerhouse Ventures, Gokul Rajaram, Girish Mathrubootham, Aneesh Reddy, Vispi Daver
753	Kalaari Capital, Norwest Venture Partners
754	Keyur Joshi, Pavan Bakeri
755	Koen Bouwers, Lomesh Agarwal, Jeroen Mensen, Pablo van den Bosch & Others
756	Deepak Kulkarni, Sandeep Pangal
757	Zephyr Peacock India
758	FreakOut Group, Blume Ventures, Herb Madan, WaterBridge Ventures
759	Mahindra Partners, Eight Roads Ventures, F-Prime Capital Partners
760	Accel Partners, Shunwei Capital
761	YouWeCan Ventures,
762	Ishwar Singh,Farhaan Shabbir
763	Bessemer Venture Partners, Orios Venture Partners, Trifecta Capital,
764	Labruyere Eberl\\\\xc3\\\\xa9
765	Lightspeed India Partners, Blume Ventures, CyberAgent Ventures, GrowX Ventures, IMJ Investment Partners
766	Rajan Anandan, L.D Sharma, Saurabh Arora
767	Mahindra and Mahindra Financial Services
768	Accel Partners, Nandan Nilekani\\\\xe2\\\\x80\\\\x99s NRJN Trust, Mistletoe, Qualcomm Ventures, M&S Partners
769	Philippe Bouchet
770	Sushil Kumar, Sandeep Singh
771	Ivycap Ventures Advisors, Singularity Ventures and Ravi Dhariwal
772	Mayfield, Nishant Rao, Dileep Nath
773	DHI Group Inc, Prime Venture Partners, Beenext, Beenos, Digital Garage, BizReach
774	Blume Ventures, Contrarian Capital, 91springboard, Emergent Ventures, Abstract Ventures, Anthill Ventures, Axilor Ventures
775	MAPE Advisory Group, R Ramaraj, Corvus Ventures
776	Redcliffe Capital
777	Urrshila Kerkar,
778	SIMI Pacific Pte
779	mall Industries Development Bank of India (SIDBI)
780	Tolaram Inc, Mountain Pine Capital
781	Benori Ventures LLP
782	Jacqueline Fernandez
783	Nibhrant Shah, Anandbir Singh, Anirudh Sheth, Pratik Singhi, Vikram Mehta, Murali Nair
784	Gaurav Kachru, Sundeep Singh Sahni, Jatin Aneja, Arun Malhotra
785	IndiaNivesh Venture Capital Fund
786	Ideaspring Capital
787	SIDBI Venture Capital Ltd, Kalaari Capital
788	Ankit Nagori
789	Ravi Garikipati, Surot Chatterjee, Ashish Agrawal, LG Chandrasekhar, Sashi Reddi
790	Ligthbox Ventures II, Lightbox Expansion Fund, Sequoia Capital India, RuNet South Asia, RB Investments
791	SoftBank Vision Fund, Lightspeed Venture Partners, Sequoia Capital India Advisors, Greenoaks Capital Partners
792	WGG International
793	pi Ventures, Axilor Ventures, 500 Startups, Binny Bansal
794	Arun Tadanki, Aditya Verma
795	Times Internet,Matrix Partners
796	DAH Beteiligungs GmbH
797	S. Xavier Britto
798	Orios Ventures Partners, Team Builder Ventures, Omidyar Networks
799	Agnus Capital, Khattar Holdings
800	GardX International
801	Cross Border Angels & Experts
802	BlackSoil Capital Pvt. Ltd
803	Poshika Financial Ecosystem
804	SoftBank Group Corp
805	Calcutta Angels Network (CAN), Augment Ventures
806	Vishwadeep Bajaj, Harsh Kundra, Nandkumar Rane, LN Buddharaju, Anupam Tyagi
807	Ventureast, Endiya Partners, Eight Roads Ventures, F-Prime Capital Partners
808	Lightspeed Venture Partners
809	Langoor
810	Quona Capital
811	Chandigarh Angels Network, Social Alpha and other unnamed angel investors
812	Bhupen Shah, Jayesh Parekh, Sanjay Sathe
813	Sandeep Aggarwal, Gautam Chhaochharia, R Balachandar
814	Bennett, Coleman and Company Ltd
815	Undisclosed angel investors
816	Alibaba
817	Atul Nishar
818	Aneesh Seth, Tushar Mittal
819	SIDBI Venture Capital Fund
820	Star India Pvt Ltd
821	IDFC Parampara Early Stage Opportunities Fund
822	National Science and Technology Entrepreneurship Development Board
823	IDG Ventures India, Michael & Susan Dell Foundation, Draper Associates, Unitus Seed Fund
824	Private Sector Banks (Debt Funding)
825	IDG ventures, Axilor Ventures, Emergent Ventures, Indian Angel Network
826	Kae Capital, SEGNEL Ventures
827	Deepak Gurnani
828	Times Internet Ltd
829	Singapore Angel Network
830	Asuka, Pravega Ventures, BEENEXT
831	Cyber Carrier
832	Florintree, Mathew Cyriac, Chidambaram Palaniappan, Bharat Sheth
833	IDG Ventures, Blume Ventures, Saha Fund,
834	Puneet Gupta, Nimitt Desai & Others
835	GREE Ventures, Kalaari Capital and IDG Ventures India, Summit Media, Atul Goel, and Gurpreet Singh
836	Sujeet Kumar, Bhupender Singh, Yashish Dhaiya
837	Microsoft, eBay, Tencent Holdings
838	Kalaari Capital, Rakesh and Rajesh Jhunjhunwala
839	L\\\\xe2\\\\x80\\\\x99Occitane
840	Shripad Nadkarni, Nandu Nandkishore
841	Ravi Saxena, Sandeep Raju,
842	Sequoia Capital, Kinzon Capital
843	FTV Capital, Zodius Capital
844	Ojas Ventures
845	Mahavir Sharma, Vishal Jain, Rohit Sethi, Gaurav Luniya
846	Carlyle Group, Tiger Global
847	Vikas Bajaj, Amit Kharbanda,
848	3one4 capital
849	Ankit Gupta, Puneet Motihar
850	Verlinvest
851	Mayfield India, 3one4 Capital, Sistema Asia Fund, Neoplux Technology Fund
852	Vinod Martin, Hemant Kaul, Prof. Ram Kumar Kakani & Others
853	JSW Ventures, VenturEast
854	Meher Roy, Nikhil Arora, Meet Kanodia, Krit Sankalp, Nitish Singh, Risabh Gupta
855	Om Chaudhry
856	Malini Patel, Stelcore Management Services, Anjani Prasad
857	Samridhi Fund
858	Intex Technologies
859	Satveer Thakral, LetsVenture, Mumbai Angels
860	B Capital Group, Ignition Partners, Greycroft, e.ventures,\\\\xc2\\\\xa0 Eight Roads Ventures
861	Satya D Sinha, Gyanendra Singh
862	IFMR Capital Finance
863	Jaarvis Accelerator
864	Batlivala & Karani Securities, Venture Works
865	RB Investments, SAIF Partners, Bessemer Venture Partners
866	Earlsfield Capital
867	pi Ventures, Blume Ventures
868	Temasek Holdings
869	Japan Vyas, Tarun Adlakha
870	Facebook FB Start programme
871	RB Investments, Sequoia Capital
872	Ganesh Natarajan
873	Sistema Asia Fund, Amereus Group, Helion Ventures
874	Al Dhaheri family
875	ThinQbate
876	Accel Partners, IDG Ventures, Endiya Partners, pi Ventures, VH Capital, Axilor Partners
877	Vertex Ventures, Lumis Partners
878	Anil Jain & other HNIs
879	Kleiner Perkins, Goldman Sachs, Pine Brook
880	Mohit Joshi & Others
881	Mahalingam K, Girish Mathrubootham
882	Infibeam
883	Vikram Sud
884	Vijay Shekhar Sharma, Rajan Anandan, Kunal Shah, Girish Mathrubootham, Punit Soni, Anand Chandrasekaran, Sunil Kalra, Utsav Somani, Vishal Gondal, Vikram Limaye
885	PayU, Ribbit Capital, Omidyar Network
886	Quake Capital
887	Shunwei Capital
888	Kalaari Capital Partners, Qualcomm, 3ONE4 Capital Advisors, UC-RNT
889	SRI Capital
890	Aprameya Radhakrishna, Deepak Natraj, Girish Mathrubootham, Mahesh Murthy, Pallav Nadhani, Pavan Ongole, Sandeep Mathur, Vijay Shekhar Sharma & Others
891	Kalaari Capital, SAIF Partners, Steadview Capital, Sequoia Capital
892	Konglo Ventures, White Unicorn Ventures, LetsVenture
893	BookMyShow
894	Facebook FBStart
895	Bennett, Coleman and Co. Ltd (BCCL)
896	Softbank Ventures Korea, IMM Investment
897	Indian Angel Network (IAN), BEENEXT, The Chennai Angels, Sunil Munjal
898	Kunal Shah, Sandeep Tandon, Nitin Saluja, Gagan Goyal
899	Pankaj Rungta, Yogesh Agarwal
900	Ishan Manaktala
901	Chandigarh Angels, Ashish Gupta, Rohit, Ashish Chand, Sunil Singh & Others
902	Brand Capital, Paragon Trust
903	Sands Capital, IFC, Accel Partners, Flipkart, Sanjiv Rangrass
904	TV Mohandas Pai, V Balakrishnan, PV Srinivasan
905	K2 Capital
906	Anand Chandrasekaran, Rajiv Mehta, Ramakant Sharma
907	Vishal Malik
908	DanGold Investment Corp
909	Marico Innovation Foundation (MIF), Villgro
910	India Nivesh Growth Fund, Sixth Sense, TCI Ventures
911	Jasper Infotech Pvt Ltd
912	Alibaba Pictures
913	BlackSoil Capital Pvt Ltd
914	Mayfield India, Trifecta Capital
915	Vedanta Capital, William Campbell, Toos N Daruvala
916	Aavya Ventures
917	Vinod Martin, Evan Lim, Kanchan Ghoshal, Ram Kumar Kakani
918	Ronnie Screwvala
919	Zishaan Hayath, Karan Chellani, Mohit Satyan
920	IDG Ventures, Endiya Partners
921	Lohia Group, Andre Hoffman
922	Deutsche Telekom Strategic Investments & Others
923	Vividhity Ventures
924	Blume Ventures, Girish Mathrubootham, Aprameya Radhakrishna
925	Nexus Venture Partners, Blume Ventures
926	Axilor Ventures, Parampara Early Stage Opportunities Fund & Others
927	Harsh V. Pant, Ratheesh Raveendran
928	Nexus Venture Partners, Innoven Capital
929	Quarizon
930	Menterra Social Impact Fund, Unitus Seed Fund
931	Tencent,\\\\xc2\\\\xa0 ru-Net, RSI Fund, Thrive Capital
932	India Quotient and others
933	Ajith Nair, Anish K
934	Amajit Gupta, Praveen Dubey, J.P. Bhatt
935	Rajasthan Venture Capital Fund
936	Mumbai Angels Network, Fireside Ventures, Singapore Angel Network
937	SB Ventures
938	Singularity Ventures
939	Indian Angel Network, Native Angels Network
940	SD Group
941	Bessemer Venture Partners, Stellaris Venture Partners, Jungle Venture Partners, Axis Capital
942	IvyCamp Ventures
943	Umang Moondra
944	Undisclosed investor
945	Singapore based investor
946	YourNest Fund II
947	CapitalG, Sequoia India
948	India Educational Investment Fund
949	Indochine International
950	Iron Pillar and IIFL, Blume Ventures, Omidyar Network
951	GMO Japan, Neelesh Bhatnagar
952	East Ventures & Others
953	Sharad Sharma, Rajan Anandan,\\\\xc2\\\\xa0 Amit Ranjan, Alok Mittal & others
954	IvyCap Ventures
955	Senovo, Unternehmertum Venture Capital, Alexander Bruehl
956	ABM Knowledgeware
957	V Aanand R
958	Rajesh Yohannan, Puthen & Cole
959	Sanjay Mehta & Others ( The Ten Minute Million)
960	The Ten Minute Million
961	Chandigarh Angels Network (CAN)
962	SQue Capital, Grace Capital Ventures, Soham Vencaps
963	DSG Consumer Partners, American Express Ventures, Cyber Carrier VC, AdvantEdge Partners
964	Songhyun Investment
965	GEMs Advisory, Quarizon
966	Franchise India
967	Lakshmi Vilas Bank & undisclosed HNIs
968	Grace Capital Ventures
969	Info Edge (India)
970	Ajith Sukumaran, Currae Healthtech Fund
971	Eros Labs
972	The Chennai Angels, LetsVenture
973	Investors from Mumbai Angels & LetsVenture
974	Mohan Kumar, V. Balakrishnan
975	Edelweiss Private Equity
976	Venk Krishnan, MJ Aravind, Vikram Kotak, Jayant Davar,\\\\xc2\\\\xa0 Ramkumar Nishtal, Arjun Sharmaa
977	Calcutta Angel Network, Appliyifi
978	PayU
979	Kalaari Capital
980	Max Ventures and Industries
981	Unicorn India Ventures
982	Verlinvest SA
983	Axilor, undisclosed investors
984	Siddhartha Gupta, Ashvin Chadha
985	India Quotient, Rajul Garg, Rajesh Yabaji, Chanakya Hridaya, Ramasubramaniam B, Vishwanathan, Nobel House, Sunstone Capital
986	Zodius Technology Opportunities Fund, Matrix Partners
987	FiNC, GHV
988	Lead Angels Network, Anbu Pandian, Prabhakar MR & Others
989	V. Krishna Prasad, Bhupen Shah & Others
990	Swastika Investmart Ltd
991	Digital Financial Service Lab
992	WRV Capital and IndusAge Partners, Infosys Innovation Fund
993	Emerald Media, Premji Invest
994	Sequoia Capital India, North Base Media, Aarin Capital, 3one4 Capital, Axilor Ventures, Kunal Shah, Sandeep Tandon
995	Epsilon Venture Partners
996	GEMS Advisory, Quarizon
997	KTB Network, SAIF Partners, BEENEXT, Digital Garage
998	Ajith Nair
999	Cyber Carrier CL
1000	International Financial Corporation
1001	Dr. Apoorv Ranjan Sharma, Anil Jain, Anuj Golecha, Krishna Jhunjhunwala, Anirudh Damani
1002	Indian Angel Network, Let\\\\xe2\\\\x80\\\\x99s Venture
1003	Fireside Ventures & Others
1004	HCS Venture capital fund
1005	Taxmann
1006	Kaushal Agarwal, Harminder Sahani, KK Mehra, Pranay Jivrajka, Navjot Saini
1007	Ivy League Alumni Angel Network
1008	Incubate Fund, Lead Angels Group & Others
1009	Pradyumna Dalmia, S. Somasegar & Others
1010	Ajay Relan
1011	The Chennai Angels, Ritesh Mehta, Aruna Ganesh Ram
1012	Sachin Bansal, Binny Bansal
1013	Nandan Nilekani
1014	Lead Angels, Mumbai Angels, LetsVenture, Girish Mathrubootham, Anbu Pandian
1015	WaterBridge Ventures,
1016	CoCreate Ventures
1017	RB Investments,\\\\xc2\\\\xa0 Kaleden Holdings
1018	Kedar Lele, GHV Accelerator
1019	Sequoia Capital India, Accel Partners
1020	Calcutta Angels Network, LetsVenture, Anupam Mittal, Currae Healthtech Fund
1021	Raman Roy, Ashish Gupta, Yogesh Andlay, Vaibhav Jain
1022	3one4 Capital, Mumbai Angels, Aarin Capital
1023	Unilazer Ventures,
1024	Gati Ltd
1025	Aavishkaar Venture Management
1026	Ameera Shah, Vivek Bhargava
1027	Chandigarh Angels Network
1028	A M Sikander
1029	IDG Ventures, Accel Partners
1030	Justin Kan, Qasar Younis, Paul Bucche, Susa Ventures, Kima Ventures, Axan Venture, SCM Holdings
1031	India Quotient
1032	ADAG Reliance Private Equity
1033	YourNest Angel Fund, iSON
1034	Gleevoaz Ventures
1035	Arun Seth, T.V. Mohandas Pai, Anand Chandrasekaran, Deepak Ghaisas
1036	Kalaari Capital, IDG Ventures India
1037	Sequoia India, BEENEXT, Helion Ventures
1038	SAIF Partners, IDG Ventures India
1039	RTP-HC, Wonder Ventures, Techstars Ventures & Others
1040	Pramod Bhasin
1041	Times of India Group & Existing investors
1042	R.S Sharma
1043	Omnivore Capital
1044	Hitesh Windlass
1045	Asuka Holdings
1046	Devdeep Singh
1047	Kae Capital, Khosla Impact
1048	Softbank Group
1049	Vivek Bhargava, Ameera Shah
1050	YMS Mobitech
1051	Sanjai Vohra, V. Bunty Bohra
1052	Undisclosed multiple investors
1053	Delta Partners, Sequoia India,\\\\xc2\\\\xa0 Mayfield, Blacksoil, Trifecta Capital
1054	IDG Ventures, Axilor Ventures
1055	Lightspeed Venture Partners India, Lightspeed US
1056	Dr. Pooja Gandhi
1057	Venture Highway
1058	Lightspeed India Partners, SAIF Partners, India Quotient, Venture Highway
1059	Blume Ventures, BEENEXT, Barkawi Holdings GmbH, TM Service Technology Holdings Gmbh, Sreevathsa Prabhakar
1060	Girish Mathrubootham, VC Karthic, Miten Mehta, Umasankar Nistala, Rakesh Patel, Akash Bhavsar, Jeevanandhan Rajagopal, Vikas Chadha & Others
1061	Reliance Entertainment
1062	Paytm, Aprameya Radhakrishna, Subramanya Venkat, Venk Krishnan
1063	Manish Maheshwari, Contrarian Vriddhi Fund
1064	Mohit Sharma
1065	Prime Venture Partners, Kalaari Capital
1066	Silver Range Investments, Lumina Datamatics, Shun Yoshida & Others
1067	Anand Sankeshwar, Yang Shu
1068	Shekhar Sahu, Nitesh Pant
1069	Dileep Bhatt, Milind Chaudhary
1070	Krishna Rokhale
1071	Menterra Social Impact Fund
1072	Blume Ventures & Others
1073	TVS Group
1074	Mahindra Univeg
1075	Recruit Holdings
1076	American Express Ventures, Sequoia Capital
1077	IDG Ventures, Indian Angel Network (IAN), YourNest Angel Fund
1078	Viraj Tyagi & Others
1079	Mahindra Holidays & Resorts India Ltd
1080	BeeNext, TV Mohandas Pai, Kunal Shah, Sandeep Tandon
1081	Naveen Arya, Tarun Joshi
1082	Accel Partners, Jungle Ventures, SeedPlus
1083	Xchange Investors NV, TransGlobal FZC
1084	3One4 Capital
1085	Vijay Shekhar Sharma, Pravin Gandhi,\\\\xc2\\\\xa0 Smart Start Fund; Kunal Shah,\\\\xc2\\\\xa0 Sandeep Tandon, Vishal Gondal, & Others
1086	Mistletoe, M&S Partners
1087	Zodius Capital, Kalaari Capital, Qualcomm Ventures, Russian venture capital fund Ru-Net, Mumbai Angels
1088	White Unicorn Ventures, Kae Capital, Mumbai Angels
1089	Indian Angel Network, Healthsquad, Axilor Ventures
1090	Kiran Mazumdar-Shaw, Unitus Seed Fund
1091	Ventureast Fund Advisors
1092	Sumpoorna Group
1093	Helion Venture Partners, BeeNext
1094	HAX Accelerator
1095	HDFC, Faering Capital, Elevate Sports
1096	Sanjay Nayar, Vikram Sud, Anil Jaggia, Narayan Seshadri
1097	Radhakrishnan Natarajan & Others
1098	undisclosed investor
1099	Emerald Media
1100	Nitin Passi, Manickam Mahalingam, Udaan Angels, Rajesh Arora, Arkas Industries
1101	GrowX Ventures, Sunil Kalra, Arun Venkatachalam,\\\\xc2\\\\xa0 Badal Malick
1102	India Quotient, FAO Ventures, Indian Angel Network, Tushar Singh, Ranjan Sharma
1103	Rajan Anandan
1104	Virendra Patel
1105	Gray Matters Capital
1106	Quarizon Consultancy Services LLP
1107	Karan Bhagat
1108	Punit Soni
1109	ByteDance, Arun Sarin, Matrix Partners, Sequoia Capital India, Omidyar Network,\\\\xc2\\\\xa0 Falcon Edge
1110	DSG Consumer Partners
1111	Mayank Shah, Shreyans Shah
1112	Vishnu Bhat, Rajiv Lunkad, Naresh Ravindranath
1113	Boman Irani, Dhruv Chitgopekar, Prantik Dasgupta
1114	Hemant Sahni
1115	Bravia Capital
1116	Newbie Promoters
1117	General Catalyst Partners
1118	Hyderabad Angels, TLabs
1119	Lightbox Ventures, Axis Capital & Others
1120	Saama Capital, Raghunandan G, Aprameya Radhakrishna
1121	Next Orbit Ventures Fund
1122	Ranjan Pai
1123	Mobikon
1124	Helion Ventures, Blume ventures
1125	Janak Jain
1126	KAE capital
1127	BEENEXT
1128	IIFL Seed Ventures Fund, Mayfield Ventures
1129	Swastika Company Ltd
1130	Lalit Vase
1131	Astarc Ventures, Anand Chandrasekaran
1132	hooting Starts Sports LLP, Franchise India Brands
1133	1Crowd, Eureka Forbes Ltd, Shapoorji Pallonji & Co. Ltd.
1134	Omnivore Partners
1135	Hero MotoCorp
1136	Ajay Nanavati, Afsal Salu
1137	Aarin Capital, Michael Herzig, Ashish Lakhanpal
1138	Karanpal Singh & Others
1139	Sequoia India, Exfinity Ventures, growX ventures,
1140	Pradeep Dhobale
1141	Amit Choudhary
1142	Grasshoppers
1143	Anita Dongre, Yash Dongre, Milind Sarwate
1144	William Bissel
1145	Infina Finance Pvt. Ltd, Uday Kotak
1146	PremjiInvest
1147	Venturra Capital, Sequoia India, Susquehanna International Group.\\\\xc2\\\\xa0 Wavemaker Partners, Beenext, Beenos, Digital Garage
1148	Earlsfield Capital, Sailender Solanki, Rajiv Solanki
1149	CareerNet Consulting Pvt. Ltd, Ideation Initiative Pvt. Ltd,
1150	Idein Ventures
1151	Chan Zuckerberg Initiative, Times Internet Ltd, Sequoia Capital, Sofina, Lightspeed Ventures
1152	Ravi Linganuri
1153	Dr. Rameshwar Kumar
1154	havya Sharma, Amit Nagar
1155	Harinder Takhar, Zain Raj, Dr. Prasad Kaipa, Abaran Deep, Aseem Sood, Mustafa Patni
1156	Augment Ventures, Rahul Kayan, Nikhil Golcha, Shubham Gupta, Roy Kwan
1157	Fork Media
1158	Sunil Munjal, Mariwala family
1159	Pradeep Mirani, Aqeel Ahmed, Anand Ladsariya, Nitin Agarwal
1160	Raj Singh Bhandal
1161	Indian Angels Network
1162	BlackSoil Capital Pvt. Ltd.
1163	Calcutta Angels Network
1164	Balasubramanian Krishnamurthy, Sidhartha Hazarika & Others
1165	Scadea Solutions Inc
1166	Dheeraj Jain, Palash Jain, Anupam Mittal, Ameera Shah,\\\\xc2\\\\xa0 Vivek Bhargava, Rahul Singh, Ambarish Gupta,
1167	Lightbox Ventures and others
1168	Ganesh Narasimhan, Ramana Thumu, Sudhir Mallem
1169	Sumit Jain
1170	KellyGamma, Lead Angels & Others
1171	Goldman Sachs Group, Zodius Technology Fund, Norwest Venture Partners, Bertelsmann India
1172	Lothal Angel Ventures
1173	Anglian Omega Network
1174	Accel Partners, Beenext, Powerhouse Ventures, Akusa Holdings
1175	Rebright Partners
1176	Currae Healthtech Fund, Unicorn India Ventures
1177	Vertex Ventures, Cisco Ventures, IDG Ventures
1178	Rohit MA
1179	Idea Wave Labs
1180	Prashant Tandon, Gaurav Agarwal, Gaurav Bhogle, Shrishti Sahu, Shantanu Mathur, Prabhat Aggarwal
1181	Scale Ventures Funds
1182	Procam International Pvt. Ltd
1183	Flipkart Logistics Pvt. Ltd
1184	Pratik Seal
1185	Swastika Co Ltd.
1186	Sequoia India, EDBI, Blue Cloud Ventures, Hercules Capital
1187	Now Capital
1188	Kanwaljit Singh, Ajay Lakhotia, Pavan Ongole, Ashish Gupta
1189	Blume Ventures, Mumbai Angels, ah! Ventures, Digital Currency Group, Boost VC, Bank to the Future and Funders Club
1190	Bhavin Turakhia
1191	Rajasthan Angel Innovators Network
1192	Sequoia Capital India, Omidyar Network, Kae Capital
1193	Mudit Saxena, Evan Lim
1194	Undisclosed HNIs
1195	Syska LED group
1196	Lumis Partners, The HR Fund, Rajul Garg, Quintillion Media
1197	Venk Krishnan, Aprameya Radhakrishna, Anupam Mittal, Kunal Shah, Tracxn Labs, Subramanya SV, Ravi Garkipati
1198	Binny Bansal, Anupam Mittal, Sachin Bhatia, Darius Pandole, Kunal Khattar, Dheerag Jain
1199	Paul Roy
1200	Existing Investors
1201	Inventus Capital Partners, Blume Ventures & Others
1202	Promatus Group
1203	Geniee, Inc, Purvi Capital
1204	Swastika Company Ltd.
1205	1Crowd (through crowd funding)
1206	Centre for Innovation Incubation and Entrepreneurship (CIIE)
1207	Anupam Mittal, Sharad Sharma & 14 others
1208	Noshir Kaka, Subramanian Ramadorai, Kiran Deshpande, Pankaj Gupta, Ravi Nigam & Others
1209	Gujarat Venture Finance Limited (GVFL), Bennett Coleman & Co. Ltd
1210	Khattar Holdings, ThirtyThree Investments, Soumitra Sharma, Deepak Sharma, Sumit Dayal and others
1211	1Crowd (through crowdfunding)
1212	Norwest Venture Partners, Accel India
1213	Mukul Singhal, Rohit Jain, Himanshu Aggrawal, Sunil Goyal Ashish Gupta,
1214	Westbridge Capital Partners
1215	HT Media Ltd, North Base Media
1216	Anand Chandrasekaran, Kanwaljit Singh, Manoj Varghese
1217	Ashvin Chadha
1218	Tencent Holdings, Foxconn Technology Group, Tiger Global, SoftBank Group, Bharti Enterprises
1219	Powerhouse Ventures, M&S Partners
1220	Anand Chandrasekaran, Ananth Narayanan, Mekin Maheshwari, Ravi Garikipati, Divyesh Shah, Swastika Company Ltd
1221	Undisclosed Dubai based HNIs
1222	Swan Angel Network,Sachin Khandelwal and others
1223	Swan Angel Network
1224	SeedPlus, Infocomm Investments, Accel Partners RNT Associates
1225	Kashyap Deorah, Rajul Garg, Maninder Gulati
1226	Speridian Technologies
1227	Aspire Systems
1228	Satish Vasudeva, Madhusudhan Jujare & Others
1229	Torrent Group
1230	Saha Fund, Exfinity Venture Partners & Others
1231	Vijay Kedia
1232	Riju Gupta, Kamal Chabra
1233	Dr. Goutam Challagalla
1234	Outbox Ventures, Jaspreet Bindra, Arjun Malhotra, Rohan Malhotra, Sidharth Rao, Rakesh Agrawal
1235	ah! Ventures, Anupam Mittal, Kunal Shah, Sandeep Tandon, Dheeraj Jain, Rohit Chokhani
1236	Blume Ventures, Sachin Bansal, Vijay Shekhar Sharma, Binny Bansal,\\\\xc2\\\\xa0 Kunal Shah, Sandeep Tandon, Ashish Tulsian
1237	Vineet Taneja, Kamal Puri
1238	Mohit Lalvani
1239	Michael and Susan Dell Foundation
1240	Kunal Shah, Sandeep Tandon, Tracxn Labs
1241	Scale Ventures
1242	CureFit
1243	Fireside Ventures, Investopad, P39 Capital, Anupam Mittal, Pranay Jivrajka, Maninder Gulati, Abhinav Sinha
1244	Globevestor Angel Fund, Devendra Rane, Ravi Jain,\\\\xc2\\\\xa0 Arpan Nagdeve
1245	Ford Smart Mobility Llc
1246	Instalabs
1247	Net1 UEPS Technologies Inc
1248	Undisclosed Ex Mckinsey Directors and Partners
1249	Kunal Shah & Sandeep Tandon, Girish Mathrubootham, Anand Chandrasekaran
1250	Dr. Abhishek Pandey, Jaysukh Sapra
1251	Hitouch AG
1252	Undisclosed HNI investors
1253	Bessemer Venture Partners, Jungle Ventures, Helion Ventures
1254	Rajasthan Angel Investor Network & Others
1255	Ashutosh Lawania, Rajul Jain, Badal Malick, Rishi Gupta & Others
1256	MediaTek Inc.
1257	Sophia Investment ApS
1258	Ambit Pragma
1259	IDG Ventures, Sequoia Capital, GREE Ventures
1260	Sarbvir Singh, Raghav Bahl
1261	MasterCard
1262	3one4 Capital, Tracxn Labs, Aaruha Technology Fund, Endiya Partners
1263	Zaffiro Ventures
1264	Sequoia Capital, SD Ventures, Vistaar Investment Advisors Pvt. Ltd.
1265	Accel Partners, IDG Ventures, Kalaari Capital
1266	Deepak Gupta
1267	Aramex Ventures Llc
1268	IIFL Wealth Management Seed Venture Fund, Omidyar Network, Khosla Impact, Aspada
1269	YourNest Angel Fund\\\\xc2\\\\xa0 & Others
1387	Kalaari Capital Accelerator Program
1270	Stripes Group, Network 18, Accel Partners, SAIF Partners
1271	Sequoia Capital, Rohit Bansal, Kunal Bahl, Sandeep Tandon, Kunal Shah, Zishaan Hayath,\\\\xc2\\\\xa0 Abhishek Jain
1272	Gaurav Singhvi, Zaffiro Ventures
1273	Kirthiga Reddy, Renuka Ramanath,Cherry Tin
1274	Kalaari Capital, Qualcomm Ventures, ru-Net, Zodius Technology Opportunities Fund,
1275	AVG Group, 500 Startups
1276	Rothenberg Ventures
1277	Alex Chua, Rahul Garg
1278	Kalaari Capital, India Quotient
1279	JSW Ventures, Blume Ventures & IvyCap Ventures
1280	Brian Acton
1281	JSW Ventures, Omidyar Network, Sattva Capital, Venture Works
1282	Stanford Angels & Entrepreneurs, Harvard Angels
1283	Mumbai Angels,\\\\xc2\\\\xa0 Times Internet
1284	Ashish Mahajan, Sarvesh Sharma
1285	Rishi Parti, Yogesh Bansal
1286	Rainmaker Ventures
1287	Ajay Piramal
1288	Tracxn Labs, Hyderabad Angels, Kunal Shah, Gaurav Bhalotia
1289	SAIF Partners, India Quotient
1290	Accel Partners, IDG Ventures India
1291	Jaspal Bindra, Parth Jindal
1292	Plug and Play Tech Center, Steelhead Ventures & Others
1293	500 Startups
1294	Sumit Jain, Sumit Jain, Anurag Gupta, Varun Khanna, Faraz Khan
1295	GEMS group
1296	Abhijit Avasthi, Karan Chellani, SP Vijay
1297	Times Internet, Innoven Capital, Matrix Partners India, Qualcomm Ventures
1298	IIFL and Accel Partners, Kalaari Capital, IvyCap Ventures, RB Investments
1299	Intelli Reboot Digital Pvt. Ltd
1300	Satish Jamdar
1301	Star India Pvt. Ltd
1302	Franklin Templeton International Services Pvt. Ltd
1303	Prime Venture Partners
1304	Green House Ventures Accelerator
1305	Abhishek Agarwal, Krishnakumar Nataraj, Sarath Sura, Shanti Mohan, Sarthak and Nihit Agarwal, Suramya Gupta
1306	Nilesh Shah
1307	Nihon Kotsu Co
1308	Swastika Company Pvt Ltd
1309	Verlinvest, DSG Consumer Partners
1310	Beenext, Digital Garage, Lightbox, Beenos
1311	MapmyIndia
1312	Parampara Capital
1313	MadhanKumar Madathupalayam
1314	Romulus Capital
1315	Sreenivasa Reddy Musani
1316	Sequoia Capital, Unitus Seed Fund
1317	Yeahmobi, Fenqile
1318	Microsoft Ventures, Salesforce Ventures
1319	Sarath Sura
1320	Kae Capital, Kunal Shah, Sandeep Tandon
1321	Sanjiv Rai
1322	Kunal Shah, Aneesh Reddy, Tracxn Labs, Venkat Tadanki, Krishna Mehra, Amit Rathore
1323	Axiata Digital
1324	Ankit Maheshwari, Anand Singh
1325	BlackJag Partners
1326	Cameron Jones
1327	Ritesh Dwivedy, Priti Padhy
1328	3 undisclosed HNIs
1329	CIO Angel Network, Indian Angel Network
1330	Vivek Joshi, Mohit Satyanand, Amit Banati, Arun Khanna
1331	Ratan Tata, Bhavish Aggarwal, Ankit Bhati, Binny Bansal, Girish Mathrubootham
1332	TVS Automobile Solutions Ltd
1333	Viridian Capital
1334	EVC Ventures
1335	Valpro Capital and existing investors
1336	MCube8
1337	You & Mr Jones, Fortisure Ventures, Diaz Nesamoney
1338	Saama Capital, Blume Ventures & Vaibhav Domkundwar
1339	Accel Partners India
1340	IvyCap Ventures and Unicorn India Ventures
1341	Atul Ingle
1342	Guy Oseary
1343	Nimmagadda Prasad
1344	Ravi Adusumalli, SAIF Partners
1345	Infuse Ventures
1346	New Enterprise Associates (NEA), Blume Ventures
1347	BetOnIndia Technology Pvt Ltd
1348	Sanjay Verma, Amit Khanna (LetsVenture)
1349	Hamraj Kumar
1350	Timbru Ventures
1351	Concur Technologies, Gund Investment
1352	IndiaMart
1353	Bitkemy Ventures
1354	Unicorn Venture
1355	CP Bothra
1356	RB Investments PTE Ltd, Orios Venture Partners
1357	Rahul Kirloskar, Fusion Tech Ventures, Adi Saravanan, Pravin Dongre, Mahendra Doshi
1358	Saif Partners
1359	Purvi Ventures, Rajul Garg, Vipin Arora
1360	Rise India
1361	Jitendra Gupta, Pankaj Tripathi
1362	GVFL
1363	Mayfield Ventures
1364	SAIF Partners, Aprameya Radhakrishnan, Phanindra Sama, Subba Rao Telidevara, Vibhu Garg, Paula Ravindra Mariwala, Gaurav Bhalotia
1365	Kanodia family, Amit Banka
1366	GVFL Ltd
1367	Accel Partners, RB Investments
1368	Bertelsmann India Investments, Mayfield India, Saama Capital, India Quotient
1369	Sanjeev Sinha
1370	Soniks Consulting
1371	vCommission
1372	Harsh Vardhan Hada
1373	Piyush Jain
1374	Uniqorn Ventures Fund, TV Mohandas Pai, S Somasegar
1375	Aarin Capital
1376	Omidyar Network, Accel Partners & existing investors
1377	Carpediem Capital & Others
1378	Niloufer Dundh, Fauzan Rahim, Balamurugan Mani,
1379	Ankush Mehta
1380	StartupXseed Ventures
1381	GMO Payment Gateway, MediaTek
1382	Shruth & Smith Group, Hermes Group
1383	Rohan Angrish, Hrishi Oberoi, Rahul Mehta, Kapil Hetamsaria, Pranav Dedhia
1384	International Finance Corp, TPG Growth, Adveq Management, IDG Ventures, Ratan Tata, Kris Gopalakrishnan
1385	Sistema Asia Fund, Helion Venture, VentureEast, India Alternatives
1386	Grex.in
1388	IDG Ventures, Inventus Capital, Indian Angel Network
1389	Group of undisclosed Angel Investors & HNIs
1390	MoMagic Technologies
1391	Rajul Garg & Others
1392	Exfinity Venture Partners, Blume Ventures, BeeNext, Rajesh Ranavat
1393	Roopak Saluja, Vishal Khare
1394	Manish Kheterpal, Vinay Mittal, Dinesh Mittal, Sandeep Gupta
1395	IDG Ventures India, Inventus Capital, Blume Ventures
1396	Accel Partners, Matrix Partners, Girish Mathrubootham
1397	NanoHoldings
1398	Norwest Venture Partners, DST Global, Accel Partners
1399	JM Financial Products Ltd, Arun Tadanki, Doreswamy Nandkishore, Kshitij Jain
1400	Khazanah Nasional Berhad
1401	Blume Ventures, Rajan Anandan, Sumit Jain, Aprameya Radhakrishna, Sujeet Kumar, Phanindra Sama
1402	Creation Investments Capital Management, SAIF Partners, Sequoia Capital, Aspada Ventures
1403	GROUPE SOS
1404	Rakesh Gupta, Aditya Aggarwal, Siddharth Banerjee, Vikas Ranjan, Anshul Jindal, Sunil Koul, and Sanjeev Agrawal
1405	ah! Ventures
1406	Phanindra Sama, Raghunandan G,
1407	Anurag Chauhan
1408	Matrix Partners, Nexus Ventures
1409	Undisclosed Investors & Tamarind Family Private Trust
1410	S Chand, AdvantEdge Partners
1411	Kinnevik Group, Rocket Internet
1412	Rata Tata
1413	Undisclosed investors, Accel Partners, Helion Venture Partners
1414	Anupam Mittal, Anuj Srivastava, Ankit Nagori
1415	Katabole Technology Venture
1416	Subramanya SV
1417	Kaizen Management Advisors, DeVry Inc
1418	Sujeet Kumar, Aprameya, Sumit Jain, Subramanya Venkat, Venk, Ravi Machani, Hitesh Gupta, Rohit Choudhary
1419	Chatsworth Management, ITW Digital
1420	Pradeep Reddy Kamasan
1421	MCube Capital Advisors Pvt Ltd
1422	Sudhir Mehta
1423	Anand Mahindra
1424	FF Angel, Sequoia Capital
1425	Accel Partners, Indian Angel Network, India Innovation Fund India Venture Partners
1426	Kunal Shah, Sandeep Tandon
1427	Anirudh Damani, Vikram Lakhotia
1428	Ashish Gupta and other undisclosed investors
1429	HT Media Ltd
1430	NSI Infinium Global Pvt. Ltd
1431	HBM Healthcare Investments
1432	Ashish Gupta
1433	Nelstone Ventures, Transmedia Capital, Maiden Lane Ventures, CSC Upshot & Angel investors
1434	Raman Roy
1435	Indian Angel Network, Alok Sharma, Kris Gopalakrishnan, Saurabh Srivastava, and Ajai Chowdhry
1436	Vineet Singh
1437	Equentia Natural Resource & Other undisclosed investors
1438	Xiaomi Inc
1439	N.S. Raghavan Centre for Entrepreneurial Learning
1440	Mukesh Bansal
1441	Blume Ventures, Barkawi Holdings GmbH, TM Service Technology Holdings GmbH
1442	DTDC Express Ltd
1443	Ninestarter
1444	Nazara Technologies Pvt Ltd
1445	IDG, Indian Angel Network
1446	Villgro
1447	Mahendra Patel, Nilender Chauhan
1448	Rattan Chadha
1449	Wingify
1450	Softbank, Sequoia Capital, Lightspeed Venture Partners, Greenoaks Capital, DSG Consumer Partners and Venture Nursery
1451	Prashant Puri
1452	Kris Gopalakrishnan, Dr. Ranjan Pai
1453	Shaan
1454	Anirudh Damani, Daud Ali, Narendra Karnavat, Vikas Kapoor, Vikram Lakhotia, Krishna Jhunjhunwaala, Jayesh Shah
1455	Anil Kapoor
1456	Pravin Khandelwal, Yatin Kumar Jain
1457	Dr. Aniruddha Malpani
1458	Dr. Sridhar Ramaswamy, Rakesh Mathur
1459	Prime Venture Partners,
1460	StartUp Equity Partners
1461	Rajeev Agrawal, Prashant Gooty
1462	Ram Shriram, Neeraj Arora, Puru Vashishtha
1463	Mount Nathan Advisors
1464	Mahavir Pratap Sharma, Ajay Data, Yogesh Chaudhary, Sanjay Phophaliya, Siddharth Agarwal, Kamal Kothari
1465	Naturals Salon Chain
1466	Vivek Nathani, Yogesh Chaudhary, Mahavir Pratap Sharma, Kamal Kothari, H C Jain
1467	Pawan Munjal, AdvantEdge Partners, Astarc Ventures
1468	Ajay Data & other HNIs
1469	Mitin Patel, Gaurav Agarwal
1470	Paytm & existing investors
1471	Bhavish Aggarwal, Ankit Bhati
1472	Stanford Angels, LetsVenture, Chennai Angels, Hyderabad Angels, Mumbai Angels
1473	Man Capital
1474	RN Agarwal
1475	Maverick Capital Ventures, Sequoia Capital, Omidyar Network
1476	YourNest Angel Fund, Rajul Garg
1477	Undisclosed Angel investors & HNIs
1478	Blume Ventures, Adil Allana, Aprameya Radhakrishna, Gautam Ivatury, Signal Point Partners
1479	Ajay Data & undisclosed HNIs
1480	M&Y Partners, SVG Media, Anthil Ventures & others
1481	GirnarSoft
1482	Mayfield India II Management Ltd
1483	Inventus Capital Partners, HR Fund
1484	NTT Finance, Telephone Corporation
1485	Indian Angel network
1486	GrowthStory, Apurva Salapuria, Hitesh Oberoi, Sidharth Pansari, Nirupa Shankar
1487	IDFC SPICE Fund, Micromax Informatics
1488	Max Levchin, Scott Banister
1489	Farooq Oomerbhoy, Anupam Mittal, Anand Mittal, Ravi Garikipati, Vibhu Garg, Singapore Angel Network, Konglo Ventures
1490	Nandan Nilekani, Helion Ventures, Omidyar Networks, Blume Ventures
1491	Blume Ventures & Other unnamed Investors
1492	Rebright Partners, Anand Rajaraman, Venky Harinarayan
1493	RB Investments, Fundnel
1494	S Chand & Co
1495	Lip-Bu Tan, Michael Marks, Nicolas Braithwaite
1496	Kludein LLC\\\\nPhanindra Sama, Narayan Ramachandran, Pranav Pai
1497	Nandan Nilekani, Accel Partners
1498	Dino Morea
1499	Blinc Advisors, Amit Nanavati, Tashwinder Singh, Taranjit Jaswal, Amit Khanna
1500	Matt Glickman
1501	YourNest Angel Fund,
1502	Sudhir Mehta, Anoop Hingorani
1503	Manoj Kumar & Other undisclosed investors
1504	Daman Soni, Rajat Gupta & Others
1505	Mohit Gulati
1506	Artiman Ventures
1507	Ruchirans Jaipuria, Anuj Sanghi
1508	Accel Partners, Qualcomm Ventures, M&S Partners, Zop Smart
1509	Rebright Partners, Sol Primero, Sudhir Anandarao, Ankur Warikoo, Ankur Singla
1510	Unicorn Ventures
1511	Naveen Tewari, Abhay Singhal, Amit Gupta, Piyush Shah, Raghunandan G, Rajiv Mehta
1512	Undisclosed private investors
1513	Vijay Krishna Yadav
1514	Apoorv Ranjan Sharma, Daud Ali and others
1515	Undisclosed Japanese investor, Bertelsmann India Investments, Nirvana Digital India Fund, Nirvana Digital Investment Holding Co Ltd, 500 Start-Ups
1516	Aspada Investment Advisors, Blume Ventures.
1517	Amadeus Capital
1518	Indian Angel Network, Stanford Angels, Entrepreneurs India
1519	Vipul Parekh, ajesh K Murthy,
1520	PurpleTalk Inc
1521	Amit Choudhary, Anuj Puri
1522	Dheeraj Jain & Other angel investors
1523	Puneet Gupta,
1524	Raj Gala Shah, Zaheer Memon
1525	Ignition Partners, Greycroft Partners, Fidelity Growth Partners India
1526	Mohit Goel
1527	Janak Parikh
1528	Hari Krishna, Ajay Modani, Dr V Ravinder, Anirudh Rastogi, Abhishek Jain, Rakesh Gakhar, Rajeev Mudumba, Nagendra Prasad Bhanuprakash
1529	Agarwal Movers Group
1530	Hemang Sahani
1531	S Chand and Co Pvt Ltd, Blume Ventures
1532	Funding through 1Crowd platform
1533	Alex Kuruvilla, Pradeep Guha, Saket Dhankar, Rajan Pandhare
1534	Chandrashekar Tallapragada, Pankaj Kapoor
1535	Kris Gopalakrishnan, Atul Nishar
1536	Zishaan Hayath, Abhishek Goyal, Arjun and Rohan Malhotra, Harpreet Singh Grover, Gagan Dugal
1537	Rannvijay Singh, Anita Hassanandani
1538	Sashi Reddi & Other unnamed investors
1539	Naveen Gupta
1540	Google Capital
1541	CASHurDRIVE Marketing Pvt Ltd
1542	Sequoia India, Sofina
1543	Abraaj Group
1544	Indian Angel Network, Tracxn Labs & Others
1545	Sachin Tendulkar
1546	Rajul Garg, Alok Mittal, Kunal Shah, Rishi Mandawat, Dheeraj Jain, Sandeep Tandon, Dexter Angel Circle
1547	Pix Vine Capital, Infocomm Development Authority of Singapore
1548	GAIN
1549	Devidas Desai, Vipul Gautam, Singapore Angel Network
1550	Indian Angel Network,
1551	500 Startups, Littlerock, Singularity Ventures
1552	BitChemy Ventures, Maheshwari Investments Pvt Ltd, Anshoo Gaur, Rama Krishna Reddy, Sandeep Seerapu
1553	Bhavish Aggarwal, Binny Bansal,\\\\xc2\\\\xa0 Rajan Anandan, Mekin Maheshwar, Sunil Kalra, Anupam Mittal, Krishna Mehra, Singapore Angel Network
1554	Broadbean Capital services
1555	Bharanidharan Viswanathan, Sanjiv Mittal, Shobhit Shukla, Rahul Agarwal
1556	Robin Utthappa
1557	Rajul Garg, Daljit Singh, Aditya Vij, Kishore Kumar, Shuchin Bajaj
1558	Sarva Capital
1559	Jay Vijayan
1560	SoftBank Ventures Korea
1561	Alok Mittal, Amit Gupta, Anuj Srivastava, Himanshu Aggarwal, Raghunandan G, Puneet Agarwal
1562	Mohandas Pai, Hiro Mashita, Singapore Angel Network, 500 Startups, Rajan Anandan, Ajay Sarupria
1563	Snow Leopard Technology Ventures
1564	Wipro Ventures,\\\\xc2\\\\xa0 Lumis Partners
1565	T V Mohandas Pai,\\\\xc2\\\\xa0 Aarin Capital
1566	Multiple investors through Ten Minute Million competition
1567	Dunamis Ventures Pte Ltd.
1568	Green House Ventures (GHV)
1569	Ingram Content Group
1570	Oranda Global & Others
1571	TV Mohandas Pai, Aarin Capital
1572	Sherpa Capital, Nyca Partners and Thomvest Ventures
1573	Vandana Luthra,
1574	Raghunandan G, Venturesity, Arihant Patni
1575	Saha Fund, TV Mohandas Pai, Zia Mody, Mumbai Angels, Ananda Kallugadde, Rakesh Desai, Rakesh Malhotra
1576	Mohit Goel, Vinod Jain & Others
1577	Vinod Bansal, Sanjeev Singhal
1578	Mahesh Parasuraman, Rahul Gautam & Others
1579	SAIF Partners, IDG Ventures India, Vertex Ventures, Valiant Capital
1580	Endiya Partners, Mekin Maheshwari, Rajesh Sawhney
1581	India Ventures, Aarin Capital & Others
1582	Edelweiss Financial Services
1583	Lion Ventures
1584	Aqeel Ahmed
1585	Manipal Global Education Services
1586	Atul Jain, Anil Gelra, Jaikumar Nair
1587	Jaideep Mehta
1588	Sachin Dalal
1589	Jayabalan Subramanian
1590	Alok Rawat, Grey Orange Robotics
1591	Sunil Mehta
1592	Aspada Advisors, IDG Ventures,\\\\xc2\\\\xa0 Inventus Capital
1593	Ontario Teachers\\\\xe2\\\\x80\\\\x99 Pension Plan & Others
1594	Saumya Tandon
1595	Mukesh Kumar Gupta
1596	Vaibhav Doshi, Abhay Singhal, Vibhu Garg, Joby Babu, Abhishek Acharya, Manish Shah
1597	Blume Ventures,\\\\xc2\\\\xa0 Tracxn Labs
1598	Ranjit Singh
1599	GrowX Ventures, Kunal Shah, Sandeep Tandon, Haresh Chawla, Powai Lake Ventures, Globevestor
1600	Virendra Shekhawat, Deepak Chokhani, Yogesh Patel & Others
1601	Brand Capital, Siddhivinayak Skyscrapers, Dinesh R. Challa
1602	Vishwadeep Bajaj & Others
1603	Rajnish Sinha, Prijit Debnath, Kanchan Ghoshal
1604	Lead Angels
1605	KWAN Entertainment & Marketing Solutions, Powerhouse Ventures & Others
1606	Dr Nandish Domlur, Amit Sandill
1607	Michael & Susan Dell Foundation
1608	Lightspeed Venture Partners, K Ganesh
1609	Sujal Shah, Dino Morea
1610	Nandan Nilekani, Mohandas Pai, Neeraj Arora, Anand Rajaraman, Girish Mathrubootham, Aneesh Reddy & Teruhide Sato
1611	Farooq Oomerbhoy & Other angel investors
1612	Qualcomm (Through QPrize Contest)
1613	Aavishkaar
1614	Chennai Angels
1615	Mohandas Pai, Varun Aggarwal
1616	Purvi Ventures & Others
1617	3 undisclosed investors
1618	Nitin Bagmane & Other undisclosed investors
1619	Lightspeed India
1620	Sachin Bansal, Binny Bansal, Accel Partners & Others
1621	IvyCap Ventures, Orios Venture Partners, Mayfield India
1622	Omidyar Network,\\\\xc2\\\\xa0 Vikram Lal, Abhijit Bhandari, Mahesh Murthy, Shashank Bhagat
1623	Rocket Internet AG, Holtzbrink Ventures, New Enterprise Associates (NEA), e.ventures, ru-Net, Deutsche Telekom Strategic Investments (DTSI), Silicon Valley Bank
1624	StartupXseed Ventures, The Phoenix Fund and others
1625	Yajnanarayana Kammaje
1626	Tracxn Syndicate
1627	Beenext, Digital Garage, Beenos, Qualgro, Mamoru Taniya, SAIF Partners
1628	Varun Aggarwal, Suresh Venkat, Raj Y
1629	Vishal Bali & Others
1630	Calcutta Angels, Lead Angels & Others
1631	Accel Partners, Ashish Hemrajani, Parikshit Dar, Rajesh Balpande
1632	Kapil Goel
1633	Insitor Impact Asia Fund, Acumen Fund
1634	Rajan Anandan, Pramod Bhasin, Siddharth Pai, TV Mohandas Pai, Manvinder Singh Banga
1635	MeritTrac
1636	Sequoia Capital, Kunal Bahl, Rohit Bansal, Deepinder Goyal, Ashish Dhawan, Mayank Singhal
1637	Samir Bangara, Anisha Mittal, Amit Gupta, Pallav Nadhani, Lalit Mangal, Arihant Patni, Dr. Ritesh Malik, Deobrat Singh, Saurab Paruthi, Singapore Angel Network.
1638	Dinesh Agarwal
1639	Tata Capital Innovation Fund
1640	Dheeraj Jain, Jagdish Kumar, Bharat Gupta, Ankush Saigal, Praveen Saini
1641	Lalitesh Katragadda,\\\\xc2\\\\xa0 Ganayantrika Systems
1642	Arjun Handa, Amit Jindal, Nagendra Chaudhary
1643	Bhanu Vikram Parsotam, Rohan Desai and Paras Patel
1644	SIDBI Venture Capital Limited, YourNest Angel Fund
1645	Ankur Gupta
1646	Myntra/LivSpace Founders
1647	Newbie Promoter Pvt Ltd
1648	Ctrip.com International Ltd
1649	Lightbox Ventures
1650	Krishna Jhujhunwala, Dr. Apoorv Ranjan Sharma, Anirudh Damani, Anand Ladsariya, Sanjay Mehta & Others
1651	GBIM Technologies Pvt Ltd
1652	Arun Chandra Mohan
1653	Nahata Family, Waheed Alli
1654	500 Startups, Mato Peric, TracxnLabs
1655	Zodius Capital, Lightspeed Venture Partners
1656	TV Mohandas Pai, LetsVenture
1657	Ranjan Mahtani
1658	GIC, Tiger Global Management, Nexus Venture Partners
1659	Matt Mullenweg, Adam D\\\\xe2\\\\x80\\\\x99Angelo, Aditya Agarwal,\\\\xc2\\\\xa0 Ruchi Sanghvi & Others
1660	Vallabh Bhanshali, N Squared Management LLC, Jagdish & Sandeep Mehta Family Office
1661	Equity Crest, Vinners, Sparknext
1662	Temasek Holdings, March Capital, Warburg Pincus
1663	Shiva Ashok & Other unnamed investors
1664	50k Ventures, Munish Jauhar, Pulkit Jain, Rohit Narang
1665	Amod Malviya
1666	Mustafa Wajid, Umang Kumar & Others
1667	Flipkart, Saavn, Micromax, Dhiraj Rajaram, Ambiga Dhiraj, Dinesh Agarwal, Samir Bangara, Sanjay Nath, Arihant Patni
1668	Cipher-Plexus Capital Advisors & Indian HNIs
1669	Varun Khurana, Samar Singla, Vinay Bansal,
1670	Hyderabad Angels, Lalit Mangal,\\\\xc2\\\\xa0 Vikas Malpani, Gaurav Bhalotia, LV Prasad
1671	Times Group
1672	Abhinav Mathur
1673	Sanjay Mehta
1674	Huzaifa Khorakiwala
1675	Bertelsmann India Investments, Nirvana Digital India Fund, Nirvana Digital Investment Holding, 500 Startups
1676	Harmony Partners, RB Investments & existing investors
1677	Anand Chandrasekaran & Others
1678	Unilazer Fund,\\\\xc2\\\\xa0 Phanindra Sama, Peyush Bansal
1679	Omidyar Network,
1680	Umang Kumar
1681	Lemelson Foundation, Michael and Susan Dell Foundation
1682	Undisclosed US Based Investors
1683	Sa\\\\xc3\\\\xafd Business School Seed Fund.
1684	Farooq Adam, Ambi Parameswaran,
1685	Rob Chandra
1686	Unilazer Ventures
1687	SoftBank Corp
1688	Sequoia Capital, Beenext Ventures, India Quotient, Anand Chandrasekaran
1689	Kanpur Angels & Others
1690	GIC
1691	Jungle Ventures, Taurus Value Creation, Konly Venture, Blume Ventures
1692	Chandigarh Angels Funding
1693	Arihant Patni, Avnish Mehra, Pranay Adhvaryu, Ravi Sampat
1694	APIS Partners
1695	Institutional Venture Partners, Norwest Venture Partners, Lightspeed Venture Partners, CRV
1696	Purvi Ventures
1697	Nandan Nilekani, Accel Partners, Kalaari Capital and Inventus Capital
1698	GPA group
1699	Puneet Dalmia
1700	Lalit Mangal & Others
1701	Un disclosed investors
1702	Anupam Mittal, Amit Gupta, Utsav Somani, Neeraj Goenka, Farooq Adam Mukadam
1703	TV Mohandas Pai, Mohit Saxena, Raghunandan G, Singapore Angel Network, TracxnLabs
1704	Foxconn Technology Group & Others
1705	Harminder Sahni, Krishna Mehra, Sanjay Bakshi
1706	Maple Capital Advisors
1707	TermSheet, ah! Ventures
1708	Zodius Technology Fund, Lightspeed Venture Partners
1709	Kalaari Capital, Inventus Capital, Tekton Ventures, Kae Capital
1710	Lead Angel Network
1711	Vineet Nalla
1712	Amit Patni, Anirudh Damani, Samir Shah
1713	growX ventures
1714	Frontline Strategy
1715	Aarin Capital Partners, TV Mohandas Pai
1716	Pankaj Gupta
1717	Lashit Sanghvi, Nikhil Vora, Venkat Vardhan,Mohammed Bin Abdul Rehman Al Khalifa,\\\\xc2\\\\xa0 Ralph Berezan, Vissal Mathew,\\\\xc2\\\\xa0 Balamurali Krishna
1718	The Saha Fund, TV Mohandas Pai
1719	CIO Angel Network (CAN)
1720	Sequoia Capital, Times Internet Ltd & One more Fund
1721	Chandigarh Angel Network (CAN)
1722	Beerud Sheth and Ravi Mantha
1723	GHV Accelerator
1724	CerraCap
1725	Rajesh Sawhney, Anupam Mittal, Dinesh Agarwal, Gaurav Gupta,
1726	Agnus Capital
1727	ru-Net, Sequoia Capital,\\\\xc2\\\\xa0 Lightbox Ventures
1728	Vidyadhar Sarfare
1729	Ajeet Khurana Jinesh Shah, Vikram Chachra, Dr. Aniruddha Malpani
1730	Gopal Aggarwal
1731	Shopclues
1732	Unilazer Ventures, Orios Venture Partners, Steven Lurie
1733	TracxnLabs, Jitendra Gupta, Prashant Tandon
1734	SAIF Partners, Accion
1735	Tiger Global Management, Yuri Milner, Apoletto, Accel Partners, Flipkart
1736	Bren Corporation
1737	GrowX Ventures
1738	CLSA Capital Partners ARIA IV Funds
1739	Mr. Sudhir & Ms. Shalini Sethi, Mr. Praveen Someshwar
1740	Mitesh Majithia
1741	Sequoia Capital, Blume Ventures, Uniqorn Ventures and other
1742	Sashi Reddi, Gabriel Investments
1743	LetsVenture, Mohandas Pai
1744	Extreme Venture Partners\\\\xc2\\\\xa0 William Bissell
1745	Rajan Anandan, Zoya Akhtar, Reema Kagati, Ruchi Narain, Amrish Kumar, Hrishikesh Parandekar
1746	Accel Partners India, RB Investments
1747	Prashanth Ranganathan
1748	Infosys
1749	Mumbai Angels, Singapore Angel Network, Zishaan Hayath
1750	Vijay Shekhar Sharma, Singapore Angels Network
1751	Amazon, Vertex Ventures, Qualcomm, Ru-Net Technology Partners, Matrix Partners
1752	Chicago Capital Ventures, Sanjay Mehta, Others
1753	Unilazer
1754	Nisha Sharma, Puneet Dalmia, Balaji Prabhakar
1755	SAIF Partners and others
1756	Allen Blue, John Katzman, Naveen Tewari, Kartik Hosanagar, Kashyap Deorah, 500 Startups, Blue Fog Capital
1757	Kris Gopalakrishnan & Others
1758	Turning Ideas
1759	Quintillion Media
1760	Prahlad Rao, Sundara Rajan, Vikram Chachra
1761	Ritesh Dwivedy, Ramakant Sharma, Mount Nathan Advisors
1762	TCS, HDFC, Faering Capital, Elevate Sports
1763	Anand Chandrasekaran, Rajesh Sawhney, Kalpana Tatavarti, Shivanandan Pare
1764	Murugappa Group, TVS Group, Vellayan Subbiah, Arathi Krishna, Arun Venkatachalam
1765	Palred Technologies Ltd
1766	HT Digital Media Holdings Ltd
1767	YourNest Angel Fund, Venture Nursery
1768	Rishi Parti, BrahmaX Ventures
1769	Medi Assist
1770	Vectr Ventures
1771	Blume Ventures, Flipkart
1772	Exfinity Venture Partners, Unitus Impact Livelihoods Fund
1773	Jitendra Gupta
1774	Collaborative Licensing Ventures LLP
1775	Umang Kumar, Ruchir Arora & others
1776	Sharad Hegde, Girish Reddy, Siddharth Patil, Shrikant Patil
1777	Mahavir Pratap Sharma
1778	Sequoia Capital, Tree Line Asia, Innoven Capital
1779	Amit Gupta, Sahil Barua, Mukul Singhal, Tracxn Labs
1780	Times Group Brand Capital
1781	Segnel Venture, Shinji Kimura, Sundar Chanrai, JAFCO Asia, SingTel\\\\xe2\\\\x80\\\\x99s Innov8, Jungle Ventures, K Ganesh
1782	Varun Ahuja, Anubhav Verma
1783	Riqueza Capital
1784	Dheeraj Jain & Others
1785	Constellation Technology Ventures (Exelon Corporation), E.ON, RWE, Khosla Ventures
1786	Phanindra Sama, Aprameya Radhakrishna, Aneesh Reddy, Neeraj Jawalkar, Sanjay Anandaram, Pavan Ongole, Venk Krishnan
1787	Vineel Nalla & Others
1788	SAIF Partners & others
1789	IDG Ventures India, Kalaari Capital, 500 Startups
1790	Hyderabad Angels, M&S Partners
1791	Hyderabad Angels, Singapore Angel Network, Ness Wadia
1792	Saina Nehwal
1793	Chandralekha Construction Pvt. Ltd.
1794	Rajan Anandan, Mike Galgon, Ravi Gururaj, Ashim Mehra,\\\\xc2\\\\xa0 Mohit Saxena, Internet Group, TNN Capital and others
1795	Michael & Susan Dell Foundation, Unitus Seed Fund
1796	Sequoia India, BEENEXT Ventures, Kunal Shah & Sandeep Tandon
1797	Jozef Bardik, Leo Wang Sangeeth Ram
1798	SAIF Partners, Haresh Chawla
1799	TV Mohandas Pai\\\\xe2\\\\x80\\\\x99s family office
1800	Lensbridge Capital, Mape Advisory Group, Fireside Ventures
1801	Centre For Incubation & Business Acceleration (CIBA), Goa
1802	Mount Nathan Advisors Pte Ltd
1803	Sujeet Kumar, Ankit Nagori, Traxcn Labs
1804	Astarc Ventures, 50K Ventures & others
1805	Logtally
1806	Times Internet
1807	Sequoia India, Lightspeed Venture Partners, Nexus Venture Partners, Global Founders Capital, Apoletto
1808	Gordon and Betty Moore Foundation
1809	Jitu Virwani
1810	Rimpal Chawla, Anuj Srivastava
1811	Ravi Krishnamurthy
1812	Enablers platform
1813	Baillie Gifford, Falcon Edge Capital, Tiger Global, SoftBank Group, DST Global, Didi Kuaidi
1814	Inara Capital , Rishi Khiani
1815	Palaash Ventures
1816	Blackstone Valley Group, Raghu Vohra, Aditya Dev Sood, Kamal Bansal
1817	Bessemer Venture Partner, Accel, SAIF Partners
1818	Karnataka Semiconductor Venture Capital firm
1819	S.D. Shibulal, Kris Gopalakrishnan, Srinath Batni, Professor Tarun Khanna,\\\\xc2\\\\xa0 Ganapathy Venugopal.
1820	New Enterprise Associates
1821	Kae Capital, Kunal Bahl, Rohit Bansal
1822	Ram Kumar Kakani, Pradeep K Jaisingh, Sunil T V, Vijay Ghadge, Hemant Kaul, Gurmeet Chahal & Others
1823	Hampton Capital
1824	Daljit Singh, Dr. Pramath Raj Sinha, BVR Mohan Reddy
1825	Unitus Seed Fund, Bijou Kurien, Narayan Ramachandran
1826	IDG Ventures India,\\\\xc2\\\\xa0 Accel Partners India
1827	Anil Menon
1828	Swastika
1829	Manish Gupta
1830	Mitsui & Co., New Enterprise Associates, Canaan Partners, Silicon Valley Bank
1831	Ashok Agarwal
1832	Raghu Khanna, Sameer Gupta
1833	IFC Everstone Group
1834	New Enterprise Associates, Cheetah Mobile
1835	Softbank, Tiger Global, Sequoia Capital, Apoletto Managers
1836	IDG Ventures, M & S partners, Powerhouse Ventures (USA).
1837	Tracxn, Ashish Goenka & Others
1838	Bessemer Venture Partners, Anil Chopra
1839	JMR Infotech India Pvt Ltd
1840	Unigrowth Inc
1841	Mandeep Singh, Jairaj Singh
1842	Manish Kheterpal, Alok Mittal,\\\\xc2\\\\xa0 Puneet Dalmia,
1843	FIH Mobile Ltd
1844	Flipkart, Accel Partners, Delhivery, Foxconn
1845	Sargod Ventures
1846	Accel Partners, Elevar Equity, Pramod Bhasin, Rajan Anandan, Gaurav Dalmia, Abhishek Goyal, Gagan Hasteer , Arun Tadanki
1847	Ashish Todi, Abhinav Patodia, Kumar Shwetabh
1848	Paytm (One97 communications)
1849	Harsh Mariwala, Atul Nishar, Dalip Pathak, Michael Carlos
1850	Peepul Capital
1851	DSG consumer Partners, Paragon Partners
1852	High Networth Individuals (undisclosed)
1853	Uniqorn ventures, ASP Consulting
1854	Satyen Kothari, Keshav Sanghi, Riddhesh Gandhi & Others
1855	Gaja Capital Private Equity Fund
1856	Ashvin Chadha, Avtar Monga, Udaan Angels, Dheeraj Jain
1857	Unnamed Media house and HNIs
1858	High Networth Individuals from India & USA
1859	Snapdeal
1860	Micromax Informatics
1861	Mato Peric, Peter Kabel & others
1862	Sanjeev Kapoor,\\\\xc2\\\\xa0 Ravi Saxena & Others
1863	Tiger Global Management, Flipkart
1864	Life.SREDA, Qualgro
1865	Sequoia and Kalaari Capital.
1866	Vikas Agarwal, Vishal Khare, Sanjeev Kakkar, Smile Group
1867	SF Capital Group
1868	Kemark Ventures, Amit Ranjan, Zishaan Hayath and Others
1869	Quikr
1870	Seedfund, Bedrock Ventures
1871	Suyash Sharma
1872	Sean O\\\\xe2\\\\x80\\\\x99Sullivan & Others
1873	Aarin Capital Partners
1874	500 Startups, IDG Ventures & Advantedge fund, Neeraj Arora, Leon Seynave
1875	Khosla Impact, Biz Stone, Catamaran Ventures, Global Founders Capital, European investment fund
1876	Dewang Neralla,Roopak Taneja, Manisha Gupta
1877	Fireside Ventures, Mumbai Angels MAPE Advisory Group.
1878	Devesh Rai G, Rajesh Aggarwal, Amitpal Bhutani
1879	Vijai Laxmi
1880	Manpreet Singh
1881	Accel Partners, Anupam Mittal & other marquee investors
1882	Sequoia Capital, Ascent Capital, eContext Asia, Beenos Asia
1883	Aarti Group
1884	Dr. Aniruddha Malpani Manish Gupta, M&S Partners & others
1885	Delhivery, Sands Capital and Accel Partners
1886	Qualcomm Venture, Norwest Venture Partners
1887	Springboard Ventures
1888	Sierra Ventures, Cota Capital, Vegas Tech Fund
1889	Arihant Patni, RAAY Global Investments
1890	Alok Bajpai, Rajnish Kumar, Amit Dey
1891	Atul Jalan, Shrikanth & Bharath
1892	R Natarajan, Mohan Alexander
1893	Group of Angel investors
1894	Mumbai Angels, Mayank Bhangdia, Kae Capital
1895	ID Enablers Pvt Ltd
1896	Delhivery
1897	Oswal Techno Ventures LLP
1898	undisclosed private investors
1899	OrbiMed, Pradip Dadha Group
1900	Tiger Global Management, Matrix Partners
1901	Ventureworks India
1902	Unnamed investor
1903	Sequoia Capital, Nexus Venture Partners
1904	Redcliffe Capital, YourNest Angel Fund
1905	ah! Ventures, 500 Startups & Other HNIs
1906	S Chand and Co Pvt Ltd
1907	Jupiter Capital
1908	Accel Partner, Jungle Ventures
1909	Amit Singhal, PK Gulati & others
1910	Suresh Vaswani
1911	Rajesh Bhatia, Dheeraj Mehta & Others
1912	Sequoia Capital, Matrix Partners
1913	GREX
1914	Puneet Bhatia & others
1915	Tania Johny Palathinkal
1916	Group of HNI investors
1917	Reliance Capital
1918	Zodius Technology Fund, Khazanah Nasional Berhad
1919	Warburg Pincus, Sequoia Capital, Norwest Venture Partners
1920	Purvi Capital
1921	India Quotient & other investors
1922	WestBridge Capital, Omidyar Network, Elevar Equity, Saama Capital,\\\\xc2\\\\xa0 Lok Capital
1923	CMYK Health Boutique Pvt Ltd & Other individual investors
1924	R M Picture Company Pvt. Ltd.
1925	Ashish Jhalani
1926	Karanpal Singh
1927	Raghav Bahl, Ritu Kapur
1928	Nalin Jain, Shomil Pant, Dinesh Kundu & others
1929	Temasek, Vy Capital
1930	Acumen Fund
1931	500 Startups, TV Mohandas Pai, Tandem Capital, Vikram Chachra, Aloke Bajpai
1932	Kalaari Capital, SAIF Partners, Beenextan investment fund
1933	Nanadan Nilekani, InMobi, Paytm
1934	Green House Ventures
1935	Ankush Nijhawan, Manish Dhingra, Gaurav Bhatnagar
1936	Subodh Gupta
1937	Eight Road Ventures
1938	Ash Bhardwaj
1939	Aarin Capital, Unitus Seed Fund
1940	Falcon Edge Capital, NY based Hedge Fund, Tiger Global, Softbank
1941	Cataraman Ventures
1942	Helion Venture Partners, Exfinity Ventures
1943	Anil Matai, Vikram Tandon, Shyam Sundar R & others
1944	Payal Syal
1945	Sandeep Dama & Others
1946	Oliphans Capital
1947	Applyifi
1948	Khazanah Nasional Berhad, Helion Venture Partners
1949	High Networth Individuals (No details)
1950	Sachin Bansal & Binny Bansal, Sol Primero, Outbox Ventures, Sangram Singh
1951	Accel Partners, Subrata Mitra, Larry Braitman, Venk Krishna
1952	Multiple investors
1953	Aprameya Radhakrishna, Naman Sarawagi, Afsal Salu,
1954	Accel Partners, International Finance Corporation (IFC), Qualcomm Ventures, Ventureast
1955	Anand Mahindra, Uday Punj, Ashish Hemrajani, Sanjeev Mehra
1956	Prakhar Bumb
1957	Unitus Seed Fund, Rianta Capital, R Ramaraj, Sunil Edwards
1958	Kalaari Capital, YourNest Angel Fund
1959	Karan Bajwa, Amanpreet Bajaj, Manish Vij
1960	Swarnim Multiventures
1961	Bhavdeep Reddy
1962	Asha Jadeja Motwani & Others
1963	Rajat Malhotra
1964	Sharad Sharma, Vijay Anand, Mohandas Pai. Pallav Nadhani, Singapore Angels Network & others
1965	M&S Partners
1966	William Bissell, Neeraj Aggarwal, Nandan Nilekani
1967	Phanindra Sama, Anupam Mittal, Vijay Shekhar Sharma, Vishal Gondal, Sateesh Andara & others
1968	Raghav Bahl
1969	500 Startups, Smile Multimedia, Kunal Bahl, Rohit Bansal, Girish Matrubootham
1970	Infuse Ventures, The Chennai Angels
1971	Kanwaljit Singh, TV Mohandas Pai
1972	Astarc Ventures & Others
1973	500 Startups, Mato Peric & Others
1974	Didi Kuaidi
1975	Alibaba Group, Ant Financial
1976	Tennenbaum Capital Partners & Others
1977	Sequoia India, SAIF Partners.
1978	Mayank Singhal and others
1979	Uniqorn Ventures
1980	Zishaan Hayath, Rahul Khanna & Others
1981	Nexus Venture Partners, Knoll Ventures and others
1982	Kunal Bahl, Rohit Bansal, Pranay Chulet, Naveen Tiwari, Amit Gupta, Mayank Singhal
1983	ah! Ventures, Viktor Koenig PE Fund, Mantra Ventures
1984	Alibaba, Foxconn, Softbank
1985	Mohandas Pai & others
1986	Alok Mittal
1987	VentureNursery
1988	Alok Mittal, Zeeshan Hayat, Niraj Singh, Nikunj Jain, Anirudh Damani, Punit Goyal
1989	SoftBank Group, Greenoaks Capital, Sequoia Capital,\\\\xc2\\\\xa0 Lightspeed India
1990	Sequoia Capital, Accel Partners
1991	Orios Venture Partners, Zishaan Hayath
1992	Kunal Bajaj, Chandru Badrinarayanan
1993	Rebright Partners, Ankush Nijhawan, Gaurav Bhatnagar, Manish Dhingra
1994	Tiger Global Management, Orios Venture Partners
1995	Helion Venture Partners, Kalaari Capital
1996	BedRock Ventures, Rajesh Sawhney, Shailesh Singh
1997	Sachin Bhatia, Rajesh Sawhney
1998	Ramesh Jogani, Shailesh Viswanathan, Jay Srinivasan
1999	Tracxn Labs
2000	Ravi Gururaj, Gaurav Sharma, Viswanath Ramachandran, RippleWave
2001	Sofina, Google Capital, Altimeter Capital, Sequoia Capital Global Equities, Yuri Milner, Sequoia Capital, Matrix Partners
2002	Sanjay Sethi, Ravi Jaipuria & others
2003	CCube Angels, Frontline Strategy
2004	Chennai Angels, Calcutta Angels, ah! Ventures, Intellecap Impact Investment Network, Indus Age Partners, Singapore Angel Network, India Internet Fund, LetsVenture
2005	Horizons Ventures, Capricorn Investment Group, Social+Capital, Helion Advisors, Berggruen Holdings
2006	Inflexionpoint, Pramod Bhasin, Sixth Sense Ventures, Vindi Banga, Hiro Mashita
2007	Wealth First, Ashneer Grover, Atul Phadnis
2008	responsAbility Investments, Infuse Ventures
2009	Bedrock Ventures
2010	Best Foodworks
2011	Nihon Kotsu,
2012	Neha Vats, Gaurav Vats
2013	B M Gupta, Vinod Singhal
2014	QPrize from Qualcomm Ventures
2015	Girish Mathrubootham, Phanindra Sama, Vikram Chachra, Others from LetsVenture
2016	Reliance Capital Venture
2017	Helion Ventures, Jungle Ventures & Bessemer Venture Partners
2018	Ajeet Khurana & Others
2019	Zodius Technology Fund
2020	ChrysCapital
2021	Sequoia Capital, Lightspeed Ventures
2022	Quintillion Media, 500 Startups
2023	Accel Partners, Deep Kalra, Rajesh Magow, Mohit Gupta, Shamik Sharma
2024	Amit Ranjan, Vijay Shekhar Sharma, Kunal Bahl, Girish Mathrubootham &\\\\xc2\\\\xa0 Group of other Angel investors
2025	Accion, LeapFrog Investments, Lok Capital
2026	LetsVenture, Mumbai Angels
2027	Jitendra Gupta & others
2028	Gujarat based angel investors, MMY co-Founder
2029	Group of angel investors
2030	Nalin Jain & other angel investors
2031	Ratan Tata, Vani Kola, T V Mohandas Pai, Karthee Madasamay
2032	Intellecap Impact Investment Network, family office fund
2033	Existing & New Investors
2034	Rohit Goel
2035	Kunal Bahl, Rohit Bansal, Zishaan Hayath, Prashant Malik
2036	One97 Communications
2037	New Enterprise Associates, Orios Venture Partners
2038	NEA, Milliways Ventures, Naya Ventures
2039	Rohit Bhatia, Sunil Nikhar, Vaibhav Domkundwar, Siddharth Nautiyal
2040	NEA, Blume Ventures & others
2041	Umesh Yadav
2042	Manish Dhingra, Ankush Nijhawa, Gaurav Bhatnagar
2043	AskMe
2044	Group of Angel Investors
2045	ah! Ventures, Times Internet, Rudy Gopalakrishnan
2046	Orios Venture Partners, Amit Ranjan & others
2047	The 1947
2048	Ajmera Group of Companies
2049	Prime Capital Markets Ltd
2050	India Quotient, Anupam Mittal & others
2051	GrowX ventures, Tracxn Labs, Powai Lake Ventures, and Sahil Barua
2052	Norwest Venture Partners, Nexus Venture Partners, Helion Venture Partners, Draper Fisher Jurvetson, Peepul Capital
2053	India Quotient, LetsVenture investors, Lead Angels
2054	Group of Investors
2055	Ravi Agarwal
2056	Ibibo Group
2057	Growx Ventures, Manish Singhal
2058	Rocket Internet
2059	Equentia Natural Resources
2060	Li Tao, Li Jian, Draphant Consultants, Nitin Garg, Saurabh Jain, Mohit Agarwal
2061	Manish Singhal, P39 Capital & Others
2062	Aspada Investment Advisors, Qualcomm Ventures
2063	Ratan Tata, Nikhil Vora & others
2064	Delhivery, Tracxn Labs
2065	The Chennai Angels, IDG Ventures India
2066	Bessemer Ventures, Kae Capital
2067	ah! Ventures, Vivek Joshi, Mohit Satyanand & others
2068	IFC, Axon Partners, Intel Capital
2069	Amazon, Fidelity Growth Partners, Mousse Partners
2070	Rajan Anandan, Kunal Bahl, Rohit Bansal, Rahul Khanna
2071	Gokul Jaykrishna, Brand Capital
2072	Rebright Partners, Tracxn Labs, Aneesh Reddy
2073	Powai Lake Ventures, Ajeet Khurana & others
2074	Pravin Agarwala & others
2075	Sofina, Hillhouse Capital
2076	Atulya Mittal
2077	Mangroves Capital Partners, Vikas Saxena
2078	DMG information Asia Pacific
2079	Powai Lake Ventures, Globeinvestor, Abhishekh Goyal
2080	DSG Consumer Partners, Siddharth Parekh
2081	Jaydeep Barman
2082	Tiger Global Management, Bertelsmann India, Steadview Capital, Liberty Media, Mousse Partners, Quilvest
2083	Sunrise Capital GmBH, Big Data Investments B.V
2084	Helion Venture Partners,Amarpreet Sawhney, Deshpande Foundation, Fred Khosravi, Richard S. Braddock
2085	Not Disclosed
2086	Mirah Hospitality
2087	Saama Capital, Mayfield, Ashvin Chadha, Shailesh Mehta
2088	Tiger Global Management, Ratan Tata, Nexus Venture Partners
2089	Sequoia Capital, Empire Angels, NGP
2090	\\\\xc2\\\\xa0Tiger Global
2091	\\\\xc2\\\\xa0IvyCap Ventures, Accel Partners, Dragoneer Investment Group
2092	\\\\xc2\\\\xa0 Sandeep Aggarwal, Teruhide Sato
2093	\\\\xc2\\\\xa0Rajeev Saraf, Arvind Jha, R. Satya Narayanan
2094	\\\\xc2\\\\xa0Indian Angel Network
2095	\\\\xc2\\\\xa0LetsVenture, Kumar Bansal, Kshitij Jain
2096	\\\\xc2\\\\xa0IndianIdeas.com
2097	\\\\xc2\\\\xa0Forum Synergies PE Fund
2098	\\\\xc2\\\\xa0Goldman Sachs
2099	\\\\xc2\\\\xa0Palaash Ventures
2100	Accel Partners, Helion Venture Partners
2101	Atul Jalan
2102	Ritesh Veera, Singapore Angel Network, Orios Venture Partners,
2103	HR Technology fund
2104	Tamarind Family Private Trust
2105	Softbank, Sequoia Capital
2106	Anupam Mittal, Anand Chandrasekaran, Uday Shankar, Chetan Bhagat
2107	Sequoia Capital, Nexus Venture Partners, Blume Ventures
2108	Pradyumna Dalmia, Sudhir Rao & Others
2109	Sumit Gandhi, Manish Gandhi
2110	Tiger Global, Orios Venture Partners.
2111	Catamaran Ventures, New India Investment Corporation
2112	Tracxn Labs, Deepak Singh
2113	Mumbai Angels, Vriddhi Fund, Others
2114	India Value Fund Advisors
2115	Flipkart, Tiger Global
2116	Falcon Edge Capital, Meru Capital, Ola, Matrix Partners, DSG Consumer Partners, Axis Bank
2117	Jayant Bokadia
2118	AB Kinnevik, Falcon Edge Capital, Coatue Management
2119	YourWeCan Ventures
2120	Fidelity Growth Partners
2121	growX ventures,\\\\xc2\\\\xa0 Manish Singhal
2122	Varun Agarwal & Others
2123	Goldman Sachs, Zodius Technology Fund, Bertelsmann India Investments Norwest Venture Partners.
2124	Steadview Capital and existing investors
2125	Accel Partners, Traxcn Labs & Others
2126	Sandeep Parwal, Krishan Gupta & Others
2127	IDG Ventures India, Omidyar Network, Sherpalo Ventures,\\\\xc2\\\\xa0 Mohandas Pai
2128	Sachin and Binny Bansal, Malvinder and Shivinder Singh, Gurpreet Singh & others
2129	Paytm, SAIF Partners,\\\\xc2\\\\xa0 Tiger Global Management & others
2130	Abhishek Gupta
2131	LionRock Capital
2132	SIDBI Venture Capital Ltd
2133	Lightbox Ventures, Beenos
2134	Kunal Bahl, Rohit Bansal
2135	Elliot Stechman, Gautam Sinha, Ambarish Ray
2136	B S Nagesh
2137	YouWeCan Ventures,\\\\xc2\\\\xa0 Aprameya Radhakrishna
2138	Jai Choi, Kiyohiro Sugashita, Hirokazu
2139	Aarin Capital Partners,
2140	Oliphabs Capital
2141	Aprameya Radhakrishna
2142	DSG Consumer Partners, Saama Capital.
2143	Kae Capital, Anupam Mittal
2144	Group of 15 Angel Investors
2145	GrowthStory
2146	Ventureworks India, Blume Ventures, Batlivala & Karani Securities, Nikunj Jhaveri
2147	Srinivas Tirupati
2148	Carrick Capital Partners
2149	Mumbai Angels & Other angel investors
2150	Ennovent Impact Investment Holding
2151	Mark Mobius & 9 Other Angel investors
2152	DMG Information
2153	Rajan Anandan, Niraj Singh, Sachin Bhatia, Singapore Angel Network & Aseem Vadehra
2154	Sharad Sharma, Rajan Anandan, Sunil Kalra, Amit Ranjan, Rohan Malhotra,\\\\xc2\\\\xa0 Arjun Malhotra, Gautam Gandhi
2155	Virendra Shahney, Dr Paresh Doshi
2156	Tiger Global,\\\\xc2\\\\xa0 Nirvana Ventures Advisors
2157	Morgan Stanley
2158	Fidelity Growth Partners, Fidelity Biosciences
2159	Snow Leopard, Paytm
2160	Natarajan Iyer,Rajesh Sawhney,\\\\xc2\\\\xa0 & other Angel investors.
2161	Future Fund,Bessemer Venture, Capricorn Investment and IFC
2162	Norwest Venture Partners, SAIF Partners, Accel Partners
2163	KCL
2164	Pawan Borle, SVP Fly Dubai & Others
2165	Sequoia Capital, Seedfund
2166	Arihant Patni, Vishal Khare,\\\\xc2\\\\xa0 Viswanath Ramachandran
2167	M&S Partners Pte. Ltd
2168	i2india Pvt Ltd
2169	Infuse Ventures, Low Carbon Enterprise Fund
2170	Mahesh Pratapneni, Pallab Chatterjee & others
2171	Mumbai Angels, Patni Family Office, Singapore Angel Network, Karan Maheshwari, Jatin Aneja, Kishor Ganji, Roopa Nath
2172	Unitus Seed Fund, Times Internet
2173	LGT Group, Asian Healthcare fund, Seedfund
2174	Neoteric Infomatique Limited
2175	ASK Pravi
2176	Gopal Srinivasan, Sashi Reddy, Amit Gupta, Pallav Nadhani
2177	Sunil Maheshwari & group of investors
2178	Faering Capital, Foundation Capital, Inventus Capital Partners
2179	Group of Angel Investors from US/India
2180	Sachin Bansal, Bunny Bansal & other investors
2181	Kunal Bahl, Rohit Bansal, Blume Ventures, Phanindra Sama, Raju Reddy
2182	Sprout Angels LLP
2183	AngelPrime
2184	Dr David Cheriton
2185	Matrix Partners India, SAIF Partners
2186	Holostik Group, YouWeCan Ventures, 500 Startups, Vijay Shekhar Sharma, Manish Kheterpal, Amit Patni
2187	Nokia Growth Partners, Nexus Venture Partners, Avalon Ventures
2188	Sequoia Capital, Kae Capital, Anupam Mittal, Sandeep Tandon
2189	Mercury Fund, Anshu Sharma, Pratyush Prasanna, Robert Winters & others
2190	Development finance institution Belgian Investment Company, Oikocredit
2191	Accel Partners, Flipkart
2192	IDG Ventures India, Elevar Equity, Accion Venture Lab
2193	SAIF Partners,\\\\xc2\\\\xa0 Accel Partners
2194	Tracxn Labs, Sahil Barua
2195	Mape Advisory
2196	Naveen Tiwari, Mohit Saxena, Amit Gupta, Piyush Shah, Manish Dugar
2197	Kanwaljit Singh, Angie Mahtaney, Manoj Varghese
2198	Helion Ventures, Omidiyar Network, Blume Ventures and Ujama
2199	Commonfloor
2200	Sameer Koticha
2201	Goldman Sachs, Rocket Internet
2202	Anand Vijay, Nipun Dureja, Satyajit Heeralal, Keith Rodricks, Gaurav Lochan, Azmul Haque, Nikhil Bagri
2203	Rishi Vasudev, Amit Gupta, Rajiv Nayan
2204	Viraj Tyagi & others
2205	IDG Ventures, Sequoia Capital
2206	Vishwas Patel
2207	Tiger Global Management, Multiples Alternate Asset Management, Nexus Venture Partners, Times Internet
2208	IDG Ventures, Kris Gopalakrishnan
2209	Fidelity Growth Partners India, SAIF Partners,\\\\xc2\\\\xa0 Helion Ventures
2210	Accel Partners, Tiger Global Management
2211	S.Gopalakrishnan, Beenos
2212	Exfinity Ventures
2213	Florida based Angel investor
2214	Helion Venture Partners, Orios Venture Partners
2215	Arun Chandra Mohan, Praveen Sinha
2216	Prototyze
2217	Rajendra Gogri,\\\\xc2\\\\xa0 Chandrakant Gogri
2218	Rajan Anandan, Teru Sato, Aneesh Reddy, Venkatesh Valluri
2219	KJS Group
2220	Phanindra Sama, Jay Sethuram, Hemant Kanakia, Ravi Trivedi
2221	Mohandas Pai
2222	Samir Shah
2223	Subhash Goyal
2224	Peesh Venture Capital
2225	MakeMyTrip Innovation Fund
2226	SAIF partners
2227	Biz Stone
2228	Sunergy Investors
2229	Kae Capital, Anoop Goyal, Mike Shah, VA Sastry
2230	HDFC Bank
2231	Sandiep Shrivatsava
2232	i2india Ventures
2233	Jan Manten
2234	Nirvana Venture Advisors
2235	Manipal Group
2236	Astarc Ventures
2237	Accel Partners, Kalaari Capital
2238	Tim Chen, Sanjay Venkat
2239	Sol Primero, Outbox Ventures, Nikunj Jain
2240	Accel Partners, SAIF Partners
2241	Rudy Gopalakrishnan, ah! Ventures
2242	Rajesh Sawheny , Rajan Anandan, Amit Ranjan, Niraj Singh, AECAL, MeraEvents.
2243	Amit Tyagi, Sandeep Acharya & others
2244	Tiger Global, Investment AB Kinnevik, Steadview Capital
2245	Sequoia Capital, Jason Hirschhorn, Jarett Posner, and Amit Bhatiani
2246	Ajit Surana, Sanjay Mehta
2247	Silicon Valley Ventures, NEA Ventures, Valiant Capital, IDG Ventures India,\\\\xc2\\\\xa0 SAIF Partners, Vertex Ventures
2248	Tree Line Asia, Cisco Investments, American Express, Sequoia Capital
2249	DST Global, Steadview Capital, Tiger Global, Accel Partners & Others
2250	Ajai Chowdhry, Ashvin Chadha, Yogesh Bansal,\\\\nNitin Singhal & Others
2251	Kanwaljit Singh, Shripad Nadkarni, Sarvesh Shahra & Others
2252	Hyderabad based investor
2253	Sequoia Capital, TR Capital, Steadview Capital, SAIF Partners, Kalaari Capital
2254	Matrix Partners India, India Quotient
2255	Helion Venture Partner, Powerhouse Ventures, GSF and Other angel investors
2256	Dragoneer Investment, Accel Partners, Qualcomm Ventures, Times Internet
2257	Ajay Relan,
2258	Tiger Global Management, Lightspeed Venture Partners
2259	Tiger Global, Sequoia Capital
2260	SAIF Partners, Sequoia Capital
2261	PremjiInvest, Tiger Global, Ribbit Capital
2262	SAIF Partners, Accel Partners, Kunal Bahl, Rohit Bansal
2263	Orios Venture Partners, Mayfield India
2264	Ascent Capital, Kalaari Capital
2265	Powai Lake Ventures
2266	Deep Kalra, Sequoia Capital, Omidyar Network, Intel Capital & Kae Capital
2267	Tiger Global, Google Capital & Accel Partners
2268	GIC ventures
2269	The Phoenix Fund
2270	Michael & Susan Dell Foundation, Pearson Learning Fund
2271	Mayfield Ventures, Kalaari Capital, Helion Ventures
2272	Sequoia Capital, Nexus venture Partners, Lightspeed Ventures, GFC
2273	Version One Ventures, 500 Startups, Nexus Venture Partners and Arena Ventures
2274	Rakesh Mathur, Vikas Taneja & others
2275	Deepak Shahdadpuri, Gulpreet Kohli
2276	Lightspeed Ventures
2277	Accel US, Accel India, SAIF Partners.
2278	S S Mukherji & Others
2279	Oliphans Capital, Haresh Chawla
2280	Ah! Ventures, Calcutta Angels,\\\\xc2\\\\xa0 91SpringBoard
2281	Infuse Ventures fund
2282	SEEK Ltd & affiliates
2283	Anand Rajaraman, Venky Harinarayan
2284	Cross Border Angels & others
2285	Mitsui & Co & existing investors
2286	Bessemer Ventures, Blume Ventures
2287	Greycroft Partners, Fidelity Growth Partners
2288	Sumit Jain, Aprameya Radhakrishna, Alok Goel, Rajan Anandan, Amit Agrawal, Vinay Goel, Gaurav Munjal, Ashish Dev Kapur
2289	The HR Fund
2290	Bessemer Venture Partners, SAIF Partners
2291	Helion Venture Partners, Kae Capital
2292	Maverick Capital, IDG Ventures India
2293	Ashutosh Lawania, Alok Goel & others
2294	Madhukar Gangadi, Satish Reddy, Srini Raju, Srini Koppolu & SIDBI
2295	Rajan Anandan & other angel investors
2296	Powai Lake Ventures, Aneesh Reddy, Ashish Kashyap, Alok Mittal
2297	Shrem Strategies
2298	Tarun Arora
2299	Tiger Global, Accel Partners
2300	IAN Ventures, Alok Sharma, Kris Gopalakrishnan, Saurabh Srivastava, Ajai Chowdhry
2301	Tiger Global, Sequoia Capital.
2302	Rocket Internet AG & others
2303	VentureEast,\\\\xc2\\\\xa0 Varaprasad Reddy
2304	Powai Lake Ventures, Zishan Hayath, Abhishek Goyal, Sahil Barua
2305	Kae Capital, GSF, Teruhide Sato
2306	Zishaan Hayath, Lalit Mangal, Harpreet Singh Grover
2307	Ramesh kavediya
2308	IDG Ventures, Naveen Tewari
2309	I-cube-N
2310	Value Fund Advisors
2311	Wipro
2312	IDG Ventures, Outbox Ventures
2313	CA Media LP,\\\\xc2\\\\xa0 Start Media.
2314	Armat Group
2315	Wu Chay Chin
2316	Valiant Capital
2317	HT Media, Arun Duggal
2318	RVCF and SIDBI
2319	LightBox Ventures
2320	Sol Primero
2321	JAFCO Asia, Keystone Group, Dragoneer Investment, Accel Partners
2322	Accion Venture Labs, Rianta Capital
2323	Dr Mushtaq Shah, Dr Faraz Naqvi
2324	Impact Investment Holding, Upaya Social Ventures
2325	Greenoaks capital, Sequoia Capital, LightSpeed Ventures
2326	Tiger Global Management, Indian Quotient, Binny Bansal
2327	Sequoia Capital, India Quotient
2328	Solidarity Venture Capital & others
2329	Pittie Group
2330	Nick Adams, Kiran Bhat, Family Pot Investments LLP
2331	Tiger Global, Matrix Partners, Lightspeed Venture Partners
2332	Nandan Nilekani, Rajiv Mody, Ajai Chowdhary
2333	Tano Capital
2334	TA Associates
2335	Mayfield Ventures, Kalaari Capital
2336	Trinity Ventures, InterWest Partners, Mohr Davidow Ventures, Presidio Ventures
2337	Zodius Capital, Ru-Net, Kalaari Capital,\\\\xc2\\\\xa0 Qualcomm Ventures
2338	Sol Primero, Rajiv Mehta
2339	Orios Venture Partner
2340	Valiant Capital Partners
2341	India Quotient, Kae Capital
2342	Temasek, Norwest Venture Partners
2343	Splice Advisors
2344	Tiger Global, Times Internet, Zodius Capital
2345	Ant Financial Services (Alipay)
2346	Anand Vijay, Shashank Mehrotra & Others
2347	Valiant Capital, Tybourne Capital, Sequoia Capital, RuNet and Sofina
2348	Falcon Edge Capital, Matrix Partners India, Sequoia Capital India and Omidyar Network
2349	Chip Perry
2350	Mangrove Capital Partners
2351	SAIF Partners, Sequoia Capital, Aspada
2352	Karan Bajwa, Parvesh Bareja , Sunjay Kapur, Amanpreet Bajaj
2353	Nexus Venture Partners, Matrix Partners
2354	Suresh Senapaty, TV Mohandas Pai
2355	Srinivas Aluri, Srinivas Modukury, BS Nagesh
2356	Ashok Goel (promoter)
2357	Tiger Global, Rebright Partners, Sachin and Binny Bansal
2358	Mumbai Angels & Group of other investors
2359	Helion Venture Partners
2360	Cross Border Angels
2361	Calcutta Angels, Venture Nursery Angels Mumbai Angels
2362	Brick Eagle
2363	DA-IICT, Techstars, Carnegie Mellon University, Startup Brasil program
2364	Sequoia Capital, Ranjan Pai, Mohandas Pai & others
2365	InterGlobe Technology Quotient, Lantern Capital
2366	SAIF Partners, Fulcrum Ventures
2367	Unitus Seed Fund\\\\nNarayan Ramachandran, Bijou Kurien
2368	Amit Ranjan, Deepinder Goyal, Zishaan Hayath, Powai Lake Ventures
2369	V Balakrishnan, T V Mohandas Pai, BC Prabhakar
2370	V Balakrishnan, T V Mohandas Pai
2371	Sumit Jain, Rajat Jain, Sanjay Bhasin
2372	Kris Gopalakrishnan, Nagaraja Prakasam
2373	Matrix Partners, Sequoia Capital, Nexus Venture Partners
2374	IDG Ventures India, Jungle Ventures, India Quotient.
2375	Tiger Global Management, Sequoia Capital India
2376	TPG Growth, TR Capital, IDG Ventures
2377	Venkat Vallabhneni, Sudhakar Reddy, Srinivasa Rao Paturi
2378	DeNA Co., Japan & Teruhide Sato (in Addition to MKS Switzerland & Kris GopalKrishnan)
2379	TO THE NEW Ventures
2380	Tom Clausen, Rohan Ajila, Haldyn Glass
2381	Anupam Mittal, Manish Vij, Prashant Tandon, Gaurav Agarwal, Akash Agarwal, Himanshu Aggarwal, Kevin Parikh
2382	Jungle Ventures, Redbright Partners, Blume Ventures
2383	Devesh Sachdev, Ashish Tiwari
2384	Seedrs Crowd funding platform
2385	Rohit Bansal, Kunal Bahl, Nikhil Vora
2386	Kickstarter
2387	IvyCap Ventures, Inventus Capital
2388	JS Capital, Helion Venture Partners, Capricorn Investment Group
2389	Alok Goel
2390	GWB Group, Blume Ventures
2391	Rajan Anandan, Mike Galgon, Ashim Mehra, Mohit Saxena, Ravi Gururaj, TNN Capital & IIG
2392	Rajan Anandan, Shankar Mahadevan, Deep Kalra & Others
2393	Adroitent Pvt. Ltd.
2394	Tiger Global & Other investors
2395	Cogent E Services
2396	Consortium of Angel Investors
2397	Hyderabad Angels (at Startup Heroes event)
2398	Eduardo Saverin & Velos Capital
2399	Premji Invest & Mayfield Fund
2400	Mayfield India, Kalaari Capital, Helion Ventures
2401	Rohit Jain, Amit Rambhia & Others
2402	August Capital Partners, Michael Blakey
2403	ANALEC
2404	Goldman Sachs, Zodius Capital
2405	Inventus Capital Partners, IDG Ventures
2406	Kaizen Private Equity
2407	People Group (Shaadi.com)
2408	Hillhouse Capital, Tybourne Capital
2409	Kalaari Capital, Sequoia Capital
2410	Asia Pacific Internet Group
2411	KARSEMVEN Fund
2412	Exfinity Fund, GrowX Ventures.
2413	UK based Group of Angel Investors
\.


--
-- Data for Name: investimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.investimento (id, startup_id, investidor_id, valor, data_realizada, obs) FROM stdin;
1	1	1	200000000	2020-01-09	\N
2	2	2	8048394	2020-01-13	\N
3	3	3	18358860	2020-01-09	\N
4	4	4	3000000	2020-01-02	\N
5	5	5	1800000	2020-01-02	\N
6	6	6	9000000	2020-01-13	\N
7	7	7	150000000	2020-01-10	\N
8	8	8	6000000	2019-12-12	\N
9	9	9	70000000	2019-12-06	\N
10	10	10	50000000	2019-12-03	\N
11	11	11	20000000	2019-12-13	\N
12	12	12	12000000	2019-12-17	\N
13	13	13	30000000	2019-12-16	\N
14	14	\N	5900000	2019-12-16	\N
15	15	15	2000000	2019-12-14	\N
16	16	16	50000000	2019-12-11	\N
17	17	17	231000000	2019-12-20	\N
18	18	18	150000000	2019-11-13	\N
19	19	19	486000	2019-11-14	\N
20	20	20	1500000	2019-11-13	\N
21	21	21	\N	2019-11-17	\N
22	12	22	12000000	2019-11-18	\N
23	23	23	26000000	2019-11-15	\N
24	24	24	17411265	2019-11-20	\N
25	25	25	1300000	2019-11-12	\N
26	26	26	135000000	2019-11-20	\N
27	27	27	300000	2019-11-11	\N
28	28	28	220000000	2019-11-19	\N
29	29	29	15800000	2019-11-18	\N
30	30	30	283000000	2019-11-15	\N
31	31	31	200000000	2019-11-19	\N
32	32	32	1000000000	2019-11-25	\N
33	33	33	45000000	2019-10-04	\N
34	34	34	585000000	2019-10-02	\N
35	35	35	\N	2019-10-21	\N
36	36	36	4500000	2019-09-05	\N
37	37	37	3300000	2019-09-04	\N
38	38	38	6000000	2019-09-04	\N
39	39	39	5000000	2019-09-04	\N
40	40	40	18000000	2019-09-04	\N
41	41	41	1000000	2019-09-04	\N
42	42	42	10000000	2019-09-04	\N
43	43	43	450000000	2019-09-04	\N
44	44	44	5000000	2019-09-03	\N
45	9	45	20000000	2019-08-01	\N
46	46	46	5000000	2019-08-01	\N
47	47	\N	1600000	2019-08-01	\N
48	48	47	140000000	2019-08-01	\N
49	49	48	38080000	2019-08-01	\N
50	50	49	125000000	2019-08-12	\N
51	51	50	11000000	2019-08-13	\N
52	52	51	51000000	2019-08-13	\N
53	53	52	37000000	2019-08-23	\N
54	54	53	500000	2019-08-23	\N
55	55	54	110000000	2019-08-23	\N
56	56	1	15000000	2019-08-22	\N
57	57	55	6590000	2019-08-21	\N
58	58	56	1000000	2019-08-23	\N
59	59	57	\N	2019-08-19	\N
60	60	58	70000000	2019-08-19	\N
61	61	59	3900000000	2019-08-27	\N
62	62	60	19000000	2019-07-02	\N
63	63	61	2500000	2019-07-02	\N
64	64	62	145000	2019-07-01	\N
65	65	63	1000000	2019-07-03	\N
66	52	51	38080000	2019-07-01	\N
67	67	64	500000	2019-07-04	\N
68	68	65	150000000	2019-07-10	\N
69	69	66	60000000	2019-07-11	\N
70	70	67	16000000	2019-07-10	\N
71	71	68	5750000	2019-07-10	\N
72	72	69	2500000	2019-07-10	\N
73	73	70	1000000	2019-07-09	\N
74	74	71	319605	2019-07-08	\N
75	75	72	51000000	2019-06-05	\N
76	76	73	10000000	2019-06-04	\N
77	77	74	4889975.54000000004	2019-06-03	\N
78	78	75	9000000	2019-06-03	\N
79	79	76	75000000	2019-06-04	\N
80	80	77	26000000	2019-06-04	\N
81	81	78	2500000	2019-06-03	\N
82	82	79	2739034.68000000017	2019-06-06	\N
83	83	80	26000000	2019-06-06	\N
84	84	81	15109500	2019-06-06	\N
85	85	82	430200	2019-06-10	\N
86	86	1	15500000	2019-06-10	\N
87	87	83	52000000	2019-06-06	\N
88	88	84	3584000	2019-06-08	\N
89	89	85	3400000	2019-06-04	\N
90	90	86	\N	2019-05-06	\N
91	91	87	868600	2019-05-06	\N
92	92	88	\N	2019-05-05	\N
93	93	89	150000000	2019-05-01	\N
94	94	1	50000000	2019-05-02	\N
95	95	90	51000000	2019-05-28	\N
96	96	91	140000000	2019-05-28	\N
97	97	92	11500000	2019-05-30	\N
98	76	93	5600000	2019-05-31	\N
99	99	94	45000000	2019-04-16	\N
100	100	95	17000000	2019-04-12	\N
101	101	96	430665	2019-04-10	\N
102	102	97	3591375	2019-04-13	\N
103	103	98	200000	2019-04-12	\N
104	104	99	3500000	2019-04-11	\N
105	105	100	6320820	2019-04-10	\N
106	106	101	2443495	2019-04-10	\N
107	107	102	307000	2019-04-10	\N
108	108	103	26000000	2019-04-11	\N
109	109	93	3000000	2019-04-19	\N
110	110	104	\N	2019-04-19	\N
111	2	105	5000000	2019-04-17	\N
112	112	106	3000000	2019-04-17	\N
113	113	107	\N	2019-02-01	\N
114	114	108	226000000	2019-02-08	\N
115	115	109	600000	2019-02-13	\N
116	116	110	100000000	2018-02-14	\N
117	9	111	110000000	2019-01-03	\N
118	118	112	22000000	2019-01-04	\N
119	119	113	5000000	2019-01-04	\N
120	120	114	700000	2018-12-04	\N
121	121	115	50000000	2018-12-01	\N
122	122	116	800000	2018-12-02	\N
123	123	116	572000	2018-12-02	\N
124	124	117	143000	2018-12-04	\N
125	125	118	2000000	2018-12-06	\N
126	126	119	3500000	2018-12-06	\N
127	127	120	138995	2018-11-01	\N
128	128	121	27799000	2018-11-03	\N
129	50	122	50000000	2018-11-06	\N
130	130	67	500000	2018-11-08	\N
131	131	123	1000000	2018-11-08	\N
132	132	124	1000000	2018-11-12	\N
133	133	125	1300000	2018-11-12	\N
134	134	126	1000000	2018-11-13	\N
135	135	127	500000	2018-11-14	\N
136	136	17	300000000	2018-11-19	\N
137	137	128	6000000	2018-11-20	\N
138	138	129	278000	2018-11-21	\N
139	139	130	31000000	2018-11-22	\N
140	140	129	\N	2018-11-22	\N
141	141	131	3400000	2018-11-23	\N
142	142	132	29500000	2018-11-24	\N
143	143	133	42000000	2018-11-25	\N
144	144	134	1700000	2018-11-25	\N
145	145	135	\N	2018-10-01	\N
146	146	136	11000000	2018-10-02	\N
147	147	137	8200000	2018-10-04	\N
148	148	138	3000000	2018-10-05	\N
149	149	139	4000000	2018-10-11	\N
150	132	3	14680000	2018-10-12	\N
151	151	140	12000000	2018-10-12	\N
152	152	141	35000000	2018-09-01	\N
153	34	142	225000000	2018-09-03	\N
154	154	143	6390000	2018-09-03	\N
155	155	\N	1000000	2018-09-04	\N
156	156	144	\N	2018-09-04	\N
157	157	145	157200000	2018-09-05	\N
158	158	146	\N	2018-09-05	\N
159	159	147	100000000	2018-09-06	\N
160	160	148	4000000	2018-09-10	\N
161	161	149	32000000	2018-09-11	\N
162	162	150	5500000	2018-09-11	\N
163	163	151	5000000	2018-09-11	\N
164	164	152	30000000	2018-09-12	\N
165	165	153	400000	2018-08-01	\N
166	166	154	\N	2018-08-01	\N
167	167	155	7000000	2018-08-02	\N
168	168	156	120000	2018-08-03	\N
169	169	\N	1000000	2018-08-07	\N
170	170	157	35000000	2018-08-07	\N
171	171	158	10000000	2018-08-07	\N
172	172	159	4000000	2018-08-08	\N
173	173	160	12200000	2018-08-08	\N
174	174	161	66000000	2018-08-08	\N
175	175	162	3000000	2018-08-09	\N
176	176	163	1000000	2018-08-09	\N
177	177	164	4000000	2018-08-13	\N
178	178	165	8000000	2018-08-13	\N
179	179	\N	114811	2018-08-16	\N
180	180	166	5850000	2018-08-17	\N
181	181	\N	1000000	2018-08-20	\N
182	182	84	4800000	2018-08-20	\N
183	183	167	6000000	2018-08-22	\N
184	184	168	14270000	2018-08-22	\N
185	185	169	13400000	2018-08-26	\N
186	186	170	4200000	2018-08-26	\N
187	187	171	5000000	2018-08-27	\N
188	188	172	3000000	2018-08-28	\N
189	189	\N	600000000	2018-08-30	\N
190	190	156	\N	2018-07-01	\N
191	191	173	1000000	2018-07-02	\N
192	192	174	4000000	2018-07-04	\N
193	193	175	6250000	2018-07-05	\N
194	194	176	27700000	2018-07-06	\N
195	195	177	440000	2018-07-09	\N
196	196	178	1100000	2018-07-09	\N
197	197	179	437000	2018-07-10	\N
198	198	127	\N	2018-07-10	\N
199	199	180	5000000	2018-07-10	\N
200	200	181	5000000	2018-07-10	\N
201	201	182	2500000	2018-07-11	\N
202	202	183	180000	2018-07-12	\N
203	203	184	500000	2018-07-12	\N
204	204	185	175000	2018-07-13	\N
205	205	186	29000000	2018-07-17	\N
206	51	187	49700000	2018-07-17	\N
207	207	188	1500000	2018-07-18	\N
208	208	189	100000000	2018-07-19	\N
209	209	\N	1500000	2018-07-20	\N
210	210	190	18000000	2018-07-21	\N
211	211	\N	\N	2018-07-23	\N
212	212	191	280000	2018-07-23	\N
213	213	192	436000	2018-07-23	\N
214	214	193	180000	2018-07-24	\N
215	215	194	45000000	2018-07-24	\N
216	216	195	17000000	2018-07-25	\N
217	15	196	1250000	2018-07-25	\N
218	218	197	2500000	2018-07-25	\N
219	219	198	1100000	2018-07-26	\N
220	220	199	\N	2018-07-26	\N
221	221	200	500000	2018-07-26	\N
222	2	201	11000000	2018-07-30	\N
223	223	202	120000000	2018-07-30	\N
224	224	203	100000000	2018-07-31	\N
225	225	204	5000000	2018-07-31	\N
226	226	205	10000000	2018-06-01	\N
227	227	206	125000	2018-06-04	\N
228	228	207	\N	2018-06-04	\N
229	229	208	\N	2018-06-05	\N
230	230	209	\N	2018-06-05	\N
231	231	210	23000000	2018-06-07	\N
232	50	211	11500000	2018-06-07	\N
233	233	212	21500000	2018-06-10	\N
234	234	213	\N	2018-06-11	\N
235	235	214	14800000	2018-06-12	\N
236	236	215	10100000	2018-06-12	\N
237	237	216	3000000	2018-06-12	\N
238	238	217	300000	2018-06-13	\N
239	239	218	450000	2018-06-13	\N
240	240	219	\N	2018-06-13	\N
241	241	220	3450000	2018-06-14	\N
242	242	221	4800000	2018-06-14	\N
243	243	222	21000000	2018-06-18	\N
244	244	223	1700000	2018-06-18	\N
245	245	224	\N	2018-06-19	\N
246	246	225	1100000	2018-06-19	\N
247	247	226	15000000	2018-06-20	\N
248	248	227	9100000	2018-06-22	\N
249	194	228	200000000	2018-06-25	\N
250	250	229	4000000	2018-06-25	\N
251	251	230	1000000	2018-06-25	\N
252	32	231	8950000	2018-06-26	\N
253	253	232	19000000	2018-06-26	\N
254	254	233	4500000	2018-06-27	\N
255	255	234	1100000	2018-06-28	\N
256	256	235	2000000	2018-06-28	\N
257	257	236	\N	2018-06-29	\N
258	258	237	450000	2018-05-02	\N
259	259	238	22000000	2018-05-02	\N
260	260	239	2500000	2018-05-03	\N
261	261	\N	225000	2018-05-07	\N
262	262	240	1000000	2018-05-09	\N
263	263	241	949000	2018-05-11	\N
264	157	242	24000000	2018-05-14	\N
265	265	243	4200000	2018-05-16	\N
266	266	244	300000	2018-05-21	\N
267	267	245	7000000	2018-05-21	\N
268	268	246	500000	2018-05-22	\N
269	269	247	735000	2018-05-22	\N
270	270	248	735000	2018-05-23	\N
271	271	249	2000000	2018-05-23	\N
272	272	250	2000000	2018-05-24	\N
273	273	251	293000	2018-05-24	\N
274	274	252	12000000	2018-05-27	\N
275	275	253	200000	2018-05-28	\N
276	276	254	1500000	2018-05-29	\N
277	277	255	8000000	2018-05-29	\N
278	278	256	\N	2018-05-30	\N
279	279	257	14000000	2018-05-30	\N
280	280	258	1300000	2018-05-31	\N
281	281	259	2000000	2018-04-02	\N
282	282	260	307600	2018-04-02	\N
283	283	261	\N	2018-04-02	\N
284	181	\N	1300000	2018-04-02	\N
285	285	262	55000000	2018-04-04	\N
286	286	263	150000	2018-04-05	\N
287	287	264	10000000	2018-04-05	\N
288	288	265	2800000	2018-04-09	\N
289	289	266	1000000	2018-04-09	\N
290	290	267	\N	2018-04-09	\N
291	291	\N	46140	2018-04-09	\N
292	292	268	\N	2018-04-10	\N
293	293	269	12000000	2018-04-10	\N
294	294	270	1000000	2018-04-12	\N
295	233	271	4600000	2018-04-12	\N
296	296	272	2000000	2018-04-13	\N
297	297	273	500000	2018-04-16	\N
298	298	274	\N	2018-04-16	\N
299	299	275	22000000	2018-04-18	\N
300	300	276	\N	2018-04-19	\N
301	301	277	\N	2018-04-19	\N
302	302	278	1100000	2018-04-19	\N
303	303	279	23000000	2018-04-19	\N
304	304	280	\N	2018-04-22	\N
305	305	281	1900000	2018-04-22	\N
306	157	242	11000000	2018-04-22	\N
307	307	\N	150000	2018-04-23	\N
308	308	282	22000000	2018-04-23	\N
309	309	283	246000	2018-04-25	\N
310	310	284	5500000	2018-04-26	\N
311	311	285	\N	2018-04-26	\N
312	312	286	10000000	2018-04-27	\N
313	313	287	\N	2018-04-29	\N
314	314	288	7500000	2018-04-30	\N
315	315	289	978000	2018-04-30	\N
316	316	290	\N	2018-03-01	\N
317	317	291	3000000	2018-03-01	\N
318	318	292	12000000	2018-03-01	\N
319	99	293	250000	2018-03-03	\N
320	320	294	1000000	2018-03-04	\N
321	321	295	2100000	2018-03-05	\N
322	322	296	10000000	2018-03-05	\N
323	323	297	6000000	2018-03-05	\N
324	324	298	5000000	2018-03-05	\N
325	325	82	1100000	2018-03-04	\N
326	326	299	9700000	2018-03-06	\N
327	299	300	7600000	2018-03-06	\N
328	328	301	38400000	2018-03-08	\N
329	329	302	1000000	2018-03-08	\N
330	330	303	1000000	2018-03-12	\N
331	331	304	82000000	2018-03-13	\N
332	332	305	\N	2018-03-14	\N
333	333	306	17200000	2018-03-14	\N
334	60	307	62000000	2018-03-15	\N
335	335	84	1310000	2018-03-19	\N
336	336	308	500000	2018-03-19	\N
337	337	309	3000000	2018-03-19	\N
338	338	310	1000000	2018-03-19	\N
339	339	311	\N	2018-03-20	\N
340	340	312	\N	2018-03-21	\N
341	341	313	18000000	2018-03-22	\N
342	342	314	768000	2018-03-22	\N
343	343	41	1240000	2018-03-22	\N
344	344	315	\N	2018-03-22	\N
345	345	316	1000000	2018-03-26	\N
346	346	\N	250000	2018-03-28	\N
347	347	317	2000000	2018-03-28	\N
348	348	318	535000	2018-03-27	\N
349	134	319	3000000	2018-03-27	\N
350	350	320	\N	2018-03-29	\N
351	351	321	300000000	2018-02-01	\N
352	7	322	200000000	2018-02-01	\N
353	84	323	4300000	2018-02-05	\N
354	354	324	21000000	2018-02-05	\N
355	355	325	2000000	2018-02-05	\N
356	356	326	\N	2018-02-06	\N
357	357	327	3100000	2018-02-06	\N
358	358	49	100000000	2018-02-07	\N
359	359	328	100000000	2018-02-08	\N
360	360	329	50000000	2018-02-08	\N
361	361	330	12000000	2018-02-09	\N
362	362	331	\N	2018-02-09	\N
363	363	332	6830000	2018-02-09	\N
364	364	333	\N	2018-02-09	\N
365	365	334	87000000	2018-02-12	\N
366	366	335	\N	2018-02-12	\N
367	367	302	935089	2018-02-12	\N
368	368	336	311200	2018-02-13	\N
369	369	337	\N	2018-02-13	\N
370	370	338	13500000	2018-02-13	\N
371	371	339	3000000	2018-02-14	\N
372	105	340	100000	2018-02-14	\N
373	373	341	500000	2018-02-14	\N
374	374	342	5000000	2018-02-14	\N
375	375	343	148434	2018-02-15	\N
376	376	344	6230000	2018-02-15	\N
377	377	345	250000	2018-02-16	\N
378	378	346	150000	2018-02-16	\N
379	233	347	3800000	2018-02-19	\N
380	380	348	500000	2018-02-20	\N
381	34	349	50000000	2018-02-21	\N
382	382	350	20000000	2018-02-21	\N
383	383	351	2100000	2018-02-21	\N
384	384	352	\N	2018-02-21	\N
385	385	353	772500	2018-02-26	\N
386	386	354	1040000	2018-02-26	\N
387	387	355	\N	2018-02-27	\N
388	388	356	250000	2018-02-27	\N
389	389	357	115000000	2018-02-28	\N
390	390	358	1400000	2018-02-28	\N
391	391	359	\N	2018-02-28	\N
392	108	360	\N	2018-01-02	\N
393	393	361	15700000	2018-01-04	\N
394	394	362	\N	2018-01-05	\N
395	395	363	\N	2018-01-08	\N
396	365	364	4700000	2018-01-09	\N
397	397	\N	2500000	2018-01-09	\N
398	398	365	1930000	2018-01-10	\N
399	399	366	18840000	2018-01-10	\N
400	400	367	23500000	2018-01-10	\N
401	401	368	36230000	2018-01-10	\N
402	402	369	80000	2018-01-12	\N
403	403	370	20000000	2018-01-12	\N
404	404	371	354600	2018-01-15	\N
405	405	372	25000000	2018-01-15	\N
406	406	373	20000000	2018-01-15	\N
407	407	374	1000000	2018-01-17	\N
408	408	375	18200000	2018-01-18	\N
409	409	376	400000	2018-01-22	\N
410	57	377	2500000	2018-01-22	\N
411	411	378	\N	2018-01-22	\N
412	412	379	4000000	2018-01-22	\N
413	413	380	3200000	2018-01-22	\N
414	414	381	3000000	2018-01-23	\N
415	415	382	47000000	2018-01-24	\N
416	416	383	8600000	2018-01-24	\N
417	24	384	6240000	2018-01-24	\N
418	418	385	\N	2018-01-25	\N
419	419	386	1000000	2018-01-25	\N
420	420	387	7400000	2018-01-26	\N
421	421	388	1500000	2018-01-29	\N
422	422	69	1000000	2018-01-29	\N
423	423	389	1000000	2018-01-30	\N
424	424	390	50000000	2018-01-30	\N
425	425	391	500000	2018-01-30	\N
426	374	392	7600000	2018-01-30	\N
427	427	393	10000000	2018-01-30	\N
428	428	68	4400000	2018-01-31	\N
429	429	394	\N	2017-12-01	\N
430	33	395	12300000	2017-12-05	\N
431	431	396	23000000	2017-12-05	\N
432	432	397	1000000	2017-12-05	\N
433	433	392	500000	2017-12-05	\N
434	434	398	60000000	2017-12-06	\N
435	435	33	7000000	2017-12-06	\N
436	436	399	10000000	2017-12-07	\N
437	437	400	3100000	2017-12-07	\N
438	438	401	750000	2017-12-07	\N
439	439	402	2300000	2017-12-07	\N
440	440	124	5000000	2017-12-08	\N
441	441	403	1500000	2017-12-11	\N
442	442	404	50000	2017-12-11	\N
443	443	404	50000	2017-12-11	\N
444	444	405	1200000	2017-12-11	\N
445	445	406	1800000	2017-12-12	\N
446	446	407	\N	2017-12-12	\N
447	447	390	17500000	2017-12-12	\N
448	448	408	233000	2017-12-12	\N
449	449	409	27000000	2017-12-13	\N
450	450	410	27000000	2017-12-13	\N
451	451	411	7200000	2017-12-13	\N
452	452	412	\N	2017-12-13	\N
453	453	21	7000000	2017-12-14	\N
454	454	75	6000000	2017-12-14	\N
455	455	413	250000	2017-12-14	\N
456	241	414	10000000	2017-12-14	\N
457	457	213	\N	2017-12-14	\N
458	458	415	537000	2017-12-15	\N
459	345	\N	2700000	2017-12-15	\N
460	460	416	\N	2017-12-18	\N
461	461	417	9500000	2017-12-19	\N
462	462	381	\N	2017-12-19	\N
463	463	418	1500000	2017-12-19	\N
464	464	419	1000000	2017-12-20	\N
465	465	420	19500000	2017-12-20	\N
466	71	323	4000000	2017-12-21	\N
467	467	421	150000	2017-12-21	\N
468	468	127	\N	2017-12-21	\N
469	469	361	10000000	2017-12-26	\N
470	470	422	\N	2017-12-27	\N
471	471	423	3800000	2017-12-27	\N
472	472	424	570000	2017-11-02	\N
473	473	425	\N	2017-11-02	\N
474	474	426	\N	2017-11-02	\N
475	475	392	1000000	2017-11-03	\N
476	476	427	\N	2017-11-03	\N
477	477	127	500000	2017-11-03	\N
478	478	428	1000000	2017-11-04	\N
479	479	428	\N	2017-11-06	\N
480	480	429	\N	2017-11-06	\N
481	481	430	\N	2017-11-07	\N
482	482	431	5000000	2017-11-07	\N
483	483	432	5000000	2017-11-07	\N
484	484	433	7600000	2017-11-08	\N
485	485	434	3000000	2017-11-08	\N
486	486	435	3000000	2017-11-08	\N
487	487	436	3600000	2017-11-08	\N
488	488	437	872000	2017-11-09	\N
489	489	75	\N	2017-11-09	\N
490	490	438	\N	2017-11-09	\N
491	491	439	25000000	2017-11-10	\N
492	492	440	\N	2017-11-10	\N
493	493	390	15000000	2017-11-13	\N
494	494	441	\N	2017-11-14	\N
495	495	159	8250000	2017-11-14	\N
496	496	392	900000	2017-11-15	\N
497	497	442	\N	2017-11-15	\N
498	498	323	3000000	2017-11-15	\N
499	499	443	\N	2017-11-15	\N
500	500	444	\N	2017-11-15	\N
501	501	392	200000	2017-11-17	\N
502	502	445	\N	2017-11-17	\N
503	503	446	692000	2017-11-20	\N
504	504	447	329230	2017-11-21	\N
505	505	448	2700000	2017-11-21	\N
506	506	449	400000	2017-11-21	\N
507	507	450	250000	2017-11-21	\N
508	508	451	26000000	2017-11-21	\N
509	509	452	\N	2017-11-21	\N
510	510	453	200000000	2017-11-21	\N
511	511	454	\N	2017-11-22	\N
512	512	455	\N	2017-11-23	\N
513	513	456	10000000	2017-11-24	\N
514	514	457	250000	2017-11-24	\N
515	515	458	270000000	2017-11-27	\N
516	516	459	39000	2017-11-27	\N
517	517	93	3800000	2017-11-27	\N
518	518	460	13000000	2017-11-28	\N
519	519	384	1500000	2017-11-28	\N
520	520	461	1350000	2017-11-28	\N
521	521	462	2000000	2017-11-28	\N
522	522	463	\N	2017-10-03	\N
523	523	127	\N	2017-10-03	\N
524	65	464	110000000	2017-10-03	\N
525	525	465	\N	2017-10-04	\N
526	526	466	306000	2017-10-04	\N
527	527	161	38700000	2017-10-04	\N
528	528	467	1000000	2017-10-05	\N
529	529	468	450000	2017-10-05	\N
530	530	469	9200000	2017-10-05	\N
531	531	470	3100000	2017-10-06	\N
532	532	471	8000000	2017-10-06	\N
533	533	472	10000000	2017-10-06	\N
534	534	473	2000000	2017-10-06	\N
535	535	474	\N	2017-10-09	\N
536	536	475	2700000	2017-10-09	\N
537	537	476	\N	2017-10-09	\N
538	538	477	\N	2017-10-09	\N
539	539	478	336000	2017-10-09	\N
540	540	479	\N	2017-10-09	\N
541	541	480	1400000	2017-10-10	\N
542	542	481	4500000	2017-10-10	\N
543	50	482	3100000	2017-10-11	\N
544	544	483	1100000	2017-10-11	\N
545	545	458	235000	2017-10-12	\N
546	546	484	77000000	2017-10-13	\N
547	547	485	250000	2017-10-13	\N
548	548	1	2000000	2017-10-13	\N
549	110	486	8000000	2017-10-16	\N
550	550	487	9200000	2017-10-16	\N
551	335	488	7000000	2017-10-17	\N
552	552	489	7000000	2017-10-18	\N
553	553	490	\N	2017-10-18	\N
554	93	491	7700000	2017-10-18	\N
555	555	492	500000	2017-10-18	\N
556	105	493	7000000	2017-10-23	\N
557	557	494	6000000	2017-10-23	\N
558	558	384	3100000	2017-10-23	\N
559	559	495	118000	2017-10-23	\N
560	560	496	\N	2017-10-24	\N
561	561	127	500000	2017-10-24	\N
562	562	497	3000000	2017-10-24	\N
563	563	498	722000	2017-10-24	\N
564	564	499	\N	2017-10-24	\N
565	565	500	\N	2017-10-25	\N
566	566	501	550000	2017-10-25	\N
567	567	502	5000000	2017-10-26	\N
568	568	503	3800000	2017-10-27	\N
569	569	504	\N	2017-10-27	\N
570	570	156	120000	2017-10-28	\N
571	65	505	7700000	2017-10-28	\N
572	572	506	2000000	2017-10-30	\N
573	573	507	14000000	2017-10-31	\N
574	574	508	32000000	2017-10-31	\N
575	575	509	1000000	2017-09-01	\N
576	576	510	1500000	2017-09-01	\N
577	577	294	1300000	2017-09-01	\N
578	578	511	5600000	2017-09-04	\N
579	186	512	1500000	2017-09-05	\N
580	580	513	600000	2017-09-05	\N
581	581	514	10750000	2017-09-06	\N
582	582	515	10000000	2017-09-06	\N
583	583	516	6000000	2017-09-06	\N
584	584	517	26000000	2017-09-06	\N
585	585	75	5000000	2017-09-07	\N
586	586	518	\N	2017-09-07	\N
587	587	519	250000000	2017-09-07	\N
588	588	384	780000	2017-09-07	\N
589	160	266	\N	2017-09-07	\N
590	590	520	1000000	2017-09-07	\N
591	591	521	6900000	2017-09-08	\N
592	592	522	\N	2017-09-08	\N
593	593	523	30000000	2017-09-11	\N
594	594	524	6200000	2017-09-11	\N
595	595	525	\N	2017-09-12	\N
596	155	492	100000	2017-09-12	\N
597	597	526	17000000	2017-09-12	\N
598	598	527	3000000	2017-09-12	\N
599	512	528	\N	2017-09-13	\N
600	600	529	2000000	2017-09-13	\N
601	587	530	10000000	2017-09-13	\N
602	107	531	11500000	2017-09-13	\N
603	603	532	780000	2017-09-13	\N
604	604	533	\N	2017-09-14	\N
605	517	534	44000000	2017-09-14	\N
606	606	156	120000	2017-09-14	\N
607	607	535	\N	2017-09-14	\N
608	608	536	1000000	2017-09-18	\N
609	609	537	\N	2017-09-19	\N
610	610	538	50000000	2017-09-19	\N
611	611	392	\N	2017-09-20	\N
612	612	539	6000000	2017-09-21	\N
613	613	540	\N	2017-09-21	\N
614	614	541	\N	2017-09-21	\N
615	615	542	1000000	2017-09-21	\N
616	616	543	15400000	2017-09-22	\N
617	617	150	\N	2017-09-22	\N
618	618	544	\N	2017-09-25	\N
619	619	545	6000000	2017-09-25	\N
620	620	546	\N	2017-09-25	\N
621	621	547	\N	2017-09-25	\N
622	504	548	422000	2017-09-25	\N
623	623	549	150000	2017-09-25	\N
624	624	550	\N	2017-09-26	\N
625	625	551	\N	2017-09-26	\N
626	626	552	\N	2017-09-26	\N
627	627	553	1600000	2017-09-27	\N
628	628	554	\N	2017-09-27	\N
629	629	555	1000000	2017-09-27	\N
630	630	556	\N	2017-09-27	\N
631	187	247	300000	2017-09-27	\N
632	632	557	1000000	2017-09-28	\N
633	633	550	1300000	2017-08-01	\N
634	634	558	\N	2017-08-02	\N
635	480	559	\N	2017-08-02	\N
636	636	560	500000	2017-08-02	\N
637	637	561	850000	2017-08-02	\N
638	638	562	300000	2017-08-03	\N
639	639	563	\N	2017-08-03	\N
640	640	564	\N	2017-08-03	\N
641	230	565	\N	2017-08-03	\N
642	642	566	\N	2017-08-04	\N
643	643	567	\N	2017-08-04	\N
644	644	568	\N	2017-08-04	\N
645	645	73	\N	2017-08-05	\N
646	646	458	243000	2017-08-08	\N
647	647	569	220000	2017-08-08	\N
648	648	570	3100000	2017-08-09	\N
649	649	571	783000	2017-08-09	\N
650	650	572	\N	2017-08-09	\N
651	651	573	\N	2017-08-10	\N
652	652	574	2500000000	2017-08-11	\N
653	653	575	\N	2017-08-11	\N
654	65	576	36000000	2017-08-11	\N
655	655	577	\N	2017-08-14	\N
656	656	578	312000	2017-08-14	\N
657	657	579	385000	2017-08-15	\N
658	658	580	\N	2017-08-17	\N
659	659	581	187000	2017-08-20	\N
660	52	402	6800000	2017-08-21	\N
661	661	582	734000	2017-08-21	\N
662	662	583	\N	2017-08-22	\N
663	663	584	\N	2017-08-22	\N
664	664	585	\N	2017-08-23	\N
665	665	586	80000000	2017-08-23	\N
666	666	266	2300000	2017-08-23	\N
667	667	587	\N	2017-08-23	\N
668	668	588	500000	2017-08-23	\N
669	669	589	16000000	2017-08-24	\N
670	670	590	750000	2017-08-25	\N
671	671	591	125000	2017-08-25	\N
672	672	592	7000000	2017-08-28	\N
673	427	593	25000000	2017-08-29	\N
674	305	594	750000	2017-08-29	\N
675	675	595	\N	2017-08-29	\N
676	676	596	34000000	2017-08-30	\N
677	322	597	30000000	2017-08-30	\N
678	678	598	1000000	2017-07-01	\N
679	679	599	2600000	2017-07-03	\N
680	148	600	20000000	2017-07-04	\N
681	681	601	8500000	2017-07-05	\N
682	69	602	12000000	2017-07-05	\N
683	683	603	1000000	2017-07-05	\N
684	684	604	\N	2017-07-06	\N
685	685	\N	\N	2017-07-06	\N
686	686	605	1000000	2017-07-07	\N
687	687	606	\N	2017-07-07	\N
688	688	607	3000000	2017-07-10	\N
689	689	608	2250000	2017-07-11	\N
690	690	609	464000	2017-07-11	\N
691	691	610	\N	2017-07-11	\N
692	692	611	18500000	2017-07-12	\N
693	693	612	\N	2017-07-12	\N
694	694	613	\N	2017-07-12	\N
695	695	614	\N	2017-07-12	\N
696	696	615	540000	2017-07-14	\N
697	518	616	1700000	2017-07-14	\N
698	112	617	2000000	2017-07-17	\N
699	699	618	4000000	2017-07-17	\N
700	700	619	\N	2017-07-18	\N
701	701	620	\N	2017-07-18	\N
702	702	621	\N	2017-07-18	\N
703	703	550	\N	2017-07-18	\N
704	704	622	10000000	2017-07-19	\N
705	705	623	\N	2017-07-19	\N
706	706	624	600000	2017-07-19	\N
707	707	625	700000	2017-07-20	\N
708	708	626	200000	2017-07-21	\N
709	709	627	\N	2017-07-21	\N
710	710	628	\N	2017-07-21	\N
711	711	629	\N	2017-07-21	\N
712	609	630	1200000	2017-07-25	\N
713	713	631	35000000	2017-07-25	\N
714	714	632	\N	2017-07-26	\N
715	715	633	25000000	2017-07-26	\N
716	716	634	200000	2017-07-26	\N
717	312	635	15000000	2017-07-27	\N
718	718	636	\N	2017-07-28	\N
719	719	177	1250000	2017-07-28	\N
720	720	637	\N	2017-07-28	\N
721	721	638	\N	2017-06-01	\N
722	722	639	234000	2017-06-02	\N
723	723	640	50000000	2017-06-05	\N
724	724	641	\N	2017-06-05	\N
725	725	642	1000000	2017-06-06	\N
726	726	643	\N	2017-06-06	\N
727	727	644	\N	2017-06-06	\N
728	728	69	1200000	2017-06-06	\N
729	729	645	1000000	2017-06-06	\N
730	730	646	\N	2017-06-06	\N
731	494	647	\N	2017-06-06	\N
732	562	61	650000	2017-06-07	\N
733	733	648	600000	2017-06-07	\N
734	734	649	232000	2017-06-08	\N
735	735	650	1500000	2017-06-08	\N
736	736	650	1500000	2017-06-08	\N
737	737	651	350000	2017-06-08	\N
738	738	652	300000	2017-06-09	\N
739	739	653	250000	2017-06-09	\N
740	740	654	\N	2017-06-12	\N
741	741	655	7800000	2017-06-12	\N
742	742	656	500000	2017-06-12	\N
743	743	657	1000000	2017-06-12	\N
744	744	658	776000	2017-06-12	\N
745	745	659	15000000	2017-06-12	\N
746	746	660	\N	2017-06-13	\N
747	747	661	5500000	2017-06-13	\N
748	215	662	\N	2017-06-13	\N
749	749	663	50000000	2017-06-14	\N
750	750	21	\N	2017-06-14	\N
751	751	664	500000	2017-06-14	\N
752	752	665	12300000	2017-06-15	\N
753	753	666	1000000	2017-06-16	\N
754	378	346	100000	2017-06-16	\N
755	755	667	2000000	2017-06-16	\N
756	756	668	\N	2017-06-16	\N
757	180	669	\N	2017-06-16	\N
758	758	670	\N	2017-06-16	\N
759	759	671	12500000	2017-06-19	\N
760	760	672	4000000	2017-06-19	\N
761	761	673	300000	2017-06-20	\N
762	762	452	5200000	2017-06-20	\N
763	350	674	2400000	2017-06-21	\N
764	764	675	4500000	2017-06-21	\N
765	765	676	215000	2017-06-21	\N
766	766	677	31000000	2017-06-21	\N
767	767	297	\N	2017-06-21	\N
768	768	678	4600000	2017-06-22	\N
769	164	679	2000000	2017-06-22	\N
770	770	680	500000	2017-06-22	\N
771	771	681	4000000	2017-06-23	\N
772	772	458	1000000	2017-06-23	\N
773	773	682	5000000	2017-06-26	\N
774	652	49	71000000	2017-06-26	\N
775	775	683	4000000	2017-06-26	\N
776	776	684	5000000	2017-06-27	\N
777	777	685	\N	2017-06-27	\N
778	778	686	311000	2017-06-27	\N
779	779	687	\N	2017-06-28	\N
780	313	688	3000000	2017-06-28	\N
781	781	689	2000000	2017-06-28	\N
782	782	690	1000000	2017-06-29	\N
783	783	691	\N	2017-06-29	\N
784	784	392	5000000	2017-06-30	\N
785	785	692	21000000	2017-06-30	\N
786	786	693	73700000	2017-05-01	\N
787	584	694	10000000	2017-05-01	\N
788	788	407	1500000	2017-05-02	\N
789	789	695	10000000	2017-05-02	\N
790	790	696	\N	2017-05-02	\N
791	791	664	390000	2017-05-02	\N
792	749	697	104500000	2017-05-03	\N
793	496	664	1000000	2017-05-03	\N
794	12	698	\N	2017-05-04	\N
795	795	699	\N	2017-05-05	\N
796	796	700	\N	2017-05-05	\N
797	797	701	\N	2017-05-05	\N
798	798	390	\N	2017-05-05	\N
799	799	702	233000	2017-05-05	\N
800	800	703	700000	2017-05-08	\N
801	801	704	\N	2017-05-08	\N
802	802	705	\N	2017-05-08	\N
803	803	706	1000000	2017-05-08	\N
804	617	707	5000000	2017-05-08	\N
805	427	708	3200000	2017-05-08	\N
806	806	709	50000	2017-05-09	\N
807	807	710	\N	2017-05-09	\N
808	192	711	\N	2017-05-09	\N
809	809	712	\N	2017-05-09	\N
810	810	713	\N	2017-05-10	\N
811	811	714	1400000	2017-05-10	\N
812	812	150	7700000	2017-05-10	\N
813	813	449	600000	2017-05-10	\N
814	814	715	\N	2017-05-10	\N
815	588	716	4000000	2017-05-11	\N
816	816	717	\N	2017-05-11	\N
817	817	718	\N	2017-05-11	\N
818	818	719	5000000	2017-05-12	\N
819	819	720	\N	2017-05-12	\N
820	820	721	466000	2017-05-12	\N
821	821	664	1000000	2017-05-12	\N
822	822	722	500000	2017-05-15	\N
823	823	723	\N	2017-05-15	\N
824	781	724	\N	2017-05-16	\N
825	825	725	3000000	2017-05-16	\N
826	350	726	500000	2017-05-16	\N
827	827	664	250000	2017-05-17	\N
828	828	727	5300000	2017-05-17	\N
829	829	728	1000000	2017-05-18	\N
830	830	729	\N	2017-05-18	\N
831	32	730	1400000000	2017-05-18	\N
832	832	731	1000000	2017-05-19	\N
833	833	732	\N	2017-05-19	\N
834	800	733	\N	2017-05-20	\N
835	835	140	30000000	2017-05-22	\N
836	836	734	500000	2017-05-22	\N
837	837	735	\N	2017-05-23	\N
838	329	736	6600000	2017-05-23	\N
839	348	737	\N	2017-05-23	\N
840	840	302	1000000	2017-05-23	\N
841	841	392	580000	2017-05-24	\N
842	24	738	8000000	2017-05-25	\N
843	843	739	\N	2017-05-26	\N
844	844	\N	\N	2017-05-29	\N
845	239	740	\N	2017-05-29	\N
846	846	392	\N	2017-05-29	\N
847	847	470	3500000	2017-05-29	\N
848	848	75	\N	2017-05-30	\N
849	849	392	\N	2017-05-30	\N
850	850	741	1500000	2017-05-30	\N
851	358	742	80000000	2017-05-30	\N
852	852	743	5000000	2017-05-31	\N
853	329	744	7000000	2017-05-31	\N
854	558	745	3800000	2017-04-01	\N
855	855	746	8200000	2017-04-03	\N
856	856	747	\N	2017-04-03	\N
857	857	748	40000000	2017-04-03	\N
858	858	749	\N	2017-04-03	\N
859	859	750	\N	2017-04-03	\N
860	860	751	2700000	2017-04-04	\N
861	861	411	6100000	2017-04-04	\N
862	862	752	3690000	2017-04-04	\N
863	863	753	7000000	2017-04-04	\N
864	864	754	500000	2017-04-04	\N
865	865	755	500000	2017-04-04	\N
866	866	756	\N	2017-04-05	\N
867	335	757	3000000	2017-04-05	\N
868	868	758	\N	2017-04-05	\N
869	869	759	21000000	2017-04-06	\N
870	870	760	5000000	2017-04-06	\N
871	871	761	\N	2017-04-07	\N
872	872	452	\N	2017-04-07	\N
873	873	762	\N	2017-04-07	\N
874	316	763	18000000	2017-04-07	\N
875	875	764	\N	2017-04-08	\N
876	876	765	4600000	2017-04-08	\N
877	877	766	150000	2017-04-10	\N
878	308	767	2300000	2017-04-10	\N
879	23	768	5500000	2017-04-11	\N
880	880	769	100000	2017-04-11	\N
881	655	770	\N	2017-04-11	\N
882	882	771	4000000	2017-04-12	\N
883	883	772	4500000	2017-04-12	\N
884	884	773	4500000	2017-04-12	\N
885	885	774	2100000	2017-04-12	\N
886	620	775	\N	2017-04-12	\N
887	887	446	\N	2017-04-12	\N
888	888	776	\N	2017-04-13	\N
889	889	777	7700000	2017-04-13	\N
890	65	778	260000000	2017-04-14	\N
891	891	779	310000	2017-04-15	\N
892	892	780	1500000	2017-04-17	\N
893	893	781	\N	2017-04-17	\N
894	894	782	\N	2017-04-17	\N
895	895	783	175000	2017-04-17	\N
896	896	784	620000	2017-04-17	\N
897	897	404	\N	2017-04-17	\N
898	741	73	4650000	2017-04-17	\N
899	899	785	2000000	2017-04-18	\N
900	900	786	600000	2017-04-18	\N
901	901	39	1250000	2017-04-18	\N
902	902	492	155000	2017-04-19	\N
903	903	787	3000000	2017-04-20	\N
904	904	788	\N	2017-04-20	\N
905	905	789	1000000	2017-04-21	\N
906	906	790	6300000	2017-04-24	\N
907	907	791	250000000	2017-04-24	\N
908	105	792	3200000	2017-04-24	\N
909	909	793	\N	2017-04-24	\N
910	910	794	245000	2017-04-25	\N
911	785	302	3100000	2017-04-25	\N
912	912	46	20000000	2017-04-26	\N
913	913	795	\N	2017-04-26	\N
914	914	796	11000000	2017-04-26	\N
915	915	797	1500000	2017-04-26	\N
916	916	302	1000000	2017-04-26	\N
917	917	798	\N	2017-04-26	\N
918	918	799	3600000	2017-04-27	\N
919	919	800	\N	2017-04-27	\N
920	920	801	\N	2017-04-27	\N
921	428	802	1500000	2017-04-27	\N
922	922	390	750000	2017-04-28	\N
923	923	803	\N	2017-04-28	\N
924	924	397	\N	2017-04-29	\N
925	749	804	330000000	2017-03-01	\N
926	926	3	10000000	2017-03-01	\N
927	927	805	\N	2017-03-01	\N
928	928	806	\N	2017-03-01	\N
929	929	807	1500000	2017-03-02	\N
930	930	786	500000	2017-03-02	\N
931	931	808	2500000	2017-03-02	\N
932	932	809	\N	2017-03-02	\N
933	933	810	7600000	2017-03-02	\N
934	934	811	\N	2017-03-03	\N
935	935	812	275000	2017-03-03	\N
936	936	813	\N	2017-03-03	\N
937	937	814	6700000	2017-03-03	\N
938	938	815	\N	2017-03-03	\N
939	939	816	200000000	2017-03-03	\N
940	940	324	19500000	2017-03-04	\N
941	941	817	1200000	2017-03-06	\N
942	942	818	150000	2017-03-06	\N
943	943	819	1790000	2017-03-06	\N
944	944	390	10000000	2017-03-07	\N
945	945	820	10000000	2017-03-07	\N
946	946	821	1000000	2017-03-07	\N
947	947	822	30000	2017-03-07	\N
948	948	823	3650000	2017-03-07	\N
949	11	824	15000000	2017-03-08	\N
950	950	825	1100000	2017-03-08	\N
951	850	156	120000	2017-03-08	\N
952	952	826	\N	2017-03-08	\N
953	953	827	500000	2017-03-09	\N
954	954	828	4500000	2017-03-09	\N
955	955	614	443000	2017-03-10	\N
956	956	829	\N	2017-03-10	\N
957	957	786	600000	2017-03-10	\N
958	958	830	\N	2017-03-10	\N
959	959	831	\N	2017-03-14	\N
960	960	832	3350000	2017-03-15	\N
961	961	492	100000	2017-03-15	\N
962	962	833	1350000	2017-03-16	\N
963	963	834	\N	2017-03-16	\N
964	310	835	3100000	2017-03-16	\N
965	965	836	200000	2017-03-16	\N
966	966	614	\N	2017-03-17	\N
967	652	837	1400000000	2017-03-21	\N
968	968	838	3670000	2017-03-21	\N
969	969	839	5300000	2017-03-21	\N
970	970	840	\N	2017-03-22	\N
971	971	841	191000	2017-03-22	\N
972	972	842	15000000	2017-03-23	\N
973	973	843	56000000	2017-03-23	\N
974	974	844	382000	2017-03-24	\N
975	975	845	\N	2017-03-24	\N
976	835	846	100000000	2017-03-24	\N
977	977	847	\N	2017-03-27	\N
978	350	127	500000	2017-03-28	\N
979	979	848	\N	2017-03-28	\N
980	980	220	300000	2017-03-28	\N
981	981	392	\N	2017-03-29	\N
982	982	849	325000	2017-03-29	\N
983	983	483	650000	2017-03-29	\N
984	713	850	\N	2017-03-29	\N
985	13	851	10000000	2017-03-29	\N
986	671	852	50000	2017-03-29	\N
987	71	853	\N	2017-03-30	\N
988	988	854	\N	2017-03-30	\N
989	989	855	\N	2017-03-30	\N
990	718	856	155000	2017-03-31	\N
991	991	857	3000000	2017-03-31	\N
992	351	302	7000000	2017-03-31	\N
993	993	858	\N	2017-03-31	\N
994	994	859	\N	2017-03-31	\N
995	360	860	25000000	2017-03-31	\N
996	996	392	\N	2017-02-02	\N
997	997	861	\N	2017-02-03	\N
998	308	862	2500000	2017-02-06	\N
999	999	863	\N	2017-02-06	\N
1000	1000	864	450000	2017-02-07	\N
1001	1001	865	10000000	2017-02-07	\N
1002	1002	866	1000000	2017-02-08	\N
1003	1003	867	1200000	2017-02-08	\N
1004	1004	868	55000000	2017-02-08	\N
1005	1005	869	\N	2017-02-08	\N
1006	1006	870	40000	2017-02-08	\N
1007	1007	871	6000000	2017-02-09	\N
1008	1008	872	\N	2017-02-09	\N
1009	904	873	8000000	2017-02-09	\N
1010	1010	874	500000	2017-02-10	\N
1011	1011	875	\N	2017-02-10	\N
1012	253	876	5800000	2017-02-13	\N
1013	1013	877	7500000	2017-02-13	\N
1014	1014	878	3200000	2017-02-13	\N
1015	1015	879	15000000	2017-02-13	\N
1016	1016	880	330000	2017-02-13	\N
1017	1017	386	400000	2017-02-13	\N
1018	1018	881	300000	2017-02-14	\N
1019	1019	882	22400000	2017-02-14	\N
1020	1020	883	\N	2017-02-14	\N
1021	149	884	\N	2017-02-15	\N
1022	185	885	6500000	2017-02-15	\N
1023	1023	886	350000	2017-02-15	\N
1024	1024	887	3000000	2017-02-16	\N
1025	1025	888	3000000	2017-02-16	\N
1026	1026	889	500000	2017-02-17	\N
1027	207	890	400000	2017-02-17	\N
1028	318	891	15200000	2017-02-17	\N
1029	1029	892	\N	2017-02-17	\N
1030	1030	893	\N	2017-02-17	\N
1031	1031	894	40000	2017-02-17	\N
1032	1032	894	40000	2017-02-18	\N
1033	652	895	38700000	2017-02-20	\N
1034	303	896	15000000	2017-02-21	\N
1035	1035	894	40000	2017-02-22	\N
1036	598	897	1100000	2017-02-23	\N
1037	1037	898	\N	2017-02-23	\N
1038	1038	899	\N	2017-02-24	\N
1039	1039	900	\N	2017-02-27	\N
1040	191	901	375000	2017-02-27	\N
1041	1041	392	94000	2017-02-27	\N
1042	1042	902	1000000	2017-02-28	\N
1043	132	903	70000000	2017-02-28	\N
1044	1044	904	366000	2017-01-02	\N
1045	1045	905	825000	2017-01-03	\N
1046	1046	906	\N	2017-01-03	\N
1047	1047	907	\N	2017-01-03	\N
1048	1048	550	\N	2017-01-04	\N
1049	1049	908	\N	2017-01-05	\N
1050	1050	909	\N	2017-01-05	\N
1051	1051	910	13000000	2017-01-06	\N
1052	1052	911	57000000	2017-01-07	\N
1053	1053	912	35000000	2017-01-09	\N
1054	1054	913	800000	2017-01-10	\N
1055	1055	914	5000000	2017-01-10	\N
1056	1056	915	2250000	2017-01-10	\N
1057	1057	916	\N	2017-01-10	\N
1058	671	917	100000	2017-01-10	\N
1059	1059	918	3500000	2017-01-10	\N
1060	1060	919	\N	2017-01-11	\N
1061	1061	920	1350000	2017-01-12	\N
1062	1062	921	10000000	2017-01-12	\N
1063	1063	922	4100000	2017-01-13	\N
1064	1064	923	\N	2017-01-13	\N
1065	1065	924	440000	2017-01-13	\N
1066	107	925	4500000	2017-01-14	\N
1067	1067	926	\N	2017-01-14	\N
1068	1068	927	\N	2017-01-16	\N
1069	1069	928	5000000	2017-01-16	\N
1070	1070	929	\N	2017-01-16	\N
1071	1071	392	700000	2017-01-16	\N
1072	1072	930	800000	2017-01-17	\N
1073	1073	161	2000000	2017-01-17	\N
1074	1074	931	55000000	2017-01-17	\N
1075	1075	932	441000	2017-01-17	\N
1076	1076	664	500000	2017-01-17	\N
1077	1077	933	147000	2017-01-17	\N
1078	1078	934	\N	2017-01-18	\N
1079	1079	935	\N	2017-01-18	\N
1080	1080	936	650000	2017-01-18	\N
1081	1081	392	300000	2017-01-18	\N
1082	1082	937	\N	2017-01-19	\N
1083	1083	938	1000000	2017-01-19	\N
1084	1084	939	\N	2017-01-19	\N
1085	1085	940	\N	2017-01-19	\N
1086	1086	705	\N	2017-01-20	\N
1087	366	941	\N	2017-01-20	\N
1088	858	942	\N	2017-01-20	\N
1089	1020	943	\N	2017-01-20	\N
1090	1090	944	50000	2017-01-22	\N
1091	1091	945	\N	2017-01-23	\N
1092	1092	946	\N	2017-01-23	\N
1093	1093	947	15000000	2017-01-23	\N
1094	1094	948	\N	2017-01-23	\N
1095	1095	948	\N	2017-01-24	\N
1096	1096	949	500000	2017-01-24	\N
1097	1097	950	10000000	2017-01-24	\N
1098	1098	951	4000000	2017-01-24	\N
1099	1099	952	\N	2017-01-24	\N
1100	1100	953	\N	2017-01-25	\N
1101	1101	954	4000000	2017-01-25	\N
1102	1102	955	\N	2017-01-25	\N
1103	1103	956	2200000	2017-01-25	\N
1104	376	814	8800000	2017-01-25	\N
1105	1105	25	\N	2017-01-02	\N
1106	1106	220	1400000	2017-01-26	\N
1107	1107	957	300000	2017-01-26	\N
1108	1108	958	\N	2017-01-26	\N
1109	1109	959	106000	2017-01-30	\N
1110	1110	960	22500	2017-01-30	\N
1111	1111	960	68000	2017-01-30	\N
1112	1112	960	18000	2017-01-30	\N
1113	1113	961	\N	2017-01-30	\N
1114	1114	392	2000000	2017-01-31	\N
1115	1115	85	\N	2017-01-31	\N
1116	1116	962	1200000	2016-12-01	\N
1117	1117	963	4000000	2016-12-01	\N
1118	1118	964	3600000	2016-12-01	\N
1119	1119	67	100000	2016-12-02	\N
1120	1120	965	\N	2016-12-02	\N
1121	1121	966	3000000	2016-12-02	\N
1122	1122	942	\N	2016-12-05	\N
1123	1123	967	1400000	2016-12-05	\N
1124	503	968	\N	2016-12-05	\N
1125	1125	969	147000	2016-12-06	\N
1126	1126	970	\N	2016-12-06	\N
1127	1127	971	\N	2016-12-07	\N
1128	1128	972	\N	2016-12-07	\N
1129	1129	973	\N	2016-12-07	\N
1130	1130	974	\N	2016-12-07	\N
1131	184	975	9000000	2016-12-07	\N
1132	1132	976	440000	2016-12-07	\N
1133	1133	977	\N	2016-12-07	\N
1134	1134	978	6500000	2016-12-08	\N
1135	1135	127	250000	2016-12-08	\N
1136	1136	979	6000000	2016-12-09	\N
1137	157	980	\N	2016-12-09	\N
1138	1138	85	450000	2016-12-09	\N
1139	1139	981	250000	2016-12-09	\N
1140	1140	982	10000000	2016-12-12	\N
1141	1141	392	200000	2016-12-12	\N
1142	1142	637	2000000	2016-12-12	\N
1143	344	983	\N	2016-12-12	\N
1144	1144	984	2000000	2016-12-12	\N
1145	1145	323	10000000	2016-12-13	\N
1146	1146	985	\N	2016-12-13	\N
1147	568	986	11100000	2016-12-13	\N
1148	1148	987	\N	2016-12-14	\N
1149	1149	988	150000	2016-12-14	\N
1150	782	85	1000000	2016-12-14	\N
1151	1151	710	\N	2016-12-14	\N
1152	1152	989	\N	2016-12-14	\N
1153	1153	990	297000	2016-12-14	\N
1154	1154	991	100000	2016-12-15	\N
1155	1155	992	10000000	2016-12-15	\N
1156	1156	993	35000000	2016-12-15	\N
1157	1157	994	3000000	2016-12-15	\N
1158	1158	995	23000000	2016-12-16	\N
1159	1159	996	123000	2016-12-16	\N
1160	278	454	\N	2016-12-19	\N
1161	75	997	7400000	2016-12-19	\N
1162	1162	392	50000	2016-12-20	\N
1163	1163	998	\N	2016-12-20	\N
1164	1164	999	\N	2016-12-20	\N
1165	1165	1000	15000000	2016-12-20	\N
1166	850	1001	\N	2016-12-21	\N
1167	1167	1002	500000	2016-12-21	\N
1168	160	1003	\N	2016-12-21	\N
1169	1169	376	162000	2016-12-21	\N
1170	1170	1004	\N	2016-12-22	\N
1171	1171	1005	324000	2016-12-22	\N
1172	1172	1006	300000	2016-12-22	\N
1173	1173	1007	2000000	2016-12-23	\N
1174	125	1008	\N	2016-12-23	\N
1175	1175	1009	\N	2016-12-23	\N
1176	1176	929	\N	2016-12-23	\N
1177	1177	1010	\N	2016-12-23	\N
1178	1178	1011	\N	2016-12-26	\N
1179	1179	1012	\N	2016-12-26	\N
1180	1180	664	1200000	2016-12-26	\N
1181	1181	671	10000000	2016-12-26	\N
1182	170	1013	5000000	2016-12-27	\N
1183	1129	1014	\N	2016-12-28	\N
1184	1184	397	1000000	2016-12-29	\N
1185	1185	1015	\N	2016-12-29	\N
1186	1186	1016	\N	2016-12-29	\N
1187	1187	1017	\N	2016-12-30	\N
1188	1188	1018	200000	2016-11-01	\N
1189	1189	1019	55000000	2016-11-02	\N
1190	1190	392	150000	2016-11-02	\N
1191	1185	1020	\N	2016-11-02	\N
1192	595	1021	\N	2016-11-02	\N
1193	1193	46	6000000	2016-11-03	\N
1194	1194	1022	\N	2016-11-03	\N
1195	1195	1023	10000000	2016-11-03	\N
1196	1196	1024	\N	2016-11-04	\N
1197	1197	1025	1000000	2016-11-04	\N
1198	1198	1026	150000	2016-11-04	\N
1199	1199	944	\N	2016-11-04	\N
1200	1200	1027	\N	2016-11-04	\N
1201	1201	1028	45000	2016-11-05	\N
1202	259	1029	3000000	2016-11-05	\N
1203	11	523	75000000	2016-11-07	\N
1204	1204	1030	3000000	2016-11-07	\N
1205	1205	1031	2000000	2016-11-09	\N
1206	1062	1032	12000000	2016-11-09	\N
1207	1207	1033	1000000	2016-11-10	\N
1208	1208	1034	\N	2016-11-10	\N
1209	1209	1035	\N	2016-11-10	\N
1210	1210	637	\N	2016-11-11	\N
1211	1211	1036	3000000	2016-11-14	\N
1212	1212	753	2000000	2016-11-14	\N
1213	75	32	\N	2016-11-15	\N
1214	530	1037	6000000	2016-11-15	\N
1215	1215	1038	4000000	2016-11-15	\N
1216	1216	1039	5000000	2016-11-16	\N
1217	1217	1040	\N	2016-11-17	\N
1218	1218	1041	13500000	2016-11-17	\N
1219	1219	614	\N	2016-11-17	\N
1220	1220	1042	\N	2016-11-17	\N
1221	1221	929	147000	2016-11-17	\N
1222	1222	1043	1000000	2016-11-18	\N
1223	1223	1044	\N	2016-11-18	\N
1224	1224	1045	\N	2016-11-18	\N
1225	1225	1046	90000	2016-11-21	\N
1226	1226	1047	650000	2016-11-21	\N
1227	1227	1048	5000000	2016-11-22	\N
1228	1228	1049	147000	2016-11-22	\N
1229	1229	1050	\N	2016-11-22	\N
1230	1230	46	5000000	2016-11-22	\N
1231	1231	1051	\N	2016-11-22	\N
1232	1232	1052	147000	2016-11-22	\N
1233	1233	1053	20000000	2016-11-23	\N
1234	1234	1054	600000	2016-11-23	\N
1235	34	1055	10000000	2016-11-23	\N
1236	1236	1056	\N	2016-11-24	\N
1237	1237	1057	\N	2016-11-24	\N
1238	408	1058	4000000	2016-11-24	\N
1239	1239	966	\N	2016-11-24	\N
1240	1240	1059	\N	2016-11-24	\N
1241	1241	1060	\N	2016-11-25	\N
1242	1242	1061	\N	2016-11-25	\N
1243	1243	621	\N	2016-11-25	\N
1244	1244	1062	\N	2016-11-26	\N
1245	1245	492	100000	2016-11-28	\N
1246	1246	1063	2000000	2016-11-28	\N
1247	1247	1064	\N	2016-11-29	\N
1248	1248	1065	3000000	2016-11-29	\N
1249	432	1066	1000000	2016-11-30	\N
1250	1250	1067	963000	2016-11-30	\N
1251	1251	1068	150000	2016-11-30	\N
1252	1252	1069	200000	2016-11-30	\N
1253	1253	39	2000000	2016-11-30	\N
1254	1254	929	218000	2016-11-30	\N
1255	1255	1070	100000	2016-11-30	\N
1256	1256	1071	440000	2016-11-30	\N
1257	1257	37	500000	2016-11-30	\N
1258	711	1072	\N	2016-11-30	\N
1259	1259	1073	500000	2016-11-30	\N
1260	1260	1074	\N	2016-10-03	\N
1261	1261	1075	5000000	2016-10-03	\N
1262	1262	1076	\N	2016-10-03	\N
1263	52	1077	2000000	2016-10-03	\N
1264	1264	1078	200000	2016-10-03	\N
1265	1265	1079	450000	2016-10-04	\N
1266	1266	1080	\N	2016-10-04	\N
1267	43	318	\N	2016-10-04	\N
1268	1268	1081	2000000	2016-10-04	\N
1269	69	1082	4200000	2016-10-04	\N
1270	1270	1083	3000000	2016-10-04	\N
1271	1271	1084	\N	2016-10-04	\N
1272	1272	1085	1000000	2016-10-04	\N
1273	1273	1086	2500000	2016-10-04	\N
1274	1274	1087	3750000	2016-10-04	\N
1275	1275	492	\N	2016-10-05	\N
1276	1276	1088	\N	2016-10-05	\N
1277	1277	1089	\N	2016-10-05	\N
1278	1278	1090	1200000	2016-10-05	\N
1279	1279	1091	\N	2016-10-06	\N
1280	1280	407	300000	2016-10-06	\N
1281	1281	1092	\N	2016-10-06	\N
1282	1282	1093	1050000	2016-10-06	\N
1283	1283	1094	100000	2016-10-07	\N
1284	1284	1095	2200000	2016-10-07	\N
1285	1285	1096	15000000	2016-10-07	\N
1286	1286	1097	\N	2016-10-07	\N
1287	1287	1098	375000	2016-10-10	\N
1288	1288	1099	50000000	2016-10-11	\N
1289	1289	1100	500000	2016-10-11	\N
1290	562	1101	\N	2016-10-12	\N
1291	1291	1102	2000000	2016-10-13	\N
1292	1292	614	\N	2016-10-13	\N
1293	1293	1103	\N	2016-10-13	\N
1294	1294	1104	450000	2016-10-13	\N
1295	1295	67	25000	2016-10-14	\N
1296	1296	82	7000000	2016-10-14	\N
1297	1297	1105	6000000	2016-10-14	\N
1298	1298	1106	\N	2016-10-14	\N
1299	1299	1107	\N	2016-10-14	\N
1300	149	1108	\N	2016-10-14	\N
1301	1301	1109	25000000	2016-10-15	\N
1302	1302	1110	227000	2016-10-15	\N
1303	1303	1111	1000000	2016-10-15	\N
1304	388	1112	\N	2016-10-17	\N
1305	993	1113	\N	2016-10-17	\N
1306	1306	1114	300000	2016-10-17	\N
1307	1307	1115	16000000	2016-10-17	\N
1308	1308	1116	150000	2016-10-18	\N
1309	1309	637	\N	2016-10-18	\N
1310	1310	872	\N	2016-10-18	\N
1311	1311	1117	2500000	2016-10-18	\N
1312	1312	1118	\N	2016-10-18	\N
1313	444	1119	30000000	2016-10-19	\N
1314	485	1120	1100000	2016-10-19	\N
1315	1315	1121	750000	2016-10-19	\N
1316	1316	1122	\N	2016-10-20	\N
1317	1317	1123	\N	2016-10-20	\N
1318	311	1124	\N	2016-10-20	\N
1319	1319	1125	300000	2016-10-21	\N
1320	394	1126	\N	2016-10-23	\N
1321	12	1127	3000000	2016-10-24	\N
1322	840	1128	7500000	2016-10-24	\N
1323	1323	297	6000000	2016-10-25	\N
1324	1324	1031	500000	2016-10-25	\N
1325	1325	1129	\N	2016-10-25	\N
1326	1326	699	\N	2016-10-25	\N
1327	1327	1130	100000	2016-10-25	\N
1328	1328	944	1000000	2016-10-26	\N
1329	904	1131	\N	2016-10-26	\N
1330	1330	1132	1000000	2016-10-26	\N
1331	1331	1133	700000	2016-10-27	\N
1332	519	1134	971000	2016-10-27	\N
1333	95	1135	27000000	2016-10-27	\N
1334	1334	1136	\N	2016-10-28	\N
1335	1335	979	100000	2016-10-29	\N
1336	1336	979	100000	2016-10-29	\N
1337	1337	979	100000	2016-10-29	\N
1338	1338	1137	750000	2016-10-30	\N
1339	1339	1138	1000000	2016-10-31	\N
1340	158	1139	\N	2016-09-01	\N
1341	1341	390	6700000	2016-09-01	\N
1342	1342	1140	\N	2016-09-01	\N
1343	810	1141	\N	2016-09-01	\N
1344	1344	1142	\N	2016-09-04	\N
1345	1345	1143	\N	2016-09-05	\N
1346	1136	1144	\N	2016-09-05	\N
1347	439	1145	1350000	2016-09-06	\N
1348	1348	392	500000	2016-09-06	\N
1349	300	1146	\N	2016-09-06	\N
1350	719	177	900000	2016-09-06	\N
1351	114	1147	8000000	2016-09-07	\N
1352	1352	971	500000	2016-09-07	\N
1353	1353	543	6000000	2016-09-07	\N
1354	1354	1148	315000	2016-09-07	\N
1355	1355	1149	670000	2016-09-08	\N
1356	1356	1150	200000	2016-09-08	\N
1357	713	1151	50000000	2016-09-09	\N
1358	75	710	\N	2016-09-09	\N
1359	1359	1152	\N	2016-09-10	\N
1360	1360	1153	150000	2016-09-10	\N
1361	1361	1154	450000	2016-09-10	\N
1362	1362	1155	\N	2016-09-10	\N
1363	1363	1156	448000	2016-09-12	\N
1364	1364	1157	3000000	2016-09-12	\N
1365	157	1158	12300000	2016-09-12	\N
1366	1366	1159	300000	2016-09-12	\N
1367	1367	1160	\N	2016-09-13	\N
1368	1368	318	\N	2016-09-13	\N
1369	1369	1161	\N	2016-09-13	\N
1370	1370	1162	2500000	2016-09-13	\N
1371	1371	1163	\N	2016-09-14	\N
1372	1372	1164	150000	2016-09-14	\N
1373	1373	1165	\N	2016-09-14	\N
1374	1374	1166	200000	2016-09-15	\N
1375	444	1167	5000000	2016-09-15	\N
1376	1376	82	1500000	2016-09-15	\N
1377	1377	1168	100000	2016-09-16	\N
1378	1378	637	1000000	2016-09-16	\N
1379	1379	390	750000	2016-09-19	\N
1380	1380	1105	\N	2016-09-19	\N
1381	358	411	15000000	2016-09-19	\N
1382	1382	425	\N	2016-09-20	\N
1383	1383	247	500000	2016-09-20	\N
1384	1384	1169	\N	2016-09-20	\N
1385	1385	392	1000000	2016-09-21	\N
1386	1386	1170	\N	2016-09-21	\N
1387	328	1171	31300000	2016-09-21	\N
1388	1388	1172	298000	2016-09-21	\N
1389	1096	1173	350000	2016-09-21	\N
1390	1390	470	6000000	2016-09-22	\N
1391	1391	1174	\N	2016-09-22	\N
1392	1392	1175	425000	2016-09-22	\N
1393	1393	458	1000000	2016-09-22	\N
1394	1394	1176	745000	2016-09-22	\N
1395	1395	1177	6000000	2016-09-23	\N
1396	1396	1178	\N	2016-09-23	\N
1397	1397	1179	\N	2016-09-23	\N
1398	1398	1180	\N	2016-09-23	\N
1399	1399	1181	\N	2016-09-26	\N
1400	1400	1182	\N	2016-09-26	\N
1401	1073	1183	1580000	2016-09-27	\N
1402	1402	1184	\N	2016-09-27	\N
1403	1403	127	500000	2016-09-28	\N
1404	1404	1185	1000000	2016-09-28	\N
1405	929	41	1000000	2016-09-28	\N
1406	1406	1186	51000000	2016-09-28	\N
1407	1407	1187	180000	2016-09-29	\N
1408	1408	1188	\N	2016-09-29	\N
1409	1409	1189	1500000	2016-09-29	\N
1410	1410	705	\N	2016-09-30	\N
1411	1411	1190	19000000	2016-09-30	\N
1412	1412	1191	\N	2016-09-30	\N
1413	1413	1192	12000000	2016-08-01	\N
1414	671	1193	200000	2016-08-01	\N
1415	1415	1194	275000	2016-08-01	\N
1416	1007	150	3000000	2016-08-01	\N
1417	1417	1195	2500000	2016-08-01	\N
1418	1418	1196	1800000	2016-08-02	\N
1419	237	1197	\N	2016-08-02	\N
1420	1420	1198	1000000	2016-08-02	\N
1421	1421	637	\N	2016-08-03	\N
1422	1422	220	225000	2016-08-03	\N
1423	1423	1199	890000	2016-08-03	\N
1424	1424	1200	500000	2016-08-04	\N
1425	1425	1173	\N	2016-08-04	\N
1426	1426	1201	\N	2016-08-05	\N
1427	1427	1202	27000	2016-08-06	\N
1428	1428	1203	\N	2016-08-08	\N
1429	1429	1204	40000	2016-08-08	\N
1430	1430	392	445000	2016-08-08	\N
1431	1431	1205	200000	2016-08-08	\N
1432	1049	1206	\N	2016-08-09	\N
1433	1433	1206	\N	2016-08-09	\N
1434	1035	1207	500000	2016-08-10	\N
1435	666	1208	600000	2016-08-10	\N
1436	1436	1209	7000000	2016-08-11	\N
1437	614	1210	\N	2016-08-11	\N
1438	1438	1211	209000	2016-08-11	\N
1439	94	1212	15000000	2016-08-11	\N
1440	1440	1213	1500000	2016-08-12	\N
1441	1441	220	1500000	2016-08-12	\N
1442	1442	1214	15600000	2016-08-12	\N
1443	1443	392	500000	2016-08-12	\N
1444	1444	1215	\N	2016-08-12	\N
1445	1445	1216	\N	2016-08-15	\N
1446	337	1217	\N	2016-08-16	\N
1447	116	730	62000000	2016-08-16	\N
1448	1448	1218	175000000	2016-08-16	\N
1449	1449	1219	500000	2016-08-16	\N
1450	1450	220	1500000	2016-08-16	\N
1451	1451	1220	250000	2016-08-16	\N
1452	1452	1221	\N	2016-08-16	\N
1453	1453	1222	375000	2016-08-17	\N
1454	1454	1223	\N	2016-08-17	\N
1455	1455	1224	675000	2016-08-17	\N
1456	1334	614	\N	2016-08-17	\N
1457	50	1225	\N	2016-08-18	\N
1458	1458	1226	\N	2016-08-18	\N
1459	1459	220	20000000	2016-08-19	\N
1460	1460	702	375000	2016-08-19	\N
1461	1461	1227	\N	2016-08-19	\N
1462	1462	1228	\N	2016-08-22	\N
1463	1463	1229	37000000	2016-08-22	\N
1464	281	1230	\N	2016-08-22	\N
1465	1465	1231	\N	2016-08-23	\N
1466	1466	1232	100000	2016-08-23	\N
1467	1467	1233	\N	2016-08-23	\N
1468	1468	1234	200000	2016-08-23	\N
1469	1469	1235	\N	2016-08-24	\N
1470	1470	1236	1000000	2016-08-24	\N
1471	1471	979	100000	2016-08-24	\N
1472	1472	979	500000	2016-08-24	\N
1473	1473	1237	\N	2016-08-24	\N
1474	1474	1238	500000	2016-08-24	\N
1475	1475	1239	900000	2016-08-24	\N
1476	1476	302	3000000	2016-08-24	\N
1477	1477	1240	\N	2016-08-24	\N
1478	1478	1241	\N	2016-08-25	\N
1479	1479	1242	3000000	2016-08-25	\N
1480	1480	1243	\N	2016-08-25	\N
1481	1481	1244	\N	2016-08-25	\N
1482	1482	1245	24000000	2016-08-25	\N
1483	1483	1246	500000	2016-08-26	\N
1484	1484	1247	40000000	2016-08-26	\N
1485	1485	1248	550000	2016-08-26	\N
1486	1486	1249	\N	2016-08-26	\N
1487	1487	1250	3000000	2016-08-29	\N
1488	1488	925	7000000	2016-08-29	\N
1489	1489	1251	\N	2016-08-29	\N
1490	1490	1252	1000000	2016-08-29	\N
1491	1491	1253	15000000	2016-08-29	\N
1492	1492	1254	149000	2016-08-30	\N
1493	1493	1255	104000	2016-08-30	\N
1494	32	1256	60000000	2016-08-30	\N
1495	1495	1257	2000000	2016-08-30	\N
1496	577	177	3000000	2016-08-30	\N
1497	1497	1258	\N	2016-08-30	\N
1498	1498	1259	5300000	2016-08-31	\N
1499	1499	1260	\N	2016-08-31	\N
1500	1500	1261	\N	2016-07-01	\N
1501	760	1262	\N	2016-07-01	\N
1502	1502	1263	500000	2016-07-01	\N
1503	1503	1264	\N	2016-07-01	\N
1504	1504	37	700000	2016-07-02	\N
1505	1505	1031	\N	2016-07-04	\N
1506	1506	1265	15000000	2016-07-04	\N
1507	1507	1266	200000	2016-07-04	\N
1508	1508	1267	2000000	2016-07-04	\N
1509	1509	1103	\N	2016-07-04	\N
1510	1510	1268	16000000	2016-07-04	\N
1511	1511	1269	1000000	2016-07-05	\N
1512	1512	1270	82000000	2016-07-05	\N
1513	1498	1271	1700000	2016-07-05	\N
1514	1514	177	740000	2016-07-06	\N
1515	1515	1272	250000	2016-07-06	\N
1516	1516	1273	297000	2016-07-06	\N
1517	1517	1274	2000000	2016-07-07	\N
1518	1518	614	1000000	2016-07-07	\N
1519	1519	1275	\N	2016-07-07	\N
1520	1520	1276	\N	2016-07-07	\N
1521	629	1277	\N	2016-07-08	\N
1522	903	1278	1950000	2016-07-08	\N
1523	458	1279	6000000	2016-07-11	\N
1524	1524	1280	3500000	2016-07-11	\N
1525	1525	1281	3000000	2016-07-11	\N
1526	1526	297	12250000	2016-07-12	\N
1527	730	1282	\N	2016-07-12	\N
1528	1528	1283	\N	2016-07-12	\N
1529	1529	1284	\N	2016-07-12	\N
1530	1530	1285	\N	2016-07-12	\N
1531	1531	1286	5000000	2016-07-13	\N
1532	1532	1287	\N	2016-07-13	\N
1533	1533	1288	600000	2016-07-13	\N
1534	408	1289	1350000	2016-07-13	\N
1535	1535	359	\N	2016-07-13	\N
1536	1536	1290	5000000	2016-07-13	\N
1537	1537	220	\N	2016-07-13	\N
1538	1538	1291	\N	2016-07-13	\N
1539	1539	557	450000	2016-07-14	\N
1540	1540	1292	1070000	2016-07-14	\N
1541	1541	1293	\N	2016-07-14	\N
1542	1542	889	1000000	2016-07-15	\N
1543	1543	664	2000000	2016-07-15	\N
1544	1544	1294	\N	2016-07-15	\N
1545	1159	1295	250000	2016-07-15	\N
1546	1546	1296	\N	2016-07-15	\N
1547	1547	1297	6000000	2016-07-15	\N
1548	1548	889	650000	2016-07-18	\N
1549	1549	889	650000	2016-07-18	\N
1550	1550	1298	30000000	2016-07-18	\N
1551	1551	1299	\N	2016-07-18	\N
1552	1552	1300	\N	2016-07-18	\N
1553	1553	1301	10000000	2016-07-19	\N
1554	1554	1302	15000000	2016-07-19	\N
1555	1555	1303	1000000	2016-07-19	\N
1556	1556	1304	250000	2016-07-19	\N
1557	1557	392	1000000	2016-07-20	\N
1558	1558	1305	595000	2016-07-20	\N
1559	1559	1306	\N	2016-07-20	\N
1560	1560	1307	1000000	2016-07-21	\N
1561	1561	1308	\N	2016-07-21	\N
1562	1562	614	595000	2016-07-21	\N
1563	1563	1309	\N	2016-07-21	\N
1564	1564	392	\N	2016-06-01	\N
1565	1565	975	\N	2016-06-01	\N
1566	148	1310	\N	2016-06-02	\N
1567	304	1311	\N	2016-06-02	\N
1568	1568	1312	1000000	2016-06-02	\N
1569	1569	127	\N	2016-06-02	\N
1570	1570	1286	1000000	2016-06-02	\N
1571	1571	1313	\N	2016-06-03	\N
1572	1572	492	75000	2016-06-03	\N
1573	1573	1314	2000000	2016-06-03	\N
1574	1574	1315	448000	2016-06-06	\N
1575	1093	1316	4000000	2016-06-07	\N
1576	110	1317	2000000	2016-06-07	\N
1577	1577	492	100000	2016-06-07	\N
1578	1578	1318	23000000	2016-06-07	\N
1579	1579	979	1000000	2016-06-07	\N
1580	1580	1319	1000000	2016-06-08	\N
1581	1581	1320	500000	2016-06-08	\N
1582	1582	614	200000	2016-06-08	\N
1583	1583	1321	\N	2016-06-08	\N
1584	1584	1322	\N	2016-06-08	\N
1585	1585	1323	16000000	2016-06-08	\N
1586	1586	1324	\N	2016-06-08	\N
1587	1587	1325	200000	2016-06-08	\N
1588	1588	1326	\N	2016-06-09	\N
1589	1589	1327	\N	2016-06-09	\N
1590	1590	1328	2000000	2016-06-09	\N
1591	1591	318	\N	2016-06-10	\N
1592	1592	1329	500000	2016-06-10	\N
1593	1593	1330	\N	2016-06-10	\N
1594	1594	975	\N	2016-06-10	\N
1595	1595	1331	\N	2016-06-10	\N
1596	1596	1332	\N	2016-06-11	\N
1597	1597	1332	\N	2016-06-11	\N
1598	1598	1332	\N	2016-06-11	\N
1599	1599	701	\N	2016-06-13	\N
1600	1600	1098	1000000	2016-06-13	\N
1601	1601	1333	30000	2016-06-13	\N
1602	1602	1334	\N	2016-06-14	\N
1603	1603	1335	\N	2016-06-14	\N
1604	1604	1336	\N	2016-06-14	\N
1605	1605	1337	6000000	2016-06-14	\N
1606	1606	1338	1000000	2016-06-14	\N
1607	1607	1339	4400000	2016-06-14	\N
1608	1608	614	450000	2016-06-15	\N
1609	1609	1340	\N	2016-06-15	\N
1610	1125	177	450000	2016-06-16	\N
1611	1611	177	600000	2016-06-16	\N
1612	1612	1341	\N	2016-06-16	\N
1613	1613	1342	\N	2016-06-16	\N
1614	1007	297	20000000	2016-06-16	\N
1615	1615	1343	\N	2016-06-16	\N
1616	1616	1344	12000000	2016-06-17	\N
1617	1617	1345	900000	2016-06-17	\N
1618	1618	1346	5200000	2016-06-17	\N
1619	1619	1347	\N	2016-06-17	\N
1620	1620	1348	\N	2016-06-17	\N
1621	1621	944	\N	2016-06-20	\N
1622	1622	1349	\N	2016-06-20	\N
1623	1623	1350	\N	2016-06-20	\N
1624	1624	1223	150000	2016-06-21	\N
1625	1625	1150	\N	2016-06-21	\N
1626	1626	1351	\N	2016-06-21	\N
1627	1627	1352	\N	2016-06-21	\N
1628	1628	1353	400000	2016-06-21	\N
1629	1629	1354	225000	2016-06-21	\N
1630	1630	1355	\N	2016-06-21	\N
1631	1631	376	150000	2016-06-21	\N
1632	1632	1356	6000000	2016-06-21	\N
1633	1633	1357	150000	2016-06-22	\N
1634	1634	1358	3500000	2016-06-23	\N
1635	1635	1359	210000	2016-06-23	\N
1636	1636	614	\N	2016-06-23	\N
1637	1637	1360	\N	2016-06-23	\N
1638	1638	1361	50000	2016-06-24	\N
1639	1639	82	\N	2016-06-24	\N
1640	1640	979	500000	2016-06-24	\N
1641	1641	1362	6000000	2016-06-24	\N
1642	1642	1363	3000000	2016-06-24	\N
1643	1643	944	148000	2016-06-24	\N
1644	1644	1364	1200000	2016-06-27	\N
1645	1645	944	100000	2016-06-27	\N
1646	1646	1365	\N	2016-06-27	\N
1647	1436	1366	3000000	2016-06-27	\N
1648	77	1367	8000000	2016-06-28	\N
1649	1649	458	300000	2016-06-28	\N
1650	741	1368	32000000	2016-06-28	\N
1651	1651	1369	295000	2016-06-28	\N
1652	1652	1370	\N	2016-06-28	\N
1653	1653	492	\N	2016-06-28	\N
1654	1654	1371	100000	2016-06-29	\N
1655	1655	1372	50000	2016-06-29	\N
1656	1656	1373	\N	2016-06-29	\N
1657	1657	1374	1500000	2016-06-29	\N
1658	1658	220	25000000	2016-06-30	\N
1659	1659	1375	220000	2016-06-30	\N
1660	1660	1376	\N	2016-06-30	\N
1661	1661	1377	368000	2016-06-30	\N
1662	1662	1378	\N	2016-05-01	\N
1663	598	376	376000	2016-05-01	\N
1664	1664	1379	145000	2016-05-01	\N
1665	1665	1380	\N	2016-05-02	\N
1666	1484	1381	50000000	2016-05-03	\N
1667	1667	220	\N	2016-05-03	\N
1668	1668	458	250000	2016-05-03	\N
1669	1669	458	\N	2016-05-03	\N
1670	1670	1382	180000	2016-05-03	\N
1671	1671	69	\N	2016-05-03	\N
1672	1672	1383	200000	2016-05-04	\N
1673	300	1384	60000000	2016-05-04	\N
1674	1674	1385	12000000	2016-05-04	\N
1675	1675	1386	200000	2016-05-04	\N
1676	1676	1386	200000	2016-05-04	\N
1677	1677	458	150000	2016-05-04	\N
1678	1211	1387	500000	2016-05-04	\N
1679	1248	1387	500000	2016-05-04	\N
1680	1680	1387	500000	2016-05-04	\N
1681	759	1388	\N	2016-05-05	\N
1682	1682	1389	375000	2016-05-05	\N
1683	1683	1390	1000000	2016-05-06	\N
1684	50	1391	\N	2016-05-06	\N
1685	1685	458	75000	2016-05-07	\N
1686	1686	1392	2750000	2016-05-09	\N
1687	1687	1393	450000	2016-05-09	\N
1688	1688	1394	250000	2016-05-09	\N
1689	137	1395	6000000	2016-05-10	\N
1690	1193	1396	1500000	2016-05-10	\N
1691	1691	1397	18000000	2016-05-10	\N
1692	1692	458	1500000	2016-05-10	\N
1693	358	1398	7000000	2016-05-10	\N
1694	1694	392	900000	2016-05-11	\N
1695	1695	1399	\N	2016-05-11	\N
1696	1696	1400	100000000	2016-05-11	\N
1697	107	1401	500000	2016-05-12	\N
1698	308	1402	25000000	2016-05-12	\N
1699	1699	1403	150000	2016-05-12	\N
1700	1700	1404	\N	2016-05-12	\N
1701	1701	1405	\N	2016-05-12	\N
1702	1702	1406	\N	2016-05-12	\N
1703	1703	1407	\N	2016-05-12	\N
1704	1704	1408	13500000	2016-05-13	\N
1705	1705	1409	2200000	2016-05-13	\N
1706	272	1410	1000000	2016-05-16	\N
1707	1707	1411	\N	2016-05-16	\N
1708	1708	1412	\N	2016-05-17	\N
1709	1709	1413	\N	2016-05-17	\N
1710	1710	1414	\N	2016-05-17	\N
1711	1711	509	250000	2016-05-18	\N
1712	1712	1415	100000	2016-05-18	\N
1713	1713	1416	\N	2016-05-18	\N
1714	1714	1417	10000000	2016-05-18	\N
1715	1715	69	1000000	2016-05-18	\N
1716	1396	1418	\N	2016-05-18	\N
1717	1717	458	1000000	2016-05-19	\N
1718	781	318	\N	2016-05-19	\N
1719	1719	1194	500000	2016-05-19	\N
1720	1720	1419	500000	2016-05-19	\N
1721	1721	392	300000	2016-05-20	\N
1722	1722	1420	\N	2016-05-23	\N
1723	1723	1371	89000	2016-05-23	\N
1724	1724	1421	\N	2016-05-24	\N
1725	1725	1194	1000000	2016-05-24	\N
1726	1726	614	\N	2016-05-25	\N
1727	1727	1105	1500000	2016-05-25	\N
1728	1728	1422	100000	2016-05-25	\N
1729	1729	1423	\N	2016-05-25	\N
1730	1616	1424	2000000	2016-05-26	\N
1731	1731	1425	\N	2016-05-26	\N
1732	1732	1390	475000	2016-05-26	\N
1733	1733	1426	\N	2016-05-27	\N
1734	1734	1427	200000	2016-05-30	\N
1735	1735	1428	\N	2016-05-31	\N
1736	1218	1429	4400000	2016-05-31	\N
1737	1737	1430	8900000	2016-05-31	\N
1738	312	1431	\N	2016-05-31	\N
1739	1739	1432	\N	2016-05-31	\N
1740	1740	392	175000	2016-05-31	\N
1741	1741	1433	2700000	2016-04-01	\N
1742	1742	1434	\N	2016-04-01	\N
1743	1743	1435	\N	2016-04-01	\N
1744	1744	1436	\N	2016-04-04	\N
1745	1745	1437	\N	2016-04-04	\N
1746	1746	1438	25000000	2016-04-04	\N
1747	1747	1439	\N	2016-04-04	\N
1748	1748	1440	\N	2016-04-05	\N
1749	1749	828	\N	2016-04-05	\N
1750	1240	1441	\N	2016-04-05	\N
1751	1751	1442	1000000	2016-04-06	\N
1752	1752	1443	500000	2016-04-06	\N
1753	969	839	6000000	2016-04-06	\N
1754	1424	454	1000000	2016-04-06	\N
1755	1755	1444	\N	2016-04-07	\N
1756	528	1445	\N	2016-04-08	\N
1757	1757	1446	\N	2016-04-08	\N
1758	1758	1447	40000	2016-04-08	\N
1759	1759	1448	200000	2016-04-11	\N
1760	1760	1449	\N	2016-04-11	\N
1761	1761	1450	100000000	2016-04-11	\N
1762	1762	1451	300000	2016-04-11	\N
1763	1763	1452	1000000	2016-04-12	\N
1764	1764	1453	\N	2016-04-12	\N
1765	1765	1454	\N	2016-04-12	\N
1766	1766	1455	\N	2016-04-12	\N
1767	1767	1456	1000000	2016-04-13	\N
1768	1768	1457	150000	2016-04-13	\N
1769	1769	1458	250000	2016-04-13	\N
1770	1770	1459	750000	2016-04-13	\N
1771	1771	1460	\N	2016-04-14	\N
1772	1772	1461	100000	2016-04-14	\N
1773	1773	1462	\N	2016-04-15	\N
1774	62	1463	1000000	2016-04-15	\N
1775	1775	1464	\N	2016-04-15	\N
1776	1776	1465	15000000	2016-04-15	\N
1777	1777	1466	\N	2016-04-15	\N
1778	1778	392	\N	2016-04-15	\N
1779	1779	124	30000000	2016-04-15	\N
1780	1780	32	150000	2016-04-15	\N
1781	504	1467	\N	2016-04-18	\N
1782	1782	1468	\N	2016-04-18	\N
1783	1783	1103	\N	2016-04-18	\N
1784	1784	1469	\N	2016-04-18	\N
1785	1785	1470	10000000	2016-04-18	\N
1786	1786	1471	\N	2016-04-18	\N
1787	1787	1472	1500000	2016-04-19	\N
1788	1788	1405	450000	2016-04-19	\N
1789	1059	318	\N	2016-04-19	\N
1790	355	1473	2000000	2016-04-19	\N
1791	1791	1474	\N	2016-04-19	\N
1792	1792	948	\N	2016-04-19	\N
1793	1353	220	\N	2016-04-19	\N
1794	312	1475	15000000	2016-04-20	\N
1795	628	1476	\N	2016-04-20	\N
1796	1796	1477	\N	2016-04-20	\N
1797	1797	1478	\N	2016-04-21	\N
1798	1782	1479	\N	2016-04-21	\N
1799	1799	1480	\N	2016-04-21	\N
1800	1800	1481	\N	2016-04-21	\N
1801	13	1482	3000000	2016-04-22	\N
1802	1802	1483	\N	2016-04-22	\N
1803	1406	1484	\N	2016-04-22	\N
1804	1804	1485	450000	2016-04-22	\N
1805	1805	701	200000	2016-04-25	\N
1806	1806	69	\N	2016-04-25	\N
1807	1807	1486	550000	2016-04-25	\N
1808	1808	1487	15000000	2016-04-26	\N
1809	1809	1488	1300000	2016-04-26	\N
1810	144	134	15000000	2016-04-26	\N
1811	267	1334	500000	2016-04-27	\N
1812	1812	1489	\N	2016-04-27	\N
1813	311	1490	\N	2016-04-27	\N
1814	1814	67	450000	2016-04-27	\N
1815	1708	454	\N	2016-04-27	\N
1816	422	1491	600000	2016-04-28	\N
1817	451	1492	1200000	2016-04-28	\N
1818	1818	1493	500000	2016-04-29	\N
1819	1654	1371	100000	2016-04-29	\N
1820	134	359	\N	2016-03-01	\N
1821	1821	637	\N	2016-03-01	\N
1822	1822	1494	\N	2016-03-01	\N
1823	1823	1495	\N	2016-03-01	\N
1824	1824	509	600000	2016-03-02	\N
1825	1825	1496	\N	2016-03-02	\N
1826	1826	1497	1400000	2016-03-02	\N
1827	1827	1498	\N	2016-03-03	\N
1828	1828	1499	1000000	2016-03-03	\N
1829	1829	944	500000	2016-03-03	\N
1830	1073	1500	\N	2016-03-04	\N
1831	1831	1501	1000000	2016-03-04	\N
1832	1728	1502	\N	2016-03-04	\N
1833	1833	954	150000	2016-03-04	\N
1834	1834	1503	\N	2016-03-04	\N
1835	1835	1504	100000	2016-03-04	\N
1836	1836	1505	\N	2016-03-04	\N
1837	1837	1506	4000000	2016-03-04	\N
1838	1838	1507	500000	2016-03-07	\N
1839	23	1508	3000000	2016-03-07	\N
1840	1840	1509	500000	2016-03-07	\N
1841	1841	1510	250000	2016-03-07	\N
1842	904	1511	\N	2016-03-07	\N
1843	1843	1512	100000	2016-03-07	\N
1844	1844	747	\N	2016-03-08	\N
1845	1845	1513	\N	2016-03-08	\N
1846	1846	1514	\N	2016-03-08	\N
1847	1847	1303	750000	2016-03-08	\N
1848	1848	1515	8000000	2016-03-08	\N
1849	1849	1516	650000	2016-03-08	\N
1850	1850	1517	\N	2016-03-09	\N
1851	1851	1518	500000	2016-03-09	\N
1852	536	1519	2500000	2016-03-09	\N
1853	1853	1520	1000000	2016-03-09	\N
1854	1854	1521	\N	2016-03-09	\N
1855	1855	1522	400000	2016-03-09	\N
1856	1856	1523	\N	2016-03-09	\N
1857	1857	458	11100000	2016-03-10	\N
1858	1858	1524	\N	2016-03-10	\N
1859	360	1525	15000000	2016-03-10	\N
1860	1860	1526	1000000	2016-03-10	\N
1861	1861	1527	\N	2016-03-11	\N
1862	1862	1528	223608	2016-03-14	\N
1863	1863	1529	14900000	2016-03-14	\N
1864	1864	1530	\N	2016-03-14	\N
1865	1865	1531	1000000	2016-03-15	\N
1866	1866	1532	150000	2016-03-15	\N
1867	1867	1533	250000	2016-03-15	\N
1868	547	1534	180000	2016-03-16	\N
1869	1869	1535	\N	2016-03-16	\N
1870	1224	547	\N	2016-03-16	\N
1871	1871	1536	250000	2016-03-16	\N
1872	1872	458	200000	2016-03-17	\N
1873	1873	1129	230000	2016-03-17	\N
1874	1874	458	800000	2016-03-17	\N
1875	1875	1537	108000	2016-03-17	\N
1876	1876	1538	1500000	2016-03-18	\N
1877	1877	1539	30000	2016-03-19	\N
1878	1878	359	\N	2016-03-21	\N
1879	1879	1540	\N	2016-03-21	\N
1880	1880	1541	2000000	2016-03-21	\N
1881	713	1542	75000000	2016-03-22	\N
1882	351	1543	150000000	2016-03-22	\N
1883	1883	1544	600000	2016-03-22	\N
1884	1884	1545	\N	2016-03-22	\N
1885	1885	1546	\N	2016-03-22	\N
1886	1886	1547	360000	2016-03-22	\N
1887	1887	1548	\N	2016-03-22	\N
1888	1888	1549	100000	2016-03-23	\N
1889	1889	1550	300000	2016-03-23	\N
1890	916	1551	\N	2016-03-23	\N
1891	421	1552	330000	2016-03-23	\N
1892	1892	1553	\N	2016-03-23	\N
1893	1893	1554	500000	2016-03-23	\N
1894	1894	1555	150000	2016-03-24	\N
1895	1895	458	300000	2016-03-28	\N
1896	1896	1556	\N	2016-03-29	\N
1897	1897	1557	300000	2016-03-29	\N
1898	1898	1558	4700000	2016-03-29	\N
1899	1899	664	200000	2016-03-29	\N
1900	1900	1559	500000	2016-03-29	\N
1901	303	1560	\N	2016-03-30	\N
1902	1902	1561	400000	2016-03-30	\N
1903	1903	1562	\N	2016-03-31	\N
1904	1904	614	\N	2016-03-31	\N
1905	1905	1563	\N	2016-02-01	\N
1906	1906	1564	4000000	2016-02-02	\N
1907	1907	1565	\N	2016-02-02	\N
1908	1908	1566	22500	2016-02-02	\N
1909	1909	1566	22500	2016-02-02	\N
1910	1910	1566	22500	2016-02-02	\N
1911	1911	1566	22500	2016-02-02	\N
1912	1912	1567	1000000	2016-02-03	\N
1913	1913	1568	100000	2016-02-03	\N
1914	1914	1568	100000	2016-02-03	\N
1915	1915	1569	30000	2016-02-03	\N
1916	1916	1570	30000	2016-02-04	\N
1917	1917	1571	\N	2016-02-05	\N
1918	1918	1572	13500000	2016-02-05	\N
1919	1919	1573	\N	2016-02-05	\N
1920	1920	82	\N	2016-02-05	\N
1921	1921	1574	\N	2016-02-05	\N
1922	1922	1575	1000000	2016-02-05	\N
1923	1923	458	81000	2016-02-05	\N
1924	1924	458	52000	2016-02-05	\N
1925	1114	458	1000000	2016-02-06	\N
1926	1926	1576	\N	2016-02-06	\N
1927	69	318	\N	2016-02-08	\N
1928	1928	1568	100000	2016-02-08	\N
1929	1929	1568	100000	2016-02-08	\N
1930	1930	93	\N	2016-02-08	\N
1931	1931	1577	\N	2016-02-08	\N
1932	1932	1578	\N	2016-02-08	\N
1933	1933	1579	12500000	2016-02-08	\N
1934	1934	318	\N	2016-02-08	\N
1935	1061	1580	\N	2016-02-08	\N
1936	1936	1581	\N	2016-02-09	\N
1937	43	1582	\N	2016-02-09	\N
1938	1938	1583	200000	2016-02-10	\N
1939	1939	1584	\N	2016-02-10	\N
1940	1940	664	1200000	2016-02-10	\N
1941	1941	664	150000	2016-02-10	\N
1942	1942	1585	\N	2016-02-10	\N
1943	1943	1586	\N	2016-02-10	\N
1944	1944	1587	\N	2016-02-10	\N
1945	1945	1588	\N	2016-02-10	\N
1946	1946	1589	125000	2016-02-12	\N
1947	1603	1590	1000000	2016-02-12	\N
1948	1948	1591	1000000	2016-02-12	\N
1949	1949	979	4000000	2016-02-12	\N
1950	1950	1592	5000000	2016-02-15	\N
1951	1951	1593	200000000	2016-02-15	\N
1952	1785	1594	\N	2016-02-15	\N
1953	1953	318	\N	2016-02-15	\N
1954	1954	1595	50000	2016-02-15	\N
1955	246	1596	300000	2016-02-15	\N
1956	1956	1597	500000	2016-02-15	\N
1957	1957	1598	\N	2016-02-15	\N
1958	1958	1599	1000000	2016-02-16	\N
1959	1959	359	970000	2016-02-16	\N
1960	1960	1600	\N	2016-02-16	\N
1961	1961	1601	4000000	2016-02-16	\N
1962	1962	1602	\N	2016-02-16	\N
1963	671	1603	\N	2016-02-16	\N
1964	1964	1604	\N	2016-02-17	\N
1965	1965	1605	350000	2016-02-17	\N
1966	1966	1606	\N	2016-02-17	\N
1967	1967	124	10000000	2016-02-17	\N
1968	1968	1607	5000000	2016-02-17	\N
1969	1969	318	\N	2016-02-17	\N
1970	1970	1608	\N	2016-02-18	\N
1971	1971	944	73000	2016-02-18	\N
1972	1972	1609	\N	2016-02-18	\N
1973	1973	1610	\N	2016-02-18	\N
1974	1974	1611	300000	2016-02-18	\N
1975	1975	1612	350000	2016-02-18	\N
1976	1976	1613	5000000	2016-02-19	\N
1977	1977	1614	\N	2016-02-19	\N
1978	1978	1615	\N	2016-02-19	\N
1979	1979	1616	400000	2016-02-19	\N
1980	1980	1617	\N	2016-02-19	\N
1981	1981	1618	1000000	2016-02-22	\N
1982	329	1619	3000000	2016-02-22	\N
1983	1983	944	100000	2016-02-22	\N
1984	1984	1620	\N	2016-02-22	\N
1985	1985	1621	4500000	2016-02-22	\N
1986	1986	614	37000	2016-02-22	\N
1987	1987	1622	\N	2016-02-22	\N
1988	1988	1623	11000000	2016-02-23	\N
1989	1989	1624	\N	2016-02-23	\N
1990	1990	1625	160000	2016-02-24	\N
1991	1991	1626	\N	2016-02-24	\N
1992	75	1627	10000000	2016-02-24	\N
1993	1993	1628	400000	2016-02-24	\N
1994	1994	1129	150000	2016-02-24	\N
1995	1995	1629	\N	2016-02-24	\N
1996	568	747	5000000	2016-02-25	\N
1997	1997	1630	\N	2016-02-25	\N
1998	1998	1631	5800000	2016-02-25	\N
1999	1999	1194	70000	2016-02-25	\N
2000	2000	1632	145000	2016-02-26	\N
2001	2001	1633	2500000	2016-02-26	\N
2002	2002	318	\N	2016-02-29	\N
2003	2003	399	13000000	2016-02-29	\N
2004	2004	458	\N	2016-02-29	\N
2005	1919	1634	\N	2016-01-01	\N
2006	2006	392	\N	2016-01-01	\N
2007	2007	318	\N	2016-01-04	\N
2008	2008	1635	\N	2016-01-04	\N
2009	2009	1636	6000000	2016-01-04	\N
2010	2010	1206	\N	2016-01-05	\N
2011	2011	1637	100000	2016-01-05	\N
2012	2012	1638	\N	2016-01-05	\N
2013	2013	67	150000	2016-01-05	\N
2014	2014	1639	5000000	2016-01-05	\N
2015	1973	318	\N	2016-01-06	\N
2016	2016	1640	\N	2016-01-06	\N
2017	2017	1641	750000	2016-01-06	\N
2018	2018	1642	1000000	2016-01-06	\N
2019	2019	1643	150000	2016-01-06	\N
2020	2020	1644	3000000	2016-01-06	\N
2021	2021	1645	750000	2016-01-06	\N
2022	2022	1646	\N	2016-01-07	\N
2023	2023	392	\N	2016-01-07	\N
2024	2024	1150	160000	2016-01-07	\N
2025	891	1647	100000	2016-01-07	\N
2026	171	1648	180000000	2016-01-07	\N
2027	2027	1649	5000000	2016-01-08	\N
2028	2028	1650	250000	2016-01-08	\N
2029	2029	1651	45000	2016-01-08	\N
2030	2030	1652	\N	2016-01-08	\N
2031	2031	458	\N	2016-01-09	\N
2032	1218	1653	5400000	2016-01-11	\N
2033	2033	1654	\N	2016-01-11	\N
2034	2034	1655	16500000	2016-01-11	\N
2035	2035	1656	1000000	2016-01-11	\N
2036	2036	1657	\N	2016-01-11	\N
2037	812	1658	100000000	2016-01-12	\N
2038	2038	1659	\N	2016-01-12	\N
2039	2039	1660	2300000	2016-01-12	\N
2040	2040	1661	250000	2016-01-12	\N
2041	2041	1662	145000000	2016-01-13	\N
2042	2042	1663	100000	2016-01-13	\N
2043	2043	981	240000	2016-01-13	\N
2044	2044	1664	\N	2016-01-13	\N
2045	2045	1289	4000000	2016-01-13	\N
2046	2046	637	\N	2016-01-13	\N
2047	2047	1665	\N	2016-01-14	\N
2048	2048	1666	\N	2016-01-14	\N
2049	2049	614	520000	2016-01-14	\N
2050	945	1667	\N	2016-01-14	\N
2051	2051	1668	\N	2016-01-15	\N
2052	965	1669	200000	2016-01-15	\N
2053	2053	1670	\N	2016-01-15	\N
2054	230	1671	\N	2016-01-15	\N
2055	2055	1672	\N	2016-01-15	\N
2056	2056	1673	\N	2016-01-16	\N
2057	2057	1674	\N	2016-01-18	\N
2058	1848	1675	6000000	2016-01-18	\N
2059	358	1676	35000000	2016-01-19	\N
2060	1073	161	\N	2016-01-19	\N
2061	2061	318	\N	2016-01-19	\N
2062	2062	1677	\N	2016-01-19	\N
2063	2063	1678	1400000	2016-01-19	\N
2064	71	1679	5000000	2016-01-19	\N
2065	2065	1680	445000	2016-01-19	\N
2066	2066	1681	3500000	2016-01-19	\N
2067	2067	1293	\N	2016-01-20	\N
2068	2068	302	1800000	2016-01-20	\N
2069	2069	214	20000000	2016-01-20	\N
2070	2070	1682	4000000	2016-01-20	\N
2071	2071	1683	40000	2016-01-20	\N
2072	2072	1684	\N	2016-01-20	\N
2073	2073	318	\N	2016-01-21	\N
2074	485	1685	500000	2016-01-21	\N
2075	2075	1686	2200000	2016-01-21	\N
2076	1227	1687	15000000	2016-01-21	\N
2077	2077	1688	3000000	2016-01-21	\N
2078	2078	1689	200000	2016-01-22	\N
2079	2079	1690	\N	2016-01-22	\N
2080	2080	1691	7200000	2016-01-22	\N
2081	1873	1692	\N	2016-01-22	\N
2082	2082	1693	\N	2016-01-22	\N
2083	2083	376	515000	2016-01-22	\N
2084	2084	1694	35000000	2016-01-22	\N
2085	491	1695	30000000	2016-01-22	\N
2086	2086	1696	\N	2016-01-22	\N
2087	2087	127	150000	2016-01-25	\N
2088	584	1697	21000000	2016-01-25	\N
2089	2089	1698	\N	2016-01-25	\N
2090	2090	318	\N	2016-01-27	\N
2091	2091	1699	4000000	2016-01-27	\N
2092	2092	458	1000000	2016-01-27	\N
2093	2093	1700	\N	2016-01-27	\N
2094	2094	1701	1000000	2016-01-28	\N
2095	2095	1702	370000	2016-01-28	\N
2096	2096	1703	\N	2016-01-28	\N
2097	2097	1704	\N	2016-01-28	\N
2098	2098	1705	\N	2016-01-29	\N
2099	924	1150	160000	2016-01-29	\N
2100	1838	1706	\N	2016-01-29	\N
2101	1029	1707	185000	2016-01-29	\N
2102	2034	1708	17000000	2016-01-29	\N
2103	1024	1709	5150000	2016-01-29	\N
2104	2104	177	1100000	2016-01-29	\N
2105	2105	1710	\N	2016-01-29	\N
2106	2106	1711	\N	2016-01-29	\N
2107	2107	1712	\N	2016-01-30	\N
2108	2108	614	\N	2016-01-30	\N
2109	355	1481	1000000	2015-12-01	\N
2110	2110	669	\N	2015-12-01	\N
2111	2111	1713	\N	2015-12-01	Pre-Series A
2112	2112	1714	5600000	2015-12-01	\N
2113	979	1715	500000	2015-12-01	Pre-Series A
2114	2114	\N	\N	2015-12-01	\N
2115	2115	1716	2000000	2015-12-01	\N
2116	2116	1717	1500000	2015-12-02	\N
2117	2117	1718	\N	2015-12-02	Pre-Series A
2118	2118	1719	\N	2015-12-03	\N
2119	2119	458	100000	2015-12-03	\N
2120	2	1720	20000000	2015-12-03	Series B
2121	2121	1721	\N	2015-12-03	\N
2122	2122	1722	\N	2015-12-03	Pre-Series A
2123	2123	1723	100000	2015-12-04	\N
2124	2124	1723	100000	2015-12-04	\N
2125	2125	1724	20000000	2015-12-04	Series A
2126	2126	1725	\N	2015-12-04	\N
2127	1003	69	\N	2015-12-07	Pre-Series A
2128	2128	1726	4500000	2015-12-07	Series A
2129	906	1727	30000000	2015-12-07	Series C
2130	2130	1728	\N	2015-12-07	\N
2131	2131	1729	250000	2015-12-07	\N
2132	2132	1730	100000	2015-12-07	\N
2133	2133	458	\N	2015-12-08	\N
2134	2134	1731	\N	2015-12-08	Strategic Funding
2135	2135	1732	2000000	2015-12-08	Series A
2136	2136	1585	3000000	2015-12-09	Series A
2137	1384	1733	\N	2015-12-09	\N
2138	772	492	350000	2015-12-09	\N
2139	24	1734	3000000	2015-12-09	Series B
2140	2140	1027	\N	2015-12-09	\N
2141	93	1735	25000000	2015-12-10	Series B
2142	2142	1736	5000000	2015-12-10	Series A
2143	2143	1518	500000	2015-12-10	\N
2144	2144	1737	500000	2015-12-10	\N
2145	2145	1738	10000000	2015-12-10	\N
2146	2146	1739	\N	2015-12-10	\N
2147	2147	1740	2500000	2015-12-10	Pre-Series A
2148	2148	1741	70000000	2015-12-10	Series A
2149	2149	1742	600000	2015-12-11	\N
2150	2150	1423	\N	2015-12-11	\N
2151	2151	458	\N	2015-12-11	\N
2152	785	318	\N	2015-12-11	\N
2153	2153	1743	150000	2015-12-11	\N
2154	2154	1744	\N	2015-12-11	\N
2155	1083	1745	1000000	2015-12-11	\N
2156	2156	1012	\N	2015-12-11	Yet to Launch platform
2157	2157	1746	3500000	2015-12-14	Series A
2158	2158	1699	\N	2015-12-14	\N
2159	2159	1747	200000	2015-12-14	\N
2160	2160	1748	3000000	2015-12-14	Series A
2161	1129	1749	\N	2015-12-15	\N
2162	2162	1750	\N	2015-12-15	\N
2163	2163	67	1000000	2015-12-15	\N
2164	2164	1751	22500000	2015-12-16	Series B
2165	2165	1752	2000000	2015-12-16	\N
2166	2166	1753	1200000	2015-12-16	Pre-Series A
2167	2167	1754	\N	2015-12-16	\N
2168	11	1755	30000000	2015-12-17	Series B (includes Debt financing)
2169	461	1756	1700000	2015-12-17	\N
2170	2170	979	\N	2015-12-17	\N
2171	2171	1757	1200000	2015-12-18	\N
2172	2172	1758	\N	2015-12-18	\N
2173	2173	1759	\N	2015-12-18	\N
2174	2174	1760	200000	2015-12-18	\N
2175	2175	1761	2000000	2015-12-21	Pre-Series A
2176	2176	491	4000000	2015-12-21	part of $40M Series B round
2177	1284	1762	2000000	2015-12-21	Series A
2178	722	1763	\N	2015-12-22	\N
2179	2179	1764	\N	2015-12-22	\N
2180	945	1638	\N	2015-12-22	\N
2181	960	1765	3000000	2015-12-22	Additional investment from parent company
2182	2182	1766	\N	2015-12-22	\N
2183	2183	1767	750000	2015-12-22	Series A
2184	1142	1768	500000	2015-12-22	pre-Series A
2185	520	1769	1000000	2015-12-22	Strategic Investment
2186	2186	1770	\N	2015-12-23	\N
2187	870	1771	1000000	2015-12-23	\N
2188	2188	1772	5000000	2015-12-23	Series A
2189	1537	1773	\N	2015-12-23	\N
2190	2190	1774	303000	2015-12-24	\N
2191	2191	1775	\N	2015-12-24	\N
2192	577	177	2200000	2015-12-24	\N
2193	2193	1776	1000000	2015-12-28	\N
2194	2194	37	500000	2015-12-28	\N
2195	2195	1777	150000	2015-12-29	\N
2196	2196	1778	6600000	2015-12-29	Additional Funding
2197	2156	632	\N	2015-12-30	Yet to Launch
2198	1533	1779	200000	2015-11-02	\N
2199	2199	402	750000	2015-11-02	\N
2200	2200	1780	\N	2015-11-03	Bridge funding
2201	2201	318	\N	2015-11-03	\N
2202	2202	1781	5000000	2015-11-03	Series B
2203	2203	1782	150000	2015-11-03	\N
2204	2204	1783	385000	2015-11-03	Funding happened in Sept 2015
2205	2205	\N	320000	2015-11-03	\N
2206	2206	1784	500000	2015-11-03	\N
2207	2207	1785	16600000	2015-11-03	Series B
2208	373	1405	250000	2015-11-04	\N
2209	1592	425	\N	2015-11-04	\N
2210	2210	1786	400000	2015-11-04	\N
2211	2211	1787	150000	2015-11-05	\N
2212	2212	458	200000	2015-11-05	\N
2213	2213	1788	\N	2015-11-05	Series A
2214	2214	614	\N	2015-11-06	\N
2215	2215	1194	1800000	2015-11-06	Pre-Series A Bridge
2216	2216	1789	2000000	2015-11-06	Series A
2217	2217	1790	460000	2015-11-06	Pre-Series A
2218	2218	1791	490000	2015-11-06	Pre-Series A
2219	2219	1792	\N	2015-11-06	2nd seed funding
2220	2220	1793	15000000	2015-11-06	Series A
2221	2221	1794	500000	2015-11-09	Pre-Series A
2222	2222	1795	1500000	2015-11-09	Series A
2223	2223	437	1000000	2015-11-09	Pre-Series A
2224	114	1796	1900000	2015-11-09	Series A
2225	2225	1797	150000	2015-11-09	\N
2226	2226	1098	150000	2015-11-09	\N
2227	2227	1798	6000000	2015-11-10	Series A
2228	1922	1799	\N	2015-11-11	\N
2229	2229	1800	600000	2015-11-11	Series A
2230	1582	1801	\N	2015-11-11	\N
2231	62	1802	500000	2015-11-11	\N
2232	2232	93	\N	2015-11-11	\N
2233	2233	1614	250000	2015-11-12	\N
2234	2234	1803	\N	2015-11-13	\N
2235	2235	979	3700000	2015-11-16	Series A
2236	2236	1804	180000	2015-11-16	\N
2237	1342	1805	\N	2015-11-16	\N
2238	2238	1806	15000000	2015-11-16	Strategic Investment
2239	2239	1807	34000000	2015-11-17	Series C
2240	768	1808	600000	2015-11-17	\N
2241	2241	1809	7500000	2015-11-17	\N
2242	1783	1810	200000	2015-11-17	\N
2243	2243	1811	530000	2015-11-17	\N
2244	1475	1812	300000	2015-11-17	\N
2245	749	1813	500000000	2015-11-18	Series F ( More Details Here)
2246	753	82	2500000	2015-11-18	Series A
2247	2247	979	4000000	2015-11-18	Series A
2248	2248	1814	\N	2015-11-18	\N
2249	1325	1815	\N	2015-11-18	\N
2250	2250	1816	\N	2015-11-18	\N
2251	2251	1405	\N	2015-11-19	\N
2252	785	1817	25000000	2015-11-19	Series B
2253	2253	1818	500000	2015-11-19	\N
2254	2254	1819	\N	2015-11-19	\N
2255	2255	614	455000	2015-11-19	\N
2256	449	1820	12500000	2015-11-20	Series A
2257	2257	1821	\N	2015-11-20	Pre-Series A
2258	671	1822	305000	2015-11-20	\N
2259	2259	458	150000	2015-11-20	\N
2260	2260	1823	3000000	2015-11-20	Series A
2261	2261	1824	\N	2015-11-21	\N
2262	2262	1825	1200000	2015-11-21	Series A
2263	2263	458	100000	2015-11-21	\N
2264	2264	1826	2000000	2015-11-23	Series A
2265	2265	1827	100000	2015-11-23	\N
2266	1944	1828	250000	2015-11-24	\N
2267	2267	1829	\N	2015-11-24	\N
2268	2268	1830	52000000	2015-11-24	Late Stage
2269	481	318	\N	2015-11-24	\N
2270	2270	1831	1500000	2015-11-25	\N
2271	2271	1832	110000	2015-11-25	\N
2272	2272	1833	27000000	2015-11-25	\N
2273	2273	866	\N	2015-11-26	Pre-Series A
2274	2274	1834	13400000	2015-11-26	Series B
2275	60	1835	120000000	2015-11-26	Late Stage
2276	2276	1836	1000000	2015-11-26	Pre-Series A
2277	2277	1837	\N	2015-11-26	\N
2278	2278	1838	\N	2015-11-27	Series A
2279	1204	\N	2000000	2015-11-27	Pre-Series A bridge round
2280	1408	1432	\N	2015-11-27	\N
2281	2281	1839	\N	2015-11-27	\N
2282	2282	1840	\N	2015-11-27	\N
2283	2283	1841	\N	2015-11-28	\N
2284	2284	1842	1450000	2015-11-30	\N
2285	2285	1110	540000	2015-11-30	\N
2286	2286	1843	\N	2015-11-30	Strategic Investment
2287	2287	1844	9000000	2015-11-30	Series A
2288	2288	458	\N	2015-11-30	\N
2289	2289	1845	\N	2015-11-30	\N
2290	1145	1846	\N	2015-10-01	\N
2291	366	455	\N	2015-10-01	\N
2292	2292	454	\N	2015-10-01	\N
2293	2293	1847	350000	2015-10-01	\N
2294	2294	1848	\N	2015-10-01	Strategic Investment
2295	1616	1848	\N	2015-10-01	\N
2296	2296	979	2000000	2015-10-02	Series A
2297	2148	297	6000000	2015-10-03	Series A
2298	157	1849	9500000	2015-10-05	Series B
2299	2299	1850	15000000	2015-10-05	Series B
2300	2300	1851	1000000	2015-10-05	Pre-Series A Bridge round
2301	2301	1852	150000	2015-10-05	\N
2302	2302	1853	700000	2015-10-06	\N
2303	1224	1854	500000	2015-10-06	Pre-Series A
2304	2304	1855	10000000	2015-10-06	Series B
2305	2305	669	\N	2015-10-06	\N
2306	21	1856	500000	2015-10-06	Bridge Round
2307	2307	1857	6000000	2015-10-06	Pre-Series A
2308	2308	1858	3000000	2015-10-07	Series A
2309	2309	1673	\N	2015-10-07	\N
2310	2310	1859	20000000	2015-10-07	Strategic Funding (Series C)
2311	1271	1860	\N	2015-10-07	Strategic Funding
2312	916	1861	\N	2015-10-07	Series A
2313	2313	1862	2000000	2015-10-08	Series A
2314	2314	1863	7700000	2015-10-08	Series A
2315	672	1864	\N	2015-10-08	Series B
2316	2316	1865	10000000	2015-10-08	Series B
2317	2317	1866	310000	2015-10-08	\N
2318	997	392	70000	2015-10-09	\N
2319	455	637	\N	2015-10-09	Pre-Series A
2320	2320	1867	8000000	2015-10-09	Series A
2321	2321	1868	300000	2015-10-09	\N
2322	2322	1869	\N	2015-10-09	Strategic Funding
2323	2323	1870	1000000	2015-10-09	\N
2324	2324	1871	77000	2015-10-09	\N
2325	2325	1872	190000	2015-10-12	\N
2326	1695	1873	\N	2015-10-12	Series A
2327	259	390	\N	2015-10-12	\N
2328	2328	247	100000	2015-10-12	\N
2329	102	1874	\N	2015-10-12	Series A
2330	2330	390	\N	2015-10-12	Series A
2331	2331	37	1000000	2015-10-13	\N
2332	2332	1875	2500000	2015-10-13	Series A
2333	2333	1758	50000	2015-10-14	\N
2334	2334	311	\N	2015-10-14	Strategic Funding
2335	337	392	77000	2015-10-14	\N
2336	2336	1876	\N	2015-10-14	\N
2337	2337	1877	\N	2015-10-15	\N
2338	2338	1878	\N	2015-10-16	\N
2339	2339	1879	\N	2015-10-16	\N
2340	2340	1880	\N	2015-10-16	\N
2341	2341	1312	1000000	2015-10-17	Series A
2342	2342	1881	\N	2015-10-19	Series A
2343	2343	1882	25000000	2015-10-19	Series C
2344	2344	1883	100000	2015-10-19	\N
2345	2345	1884	\N	2015-10-20	\N
2346	2346	1885	7000000	2015-10-20	Series A
2347	2347	1886	10000000	2015-10-20	Series B
2348	2348	1887	\N	2015-10-20	\N
2349	2349	614	\N	2015-10-21	\N
2350	2350	1888	2950000	2015-10-21	\N
2351	2351	1889	1530000	2015-10-21	Series A
2352	2352	1890	100000	2015-10-21	\N
2353	2353	1891	640000	2015-10-21	\N
2354	737	1892	\N	2015-10-21	\N
2355	2355	1893	150000	2015-10-23	Bridge Round
2356	2356	1893	150000	2015-10-23	\N
2357	2357	1894	1000000	2015-10-23	Bridge Round
2358	2358	1895	250000	2015-10-23	\N
2359	2359	1896	5000000	2015-10-26	\N
2360	2360	1897	400000	2015-10-26	\N
2361	2361	1898	500000	2015-10-26	\N
2362	2362	1899	50000000	2015-10-26	Series A
2363	403	1900	9000000	2015-10-26	Series A
2364	2364	1901	\N	2015-10-27	\N
2365	2365	1902	77000	2015-10-27	\N
2366	2045	1031	350000	2015-10-27	\N
2367	2367	1903	10000000	2015-10-27	Series B
2368	2368	1904	\N	2015-10-27	Bridge Funding
2369	2369	1905	1100000	2015-10-28	\N
2370	2370	1906	200000	2015-10-28	\N
2371	1123	1907	\N	2015-10-28	Series A
2372	2372	1626	\N	2015-10-29	\N
2373	69	1908	\N	2015-10-29	pre-Series A
2374	2374	1909	450000	2015-10-29	\N
2375	781	1686	\N	2015-10-30	\N
2376	2376	1910	\N	2015-10-30	\N
2377	2377	1911	130000	2015-10-30	\N
2378	2378	1912	7500000	2015-10-30	Series B
2379	2379	150	2000000	2015-10-30	Series C
2380	2380	1913	230000	2015-10-30	pre-Series A
2381	1772	1914	80000	2015-10-30	\N
2382	1785	452	10000000	2015-10-31	Series B
2383	2383	1915	100000	2015-09-01	\N
2384	2384	161	\N	2015-09-01	Strategic Investment (Majority Stake)
2385	2385	1916	1000000	2015-09-01	Series A
2386	2386	1917	900000	2015-09-01	Series A
2387	903	318	\N	2015-09-02	Part of Series A raised in June 2015
2388	2388	1918	40000000	2015-09-02	Series C
2389	2389	1919	45000000	2015-09-02	Series D
2390	2390	1920	260000	2015-09-03	\N
2391	2166	1921	\N	2015-09-03	\N
2392	2392	1922	40000000	2015-09-03	\N
2393	2393	1923	\N	2015-09-03	\N
2394	2394	1924	150000	2015-09-04	\N
2395	2395	1925	100000	2015-09-04	\N
2396	2396	1926	2000000	2015-09-04	\N
2397	2397	1927	600000	2015-09-07	\N
2398	1354	1928	205000	2015-09-07	\N
2399	7	1929	60000000	2015-09-07	Late Stage
2400	2400	1930	1800000	2015-09-07	Series A
2401	2401	69	400000	2015-09-08	\N
2402	2402	948	\N	2015-09-08	\N
2403	2403	948	\N	2015-09-08	\N
2404	2404	1931	770000	2015-09-10	Series A
2405	2068	1932	9200000	2015-09-10	Series B
2406	2406	1933	315000	2015-09-10	\N
2407	2407	1934	100000	2015-09-11	\N
2408	2408	1935	\N	2015-09-11	\N
2409	981	\N	1000000	2015-09-11	\N
2410	2410	1936	\N	2015-09-11	\N
2411	2411	1937	15000000	2015-09-12	Series A
2412	2412	1938	\N	2015-09-12	Series A
2413	2413	411	1200000	2015-09-14	\N
2414	2414	671	9000000	2015-09-14	Series A
2415	2415	1939	3000000	2015-09-14	Series A
2416	65	1940	225000000	2015-09-14	Late Stage
2417	299	1941	2000000	2015-09-15	Part of $12M Series B funding
2418	1151	1942	4250000	2015-09-15	Series A
2419	2330	1013	\N	2015-09-15	\N
2420	2420	1943	1000000	2015-09-15	\N
2421	2421	1944	300000	2015-09-15	\N
2422	2422	1945	\N	2015-09-15	Pre-Series A
2423	2423	671	10000000	2015-09-16	Series A
2424	2424	614	410000	2015-09-16	\N
2425	2425	1946	450000	2015-09-16	\N
2426	2426	979	\N	2015-09-17	\N
2427	2427	1947	\N	2015-09-17	Bridge Funding
2428	800	1948	75000000	2015-09-17	Series D
2429	2429	1949	600000	2015-09-17	\N
2430	2430	1950	350000	2015-09-18	\N
2431	1607	1951	1150000	2015-09-18	Pre-Series A
2432	2432	67	150000	2015-09-18	\N
2433	2433	1952	150000	2015-09-18	\N
2434	2434	1953	\N	2015-09-19	\N
2435	2435	1954	37500000	2015-09-21	\N
2436	2436	702	235000	2015-09-21	\N
2437	2437	1955	\N	2015-09-21	\N
2438	2186	1293	125000	2015-09-21	thru Accelerator
2439	2439	1956	\N	2015-09-21	\N
2440	2440	1957	\N	2015-09-22	\N
2441	2441	1958	3000000	2015-09-22	Series A
2442	2442	1604	\N	2015-09-22	\N
2443	35	1959	\N	2015-09-22	\N
2444	2444	1960	800000	2015-09-22	Pre-Series A
2445	2445	1961	400000	2015-09-22	\N
2446	2446	452	10000000	2015-09-22	Series A
2447	2447	1962	300000	2015-09-22	\N
2448	2448	1963	\N	2015-09-23	\N
2449	2449	1964	\N	2015-09-23	\N
2450	2450	1965	1200000	2015-09-23	Series A
2451	2451	1966	2250000	2015-09-23	Series A
2452	1273	1967	1750000	2015-09-23	pre-Series A
2453	2453	1968	3300000	2015-09-24	\N
2454	2454	1969	400000	2015-09-24	\N
2455	2455	1970	2000000	2015-09-24	Series A
2456	13	1971	1000000	2015-09-24	\N
2457	2457	1972	\N	2015-09-25	Pre-Series A
2458	1519	1973	\N	2015-09-28	\N
2459	65	1974	30000000	2015-09-28	late Stage (part of $500M funding rnd)
2460	32	1975	680000000	2015-09-29	Late Stage (Alibaba @ 40% equity)
2461	2461	1976	100000000	2015-09-29	Late Stage
2462	2176	1977	36000000	2015-09-29	Series B
2463	2463	1978	\N	2015-09-29	\N
2464	2464	376	\N	2015-09-29	\N
2465	2465	1979	350000	2015-09-29	\N
2466	2466	1980	\N	2015-09-29	\N
2467	2467	1981	5000000	2015-09-30	\N
2468	2468	727	1000000	2015-09-30	\N
2469	2469	1982	\N	2015-09-30	Super angel round
2470	2470	1983	1000000	2015-09-30	\N
2471	1951	1984	500000000	2015-08-01	Late Stage Round 7th (More details)
2472	2472	1985	400000	2015-08-01	\N
2473	2473	1986	\N	2015-08-03	\N
2474	1197	1613	5000000	2015-08-03	Series A
2475	2475	1987	\N	2015-08-03	\N
2476	2476	1988	\N	2015-08-03	\N
2477	2477	1989	100000000	2015-08-03	Series B
2478	2478	1345	\N	2015-08-03	\N
2479	2479	1990	9600000	2015-08-03	Series B
2480	2480	1991	1300000	2015-08-04	Series A
2481	2481	1992	650000	2015-08-05	\N
2482	151	1993	1300000	2015-08-05	\N
2483	2483	1994	30000000	2015-08-05	Series A
2484	2484	1995	3000000	2015-08-05	Series A
2485	2485	1996	500000	2015-08-05	\N
2486	2486	1997	\N	2015-08-05	\N
2487	2487	1998	785000	2015-08-05	\N
2488	2488	1999	\N	2015-08-06	\N
2489	2489	2000	500000	2015-08-06	pre Series-A
2490	2490	2001	90000000	2015-08-06	Series C
2491	2491	2002	\N	2015-08-06	\N
2492	2492	2003	\N	2015-08-06	\N
2493	2493	2004	700000	2015-08-06	\N
2494	669	2005	25000000	2015-08-06	Series C
2495	2495	2006	\N	2015-08-06	Series A
2496	2496	669	630000	2015-08-07	\N
2497	2497	2007	500000	2015-08-07	Pre-Series A
2498	2498	2008	\N	2015-08-07	Series A
2499	2499	2009	\N	2015-08-07	\N
2500	956	2010	\N	2015-08-07	\N
2501	1560	2011	500000	2015-08-10	Pre Series-A
2502	2502	2012	80000	2015-08-10	\N
2503	2503	2013	\N	2015-08-10	\N
2504	2504	2014	250000	2015-08-10	QPrize Contest Winners
2505	2505	297	16000000	2015-08-10	Series A
2506	2506	2015	250000	2015-08-10	\N
2507	2507	2016	1000000	2015-08-10	Series A
2508	2508	1	30000000	2015-08-10	Series B
2509	2509	2017	8000000	2015-08-11	Series A
2510	2510	614	1600000	2015-08-11	\N
2511	1768	2018	100000	2015-08-11	\N
2512	2512	2019	20000000	2015-08-11	Series A
2513	2513	2020	63000000	2015-08-11	\N
2514	767	2021	7500000	2015-08-12	Series B
2515	351	411	50000000	2015-08-12	Series C
2516	1418	2022	770000	2015-08-12	\N
2517	1660	2023	2500000	2015-08-12	Series A
2518	2518	2024	500000	2015-08-13	\N
2519	2519	2025	25000000	2015-08-13	Series B
2520	2520	2026	\N	2015-08-13	\N
2521	944	402	4000000	2015-08-13	Series A
2522	2522	2027	100000	2015-08-14	\N
2523	864	2028	245000	2015-08-14	\N
2524	2524	2029	\N	2015-08-14	\N
2525	2525	2030	220000	2015-08-17	\N
2526	1025	2031	\N	2015-08-17	\N
2527	2527	2032	160000	2015-08-17	\N
2528	2528	2033	\N	2015-08-17	pre series A
2529	2529	1987	\N	2015-08-17	\N
2530	2530	2034	\N	2015-08-17	\N
2531	2531	2035	310000	2015-08-17	\N
2532	2532	2036	\N	2015-08-17	Strategic Investment
2533	144	124	15000000	2015-08-18	Series B
2534	2534	2037	4200000	2015-08-18	Series A
2535	2535	2038	1000000	2015-08-18	\N
2536	2536	2039	\N	2015-08-18	\N
2537	2537	2040	\N	2015-08-18	Series A
2538	2538	637	1000000	2015-08-18	Series A
2539	2539	2041	\N	2015-08-19	\N
2540	2540	1686	2400000	2015-08-19	\N
2541	2408	2042	\N	2015-08-19	\N
2542	2542	2043	20000000	2015-08-19	\N
2543	2543	2044	156000	2015-08-20	\N
2544	2544	614	600000	2015-08-20	\N
2545	2545	2045	600000	2015-08-20	\N
2546	2546	2046	500000	2015-08-21	\N
2547	2547	2047	300000	2015-08-24	\N
2548	2548	2048	400000	2015-08-24	\N
2549	2549	2049	\N	2015-08-24	\N
2550	2550	2050	\N	2015-08-24	\N
2551	2551	2051	1000000	2015-08-25	pre-series A
2552	180	536	3000000	2015-08-25	Series A
2553	2553	2052	4000000	2015-08-25	Series A
2554	2554	2044	250000	2015-08-25	\N
2555	1188	1723	100000	2015-08-26	\N
2556	2556	2053	400000	2015-08-26	\N
2557	2557	1345	\N	2015-08-26	\N
2558	2558	492	500000	2015-08-26	\N
2559	1103	2054	\N	2015-08-27	\N
2560	2560	2055	\N	2015-08-27	\N
2561	2561	2056	\N	2015-08-27	Strategic Investment
2562	2562	2057	\N	2015-08-28	\N
2563	1776	2058	2000000	2015-08-28	Pre-Series A
2564	2564	2059	160000	2015-08-28	\N
2565	2565	2060	\N	2015-08-29	\N
2566	2566	2061	300000	2015-08-31	\N
2567	2567	2062	4000000	2015-08-31	Series A
2568	2568	2063	\N	2015-08-31	Bridge Round
2569	2359	2064	\N	2015-07-01	\N
2570	2570	1134	\N	2015-07-01	Series A
2571	2571	2065	1000000	2015-07-01	\N
2572	2572	2066	630000	0015-07-01	\N
2573	1667	2067	\N	2015-07-01	\N
2574	65	318	\N	2015-07-01	Personal Investment
2575	2575	2068	13500000	2015-07-01	Series A
2576	2576	2069	60000000	2015-07-02	Series C\\\\n(More here)
2577	2577	37	5000000	2015-07-02	Series A
2578	1003	2070	161000	2015-07-02	\N
2579	2579	124	6500000	2015-07-03	Series A
2580	2580	32	\N	2015-07-03	Pre-Series A
2581	1922	2071	1000000	2015-07-03	\N
2582	525	2072	\N	2015-07-04	\N
2583	2583	2073	395000	2015-07-04	\N
2584	1535	2029	\N	2015-07-05	\N
2585	2585	2074	\N	2015-07-06	\N
2586	2586	2075	30000000	2015-07-06	Series B
2587	2587	2076	\N	2015-07-06	\N
2588	2588	2077	3000000	2015-07-07	Series A
2589	2589	2078	5000000	2015-07-07	Series A
2590	2590	2079	\N	2015-07-07	\N
2591	2300	2080	\N	2015-07-07	Pre-Series A
2592	2592	2081	\N	2015-07-08	\N
2593	1613	2082	100000000	2015-07-08	Series C
2594	914	2083	11000000	2015-07-08	Series A
2595	2595	2084	30000000	2015-07-08	Series C
2596	2596	2085	20000	2015-07-08	\N
2597	2597	318	\N	2015-07-08	\N
2598	2598	2086	470000	2015-07-08	Strategic Investment
2599	2599	390	7500000	2015-07-08	Series B
2600	365	2087	10000000	2015-07-08	Series A
2601	2601	2088	10200000	2015-07-08	Series A
2602	1164	2089	11000000	2015-07-08	Series B
2603	2603	2090	\N	2015-07-09	\\\\xc2\\\\xa0Series B
2604	2604	2091	\N	2015-07-09	\N
2605	2605	2092	\N	2015-07-09	\N
2606	2606	2093	\N	2015-07-09	\N
2607	2607	2094	\N	2015-07-01	\N
2608	2608	2095	\N	2015-07-10	\N
2609	2609	2096	\N	2015-07-10	\\\\xc2\\\\xa0Late Stage
2610	2610	2097	\N	2015-07-13	\\\\xc2\\\\xa0Series A
2611	2611	2098	\N	2015-07-13	\\\\xc2\\\\xa0Series A
2612	2612	2099	\N	2015-07-13	\N
2613	2613	2100	10000000	2015-07-14	Series B
2614	1694	2101	\N	2015-07-14	\N
2615	2615	2102	300000	2015-07-14	\N
2616	2616	2103	7500000	2015-07-14	Series C
2617	248	67	790000	2015-07-14	\N
2618	2618	2104	500000	2015-07-14	\N
2619	907	2105	100000000	2015-07-15	Series B
2620	672	727	2300000	2015-07-15	Series B
2621	2621	2106	\N	2015-07-15	\N
2622	2367	2107	11000000	2015-07-15	Series A
2623	2493	2108	700000	2015-07-16	\N
2624	2624	1563	1600000	2015-07-17	Follow on Funding
2625	2625	2109	100000	2015-07-17	\N
2626	2483	2110	15000000	2015-07-20	No confirmation
2627	692	2111	4850000	2015-07-20	Series A
2628	2628	2112	\N	2015-07-21	\N
2629	2629	2113	1000000	2015-07-21	Series A
2630	2630	39	2000000	2015-07-22	Series A
2631	2631	2114	30000000	2015-07-22	Late Stage
2632	2002	2115	12750000	2015-07-23	Series A
2633	436	2116	25000000	2015-07-23	Series B
2634	2634	2117	320000	2015-07-23	\N
2635	2635	428	\N	2015-07-23	\N
2636	322	297	20000000	2015-07-23	Series B
2637	2637	199	15000000	2015-07-23	Strategic Investment
2638	281	39	1000000	2015-07-23	Series A
2639	1459	2118	60000000	2015-07-23	Late Stage
2640	2158	2119	\N	2015-07-23	\N
2641	2641	1619	1000000	2015-07-24	Bridge round
2642	2642	614	\N	2015-07-25	\N
2643	2411	2120	15000000	2015-07-25	Series A
2644	2644	390	6000000	2015-07-27	Series A
2645	2645	808	\N	2015-07-27	\N
2646	1686	2121	\N	2015-07-27	\N
2647	2647	2122	\N	2015-07-27	\N
2648	328	2123	100000000	2015-07-28	Series D
2649	2649	2124	700000000	2015-07-28	Late Stage, 10th Round More here
2650	2346	2125	1300000	2015-07-28	\N
2651	230	2126	1000000	2015-07-28	\N
2652	2652	2127	2000000	2015-07-29	Series A
2653	2653	2128	2400000	2015-07-29	\N
2654	2654	2129	50000000	2015-07-29	Series A
2655	2655	2130	1200000	2015-07-29	Series A
2656	2656	2131	600000	2015-07-30	Pre-Series A
2657	2657	2132	2400000	2015-07-30	Series A
2658	2658	2133	16000000	2015-07-30	Series A
2659	1595	2134	168000	2015-07-30	\N
2660	2660	2135	168000	2015-07-30	\N
2661	1014	2136	\N	2015-07-30	Pre-Series A
2662	2662	2137	\N	2015-07-30	\N
2663	2663	2138	500000	2015-07-31	pre-Series A
2664	2664	2139	\N	2015-07-31	Series A
2665	2665	2140	2000000	2015-07-31	Series A
2666	2666	199	5000000	2015-07-31	Strategic Investment
2667	1776	2141	\N	2015-06-01	\N
2668	2668	2142	6000000	2015-06-01	Series B
2669	1024	2143	500000	2015-06-01	\N
2670	2670	294	4000000	2015-06-01	Series C
2671	2671	2144	350000	2015-06-01	\N
2672	2411	2145	\N	2015-06-01	\N
2673	2673	2146	1000000	2015-06-01	Pre-Series A
2674	2674	1345	550000	2015-06-01	\N
2675	2675	2147	500000	2015-06-01	\N
2676	2676	2148	35000000	2015-06-02	Series A
2677	2677	2149	350000	2015-06-02	\N
2678	336	2150	\N	2015-06-02	Series A
2679	2679	2151	\N	2015-06-03	\N
2680	2680	2152	3000000	2015-06-03	Series A
2681	1560	1934	100000	2015-06-03	\N
2682	2682	82	15000000	2015-06-03	Series B
2683	2683	2153	150000	2015-06-03	\N
2684	2504	2154	\N	2015-06-03	\N
2685	2685	2155	250000	2015-06-03	\N
2686	2686	318	\N	2015-06-03	\N
2687	593	523	137000000	2015-06-04	Series C
2688	811	411	1000000	2015-06-04	Pre-Series A
2689	2689	2156	20000000	2015-06-04	Series C
2690	652	2157	50000000	2015-06-04	Late Stage
2691	2691	\N	500000	2015-06-05	\N
2692	869	2158	10000000	2015-06-05	Series A
2693	1785	2159	5000000	2015-06-05	Series A
2694	2694	2160	\N	2015-06-08	\N
2695	2695	2161	40000000	2015-06-08	Series B
2696	882	954	5000000	2015-06-09	Series A
2697	358	2162	16500000	2015-06-09	Series B
2698	2698	2044	234000	2015-06-09	\N
2699	2699	2132	\N	2015-06-09	Series A
2700	2700	2163	140000	2015-06-09	\N
2701	122	2164	\N	2015-06-10	\N
2702	1007	2165	5000000	2015-06-10	Series A
2703	2703	2166	350000	2015-06-11	\N
2704	1441	2167	250000	2015-06-11	Pre-Series A
2705	2705	297	16000000	2015-06-12	Series A
2706	2706	297	50000000	2015-06-15	Series B
2707	2707	359	\N	2015-06-15	Series A
2708	2708	2168	500000	2015-06-15	\N
2709	2709	2029	\N	2015-06-16	\N
2710	2710	2169	\N	2015-06-16	Series A
2711	2711	2170	500000	2015-06-16	\N
2712	2712	2171	\N	2015-06-17	\N
2713	2713	2172	\N	2015-06-17	additional funding round
2714	2714	2173	8200000	2015-06-17	Series C
2715	2715	669	\N	2015-06-18	\N
2716	446	2174	3000000	2015-06-18	Series A
2717	2717	2175	5000000	2015-06-18	Series A
2718	137	2176	\N	2015-06-18	Series A
2719	2719	2177	\N	2015-06-18	\N
2720	2164	75	4000000	2015-06-19	Series A
2721	2721	2178	11000000	2015-06-19	Series C
2722	2722	2179	120000	2015-06-20	\N
2723	1973	2180	10000000	2015-06-20	Series A
2724	2724	1278	3100000	2015-06-21	Series A
2725	2725	2181	5000000	2015-06-22	Series A
2726	972	1860	\N	2015-06-22	Strategic Investment
2727	2727	2182	\N	2015-06-22	\N
2728	2728	2183	500000	2015-06-22	\N
2729	2729	2184	\N	2015-06-22	\N
2730	2730	297	1600000	2015-06-23	Series A
2731	676	2185	6000000	2015-06-23	Series A
2732	2732	2186	1000000	2015-06-23	Series A
2733	2733	669	\N	2015-06-23	\N
2734	2734	359	\N	2015-06-24	\N
2735	1631	1614	\N	2015-06-24	\N
2736	2736	1946	\N	2015-06-24	\N
2737	2737	2187	15000000	2015-06-24	Series C
2738	2738	2188	5500000	2015-06-24	Series A
2739	2739	2189	500000	2015-06-24	\N
2740	2740	2190	8600000	2015-06-25	Series C
2741	2741	2191	6000000	2015-06-25	Series A
2742	933	2192	2500000	2015-06-26	Series A
2743	2743	458	250000	2015-06-26	\N
2744	785	2193	10000000	2015-06-29	Series A
2745	2278	2194	\N	2015-06-29	\N
2746	2746	2195	1000000	2015-06-29	\N
2747	2652	2196	400000	2015-06-29	\N
2748	1445	2197	\N	2015-06-30	\N
2749	311	2198	\N	2015-06-30	Pre-Series A
2750	2750	2054	\N	2015-06-30	\N
2751	2751	2199	2500000	2015-06-30	Strategic Funding
2752	2752	2200	1500000	2015-06-30	Series A
2753	2753	2201	100000000	2015-05-01	Series D
2754	2754	2202	100000	2015-05-01	\N
2755	2092	2203	550000	2015-05-04	\N
2756	1264	2204	200000	2015-05-04	\N
2757	2757	37	1000000	2015-05-04	\N
2758	2758	1930	650000	2015-05-05	\N
2759	2759	1930	250000	2015-05-05	\N
2760	1062	392	6000000	2015-05-05	pre-Series A
2761	2761	2205	15000000	2015-05-05	Series C
2762	2762	2206	\N	2015-05-05	\N
2763	835	2207	85000000	2015-05-06	Series D
2764	358	650	15000000	2015-05-06	Series B
2765	52	2208	\N	2015-05-07	Series A
2766	840	1363	3500000	2015-05-07	Series A
2767	105	2209	10000000	2015-05-07	Series B
2768	287	2210	5000000	2015-05-07	Series A
2769	2769	2211	1000000	2015-05-08	\N
2770	2770	1873	\N	2015-05-08	\N
2771	2771	2212	2000000	2015-05-08	Bridge Round Pre-Series B
2772	2772	2213	150000	2015-05-08	\N
2773	137	1860	\N	2015-05-08	Strategic Investment
2774	2774	2214	2000000	2015-05-12	Pre-Series A
2775	1014	2215	2000000	2015-05-12	Pre-Series A
2776	2776	2216	\N	2015-05-12	\N
2777	2777	2217	2000000	2015-05-12	\N
2778	2778	392	\N	2015-05-12	\N
2779	1442	2218	\N	2015-05-13	\N
2780	2780	1604	\N	2015-05-13	\N
2781	2781	2219	5000000	2015-05-14	Series B
2782	2782	392	250000	2015-05-14	\N
2783	2783	2220	270000	2015-05-15	\N
2784	2784	2221	\N	2015-05-18	Pre-Series Bridge
2785	369	2222	\N	2015-05-18	\N
2786	548	1	1000000	2015-05-19	Series A
2787	2787	297	16000000	2015-05-19	Series B
2788	2788	2223	470000	2015-05-19	\N
2789	2789	2224	1000000	2015-05-19	\N
2790	2790	2225	\N	2015-05-19	\N
2791	2791	2100	5500000	2015-05-19	Series A
2792	2792	2226	10000000	2015-05-19	Series A
2793	2332	2227	3000000	2015-05-20	Series A
2794	2794	2228	\N	2015-05-21	\N
2795	2795	2229	625000	2015-05-22	\N
2796	9	2230	\N	2015-05-22	1% stake
2797	2797	2231	500000	2015-05-22	\N
2798	403	1108	\N	2015-05-25	\N
2799	2799	2232	500000	2015-05-25	\N
2800	2800	2233	\N	2015-05-25	\N
2801	2801	2234	2000000	2015-05-26	Series A
2802	753	2235	200000	2015-05-26	\N
2803	2803	2236	1000000	2015-05-26	Series A
2804	1296	82	1000000	2015-05-27	Series A
2805	2805	2237	5000000	2015-05-27	Series A
2806	2806	2238	180000	2015-05-27	\N
2807	2807	2239	240000	2015-05-28	\N
2808	1164	297	5000000	2015-05-28	Series B Interim Funding
2809	2809	979	\N	2015-05-28	Series A
2810	95	124	12000000	2015-05-30	Series A
2811	358	2240	2000000	2015-04-03	Series A
2812	2812	2241	200000	2015-04-04	\N
2813	2813	\N	1000000	2015-04-04	\N
2814	2814	2242	120000	2015-04-06	\N
2815	2815	2243	165000	2015-04-07	\N
2816	1459	2244	150000000	2015-04-07	Series G (Check prev funding details here)
2817	2817	2245	2200000	2015-04-07	\N
2818	2446	2246	\N	2015-04-07	\N
2819	2819	2247	10000000	2015-04-08	Series D ( In Feb it was announced they raised 26M, but it is 36M, so added here)
2820	2196	2248	25000000	2015-04-08	Series B
2821	2821	2249	400000000	2015-04-08	Series E (Updated from 315M to 400M after Press Release)
2822	1390	2250	200000	2015-04-09	\N
2823	1603	2251	2000000	2015-04-09	\N
2824	2824	2252	165000	2015-04-09	\N
2825	318	2253	50000000	2015-04-09	Series C
2826	2826	2254	\N	2015-04-09	Series B
2827	862	2255	900000	2015-04-10	\N
2828	2828	359	\N	2015-04-10	\N
2829	7	969	25000000	2015-04-11	Late Stage
2830	2830	2256	10000000	2015-04-13	Series B
2831	2831	2257	300000	2015-04-13	\N
2832	2738	550	500000	2015-04-13	\N
2833	2833	727	1000000	2015-04-13	\N
2834	2157	1339	1250000	2015-04-13	\N
2835	2835	2258	5000000	2015-04-14	Series A
2836	60	2259	35000000	2015-04-15	Series B
2837	2837	2260	10000000	2015-04-15	Series A
2838	194	2261	40000000	2015-04-15	Series D
2839	785	2262	1600000	2015-04-16	\N
2840	1985	2263	1200000	2015-04-16	\N
2841	2841	2264	12000000	2015-04-17	Series B
2842	2484	2265	\N	2015-04-18	\N
2843	1776	669	\N	2015-04-20	\N
2844	2844	1726	4000000	2015-04-20	Series A
2845	2845	2266	6000000	2015-04-20	Series A
2846	2846	2267	50000000	2015-04-20	Series E
2847	2847	2268	28000000	2015-04-20	Series C
2848	2848	2269	\N	2015-04-22	Series A
2849	2849	492	3500000	2015-04-22	Series A
2850	1968	2270	1500000	2015-04-22	Series A
2851	1353	2271	15000000	2015-04-23	Series C
2852	2852	2272	18000000	2015-04-23	Series B
2853	2853	2273	1800000	2015-04-23	\N
2854	377	2183	500000	2015-04-23	\N
2855	1785	2274	1000000	2015-04-23	\N
2856	180	2275	\N	2015-04-23	\N
2857	2857	2276	\N	2015-04-23	Pre-Series A
2858	299	2277	12000000	2015-04-24	Series B
2859	2859	2278	350000	2015-04-27	\N
2860	2232	2279	1000000	2015-04-27	\N
2861	2861	2280	400000	2015-04-27	\N
2862	2862	2281	\N	2015-04-27	Series B
2863	2863	2282	10000000	2015-04-28	Series B
2864	318	2283	\N	2015-04-28	Series D
2865	2865	2284	250000	2015-04-28	\N
2866	2866	2285	21500000	2015-04-28	Series C
2867	2867	2286	1000000	2015-04-29	\N
2868	360	2287	6000000	2015-04-29	Series A
2869	1973	37	3500000	2015-04-29	Series A
2870	2870	2288	\N	2015-04-29	\N
2871	2871	702	400000	2015-04-29	\N
2872	2872	2289	500000	2015-04-29	\N
2873	1001	2290	8000000	2015-04-29	Series B
2874	2874	2291	5500000	2015-03-02	Series A
2875	2814	2044	120000	2015-03-02	\N
2876	2876	2292	15000000	2015-03-03	\N
2877	2877	2293	\N	2015-03-03	\N
2878	2878	37	1000000	2015-03-05	\N
2879	2879	2294	2500000	2015-03-05	\N
2880	2880	2295	1200000	2015-03-06	\N
2881	2881	979	2500000	2015-03-09	\N
2882	2882	2296	500000	2015-03-09	\N
2883	2883	2297	\N	2015-03-10	Series B
2884	2884	392	1000000	2015-03-11	\N
2885	2885	2298	150000	2015-03-11	\N
2886	2886	2299	5000000	2015-03-11	Series B
2887	2887	297	20000000	2015-03-11	\N
2888	1743	2300	\N	2015-03-12	\N
2889	2889	2301	15000000	2015-03-12	Series A
2890	2753	2302	110000000	2015-03-13	Series C
2891	32	318	\N	2015-03-13	More details
2892	2892	2303	5000000	2015-03-13	Series C
2893	2893	2304	\N	2015-03-13	\N
2894	2894	2305	500000	2015-03-14	\N
2895	2528	2306	200000	2015-03-14	\N
2896	2896	2134	\N	2015-03-14	\N
2897	2897	2307	166000	2015-03-16	\N
2898	1779	2308	1300000	2015-03-16	\N
2899	2899	2309	166000	2015-03-16	\N
2900	1658	2310	50000000	2015-03-16	\N
2901	1207	509	\N	2015-03-17	\N
2902	2902	2311	5000000	2015-03-18	\N
2903	2903	2044	200000	2015-03-18	\N
2904	2310	1859	\N	2015-03-18	Minority stake, Strategic
2905	102	2312	2000000	2015-03-19	Pre-Series A
2906	2906	2313	2800000	2015-03-19	\N
2907	2907	2314	\N	2015-03-20	Series A
2908	2908	2315	3000000	2015-03-20	\N
2909	2909	247	180000	2015-03-20	\N
2910	2910	2316	15000000	2015-03-20	Series B
2911	2911	2317	\N	2015-03-21	\N
2912	1500	156	120000	2015-03-23	\N
2913	2913	2318	\N	2015-03-23	Series B
2914	444	2319	6000000	2015-03-24	Series A
2915	2915	2320	160000	2015-03-24	\N
2916	1588	2321	6000000	2015-03-25	Series A
2917	2917	2322	500000	2015-03-25	Series A
2918	2918	2323	2000000	2015-03-25	\N
2919	2919	2324	\N	2015-03-25	\N
2920	587	2325	25000000	2015-03-25	Series A
2921	2921	2326	5000000	2015-03-26	Series A
2922	2922	2327	1750000	2015-03-26	\N
2923	2546	67	\N	2015-03-26	\N
2924	2924	2328	100000	2015-03-27	\N
2925	2925	2329	100000	2015-03-27	\N
2926	2926	2330	115000	2015-03-28	\N
2927	2927	2331	30000000	2015-03-28	\N
2928	2928	2332	1500000	2015-03-28	Pre-Series A
2929	2929	2333	10000000	2015-03-30	\N
2930	2930	2334	75000000	2015-03-30	Incremental Capital
2931	2931	2335	3000000	2015-03-31	Series B (More Here)
2932	2932	2336	16000000	2015-03-31	Series D
2933	2933	2337	16000000	2015-03-31	Series C
2934	2934	2044	16600	2015-02-02	At the 10 minute million event
2935	2935	2044	16600	2015-02-02	At the 10 minute million event
2936	2936	2044	16600	2015-02-02	At the 10 minute million event
2937	2937	2044	16600	2015-02-02	At the 10 minute million event
2938	2938	2044	16600	2015-02-02	At the 10 minute million event
2939	2939	2044	16600	2015-02-02	At the 10 minute million event
2940	2940	2338	250000	2015-02-02	For mobile app
2941	2135	2339	1000000	2015-02-02	\N
2942	1097	323	\N	2015-02-02	Series A
2943	2073	2340	26000000	2015-02-02	Series D
2944	903	1031	325000	2015-02-02	\N
2945	2945	2341	518000	2015-02-03	\N
2946	2946	2342	60000000	2015-02-03	Series D
2947	2947	2343	\N	2015-02-05	\N
2948	2948	2344	18000000	2015-02-05	Series B
2949	32	2345	\N	2015-02-05	Strategic Investment (25% stake)
2950	2950	2346	100000	2015-02-05	\N
2951	1052	2347	80000000	2015-02-06	Series C
2952	2952	2348	40000000	2015-02-06	Series C
2953	2953	402	3000000	2015-02-09	Series A
2954	2954	318	\N	2015-02-09	\N
2955	2955	1649	20000000	2015-02-09	Series B
2956	2956	2349	\N	2015-02-10	\N
2957	1585	2350	\N	2015-02-10	\N
2958	308	2351	13000000	2015-02-11	Series A
2959	2959	2183	3000000	2015-02-11	\N
2960	2960	2044	\N	2015-02-11	\N
2961	2848	2352	\N	2015-02-11	\N
2962	2962	2353	20000000	2015-02-12	Series B
2963	1074	1912	30000000	2015-02-12	Series B
2964	2964	2354	\N	2015-02-13	\N
2965	2965	2355	1000000	2015-02-13	\N
2966	2966	2356	16500000	2015-02-13	Promoter Commitment
2967	2967	2357	4150000	2015-02-16	Series A
2968	2968	1405	1000000	2015-02-16	Series A
2969	2969	2358	\N	2015-02-17	\N
2970	2970	2359	5000000	2015-02-18	Series A
2971	2971	2360	800000	2015-05-19	\N
2972	2972	2361	500000	2015-02-20	\N
2973	2803	2362	1600000	2015-02-20	Series A
2974	2974	2363	290000	2015-02-21	Grant + Seed funding
2975	241	2364	4500000	2015-02-23	Series A
2976	2976	2365	1000000	2015-02-23	Series A
2977	2977	67	10000000	2015-02-23	Series A
2978	75	2366	3000000	2015-02-23	Series A
2979	2979	2367	500000	2015-02-24	\N
2980	2980	2368	\N	2015-02-25	\N
2981	2981	2369	250000	2015-02-25	\N
2982	1044	2370	160000	2015-02-25	\N
2983	2837	297	\N	2015-02-25	\N
2984	595	2371	320000	2015-02-25	\N
2985	2068	37	2000000	2015-02-25	Series A
2986	2986	2372	\N	2015-02-26	\N
2987	2378	2373	16000000	2015-02-26	Series B
2988	2988	2374	1200000	2015-02-27	\N
2989	60	2375	10000000	2015-02-27	Series A
2990	1059	2376	2150000	2015-01-02	\N
2991	2991	2377	315000	2015-01-02	\N
2992	2332	2378	380000	2015-01-05	\N
2993	2993	2379	10000000	2015-01-05	\N
2994	1821	2380	135000	2015-01-05	\N
2995	2995	2381	285000	2015-01-06	\N
2996	2996	954	\N	2015-01-06	\N
2997	2997	889	10000000	2015-01-06	\N
2998	2998	2382	1000000	2015-01-06	\N
2999	2999	75	600000	2015-01-06	\N
3000	1695	2383	\N	2015-01-07	Valuation at $4M
3001	1016	2384	125000	2015-01-07	\N
3002	3002	2385	\N	2015-01-07	\N
3003	3003	2386	30768	2015-01-07	\N
3004	3004	1540	5000000	2015-01-07	3rd Round
3005	3005	2387	\N	2015-01-09	Series B
3006	800	2388	13000000	2015-01-09	Series A
3007	3007	2389	\N	2015-01-09	\N
3008	3008	2390	\N	2015-01-12	\N
3009	3009	392	290000	2015-01-12	\N
3010	2221	2391	\N	2015-01-13	\N
3011	3011	2334	50000000	2015-01-14	\N
3012	1100	2392	650000	2015-01-15	\N
3013	421	2393	161000	2015-01-16	\N
3014	3014	2394	100000000	2015-01-18	More Details
3015	3015	2395	330000	2015-01-19	\N
3016	3016	2396	\N	2015-01-19	\N
3017	3017	2044	200000	2015-01-19	\N
3018	3018	2397	16000	2015-01-19	\N
3019	3019	2397	16000	2015-01-19	\N
3020	3020	2397	16000	2015-01-19	\N
3021	3021	2397	16000	2015-01-19	\N
3022	3022	2397	16000	2015-01-19	\N
3023	2003	2398	11000000	2015-01-20	\N
3024	1156	2399	\N	2015-01-20	\N
3025	3017	2044	200000	2015-01-20	\N
3026	1353	2400	14750000	2015-01-21	\N
3027	3009	392	325000	2015-01-21	\N
3028	3028	2401	\N	2015-05-21	\N
3029	2066	1607	3250000	2015-05-21	To fund edu startups
3030	3030	2044	200000	2015-01-22	\N
3031	3031	2402	\N	2015-01-22	\N
3032	3032	2403	\N	2015-01-22	Majority Stake
3033	3033	2404	56000000	2015-01-22	\N
3034	3034	124	31000000	2015-01-22	Series D
3035	1950	2405	1500000	2015-01-24	\N
3036	3036	2406	\N	2015-01-24	Series A
3037	3037	2407	1000000	2015-01-25	Strategic Funding
3038	2954	2408	50000000	2015-01-27	Series B
3039	3039	2409	2500000	2015-01-28	Series A
3040	3040	2410	4500000	2015-01-29	\N
3041	3041	2411	825000	2015-01-29	Govt backed VC Fund
3042	158	2412	1500000	2015-01-30	\N
3043	3043	199	\N	2015-01-30	Strategic Funding, Minority stake
3044	3044	2413	140000	2015-01-31	\N
\.


--
-- Data for Name: startup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.startup (id, nome, industria_vertical, sub_industria_vertical, cidade_id) FROM stdin;
1	BYJU’S	E-Tech	E-learning	1
2	Shuttl	Transportation	App based shuttle service	2
3	Mamaearth	E-commerce	Retailer of baby and toddler products	1
4	https://www.wealthbucket.in/	FinTech	Online Investment	3
5	Fashor	Fashion and Apparel	Embroiled Clothes For Women	4
6	Pando	Logistics	Open-market, freight management platform	5
7	Zomato	Hospitality	Online Food Delivery Platform	2
8	Ecozen	Technology	Agritech	6
9	CarDekho	E-Commerce	Automobile	2
10	Dhruva Space	Aerospace	Satellite Communication	1
11	Rivigo	Technology	Logistics Services and Solutions	2
12	Healthians	B2B-focused foodtech startup	Food Solutions For Corporate	1
13	Licious	E-Commerce	Online Meat And Seafood Ordering Startup	1
14	InCred	Finance	Non-Banking Financial Company	4
15	Trell	Video	Experience Discovery Platform	1
16	Rein Games	Gaming	Real money based gaming startup	7
17	Lenskart.com	E-Commerce	Online Eyewear Shopping Portal	8
18	Freshworks	Software	Business and customer engagement tools	9
19	Misters	Health and wellness	Men's Health and Wellness brand	2
20	Sunstone Eduversity Pvt. Ltd	Education	Elearning	2
21	Burger Singh	Food and Beverage	Indian Burger Brand	2
22	Healthians	Health and Wellness	Healthcare services	2
23	Ninjacart	B2B Marketing	Agritech	1
24	Aye Finance	FinTech	Financial Services To MSMEs	2
25	SuperGaming	Video Games	Social gaming platform	6
26	Clumio	SaaS	Recovery software	10
27	eBikeGo	Last Mile Transportation	Electric bike rental	11
28	Digital Mall Asia	E-Commerce	Virtual e-commerce platform	12
29	Medikabazaar	Healthcare	B2B platform for medical supplies	4
30	Vogo Automotive	Last Mile Transportation	Scooter sharing app	13
31	Furtados School of Music	Education	Music Education	14
32	Paytm	FinTech	Mobile Wallet	7
33	Dunzo	Customer Service	Delivery Service	1
34	Udaan	B2B	Business development	1
35	The Man Company	Consumer Goods	Beauty and Grooming	2
36	FPL Technologies	FinTech	Financial Services	6
37	Cashflo	FinTech	Invoice discounting platform and SME lending marketplace	4
38	Digital F5	Advertising, Marketing	Digital marketing firm	4
39	3rdFlix	SaaS	Education Technology	15
40	75F	IoT	Building automation system	16
41	Myelin Foundry	Information Technology	Deep-technology	1
42	Atomberg Technology	Consumer Technology	Consumer Electronics, Home Appliances	4
43	GOQii	Health and Wellness	Wearable Fitness Bands	17
44	Vyapar App	Accounting	Mobile-based Accounting Software	1
45	CarDekho	E-Commerce	Automotive	2
46	Progcap	Finance	Supply Chain Management	3
47	MyPetrolPump	Retail	Fuel Delivery	1
48	Alteria Capital	Finance	VC Funds	4
49	Pine Labs	Information Technology	Last-mile retail transaction technology	7
50	Meesho	E-Commerce	Social Commerce	1
51	Cars24	E-Commerce	Car Retail	18
52	Uniphore	Customer Service Platform	Conversational AI	19
53	Zendrive	Automotive	Road Safety Analytics	9
54	Lo! Foods	Consumer Goods	Low carb food for Diabetics	1
55	Tala	FinTech	Digital Lending Platform	20
56	INDwealth	FinTech	Wealth Management	2
57	HungerBox	Food and Beverage	B2B Foodtech	1
58	AdmitKard	EdTech	University Admissions	7
59	Mishry Reviews	Services	Product Review	2
60	Grofers	E-Commerce	Grocery Delivery	2
61	Rapido Bike Taxi	Transportation	Bike Taxi	1
62	RenewBuy	Finance	Auto Insurance	2
63	Atlan	Information Technology	Big Data	21
64	WizCounsel	Compliance	Consulting	3
65	Ola Cabs	Transport	Cabs	13
66	Uniphore	Artificial Intelligence	Speech Recognition	22
67	Daalchini Technologies	Food and Beverage	Digital Vending Machine	3
68	BYJU\\\\'S	EdTech	Education	1
69	Moglix	E-Commerce	Industrial Tools and Equipments	21
70	Ezyhaul	Tech	Logistics	21
71	Indus OS	Tech	Smartphone Operating System	23
72	HealthAssure	Health Care	Primary care medical network	4
73	House of Msasaba	Luxury Label	Clothes and Apparel	4
74	Board Infinity	EdTech	Full-stack career platform	24
75	NoBroker	E-Commerce	Real Estate	1
76	Bira91	Food and Beverage	Brewery	3
77	FabHotels	E-Commerce	Hospitality	2
78	Avail Finance	Finance	FinTech	1
79	BharatPe	Finance	FinTech	3
80	Recykal	Waste Management Service	Optimization	15
81	Agara Labs	Deep-Tech	Artificial Intelligence	1
82	Sistema.bio	Agriculture	Hybrid Reactor Biodigestor	25
83	Chakr Innovation	Energy	Renewable Energy	3
84	Pratilipi	Digital Media	E-Books	1
85	Bolo App	Digital Media	Video Platform	1
86	OkCredit	FinTech	Financial Services	26
87	Biz2Credit	FinTech	Online Lending Platform	27
88	Vogo Automotive Pvt. Ltd.	Transportation	Dockless Scooter Rental Company	28
89	Leegality	Services	Digital Documentation	29
90	Ola Electric	Transport	Cabs	1
91	Saahas Zero Waste	Waste Management Service	Optimization	1
92	StyleDotMe	E-commerce	Fashion and Shopping	12
93	BlackBuck	Transport	Logistics	1
94	Zenoti	Saas	Beauty and Wellness Industry	15
95	Ather Energy	Automobile	Electric Vehicle	1
96	FreshVnF	Agtech	Fresh Agriculture Produces	4
97	GlowRoad	E-commerce	Retail	1
98	Bira91	Food and Beverage	Brewery	3
99	Kuvera	Finance	Wealth Management	1
100	Medlife	E-commerce	Online Medicine	1
101	Kabadiwala	E-commerce	Waste Management	30
102	Tripoto	Social Media	Travel	3
103	Azah	Health and Wellness	Organic wellness	18
104	Setu	Fintech	Banking	1
105	Toppr	Edtech	E-learning	4
106	Craftsvilla	E-commerce	Fashion and Apparel	4
107	Unacademy	Edtech	E-learning	1
108	CleverTap	SaaS	Mobile analytics and marketing	4
109	My Healthcare	E-commerce	Software Solutions	31
110	KrazyBee	E-commerce	Lending Platform	1
111	Shuttl	Transportation	Bus Aggregation	18
112	Increff	Technology	Supply-chain technology solutions	1
113	FleetX	AI	Logistics	2
114	Zilingo	Ecommerce	Fashion & Apparel	32
115	NanoClean Global	Nanotechnology	Anti-Pollution	3
116	OyoRooms	Hospitality	Budget Rooms	2
117	CarDekho	Automobile	Online Marketplace	33
118	Vyome Therapeutics Inc.	Health and Wellness	Specialty pharmaceutical	34
119	Samunnati Financial Intermediation & Services Pvt. Ltd	Finance	Non-banking financial company	5
120	Manch	Social Media	Hyperlocal Content	12
121	UrbanClap Technologies Pvt. Ltd	Services Platform	Home services marketplace	3
122	Guiddoo	Travel Tech	Platform for travel agents	4
123	Career Anna	Online Education	Video-based certification, trainings	18
124	Nagpur Wholesale	Online Marketplace	eCommerce	35
125	ShopKirana	B2B	eCommerce	36
126	BuildSupply	SaaS, Ecommerce	Real Estate, ERP	18
127	GoDesi	Food and Beverage	Regional Flavours	1
128	Veritas Finance Ltd.	NBFC	MSME Finance	5
129	Meesho	Ecommerce	Social Commerce	1
130	Mobile Premier League	Gaming	Mobile e-Sports	1
131	A&R Bon Vivants	Food	Meat Retail Chain	33
132	Blackbuck	Food Tech	POS For Online Ordering	37
133	MilkBAsket	Food	Micro-delivery grocery service	3
134	DriveU	Transport	On-Demand Drivers	1
135	CleanseCar	Services	Car Wash	1
136	Automation Anywhere	Automation	Robotics	38
137	HealthifyMe	Health and Wellness	Wellness Coach	1
138	Genius Corner	Education	Personalized Learning	7
139	Aavishkaar-Intellecap Group	Investment	SME Funding	4
140	Skillbox	Social Network	Art	18
141	Signzy	Financial Tech	Digital Onboarding Solution	29
142	Engineer.ai	Software	AI Platform	34
143	InCred Finance	Finance	SME Lending	39
144	Roposo	Social Media	Video Sharing	12
145	Northmist	Fashion	Mens Wear	12
146	Origo Commodities India Pvt. Ltd	Logistics	Supply Chain	15
147	Grover Zampa	Food	Wine	4
148	Droom	Automobile	New and Used Cars Platform	2
149	Innov8	Real Estate	Co-Working	3
150	Blackbuck	Logistics Tech	Largest Trucking Platform	1
151	LetsTransport	Logistics Tech	Book Trucks Online	1
152	Netmeds	Consumer Internet	Online Pharmacy Chain	5
153	Udaan	B2B Platform	Logistics and Shipping	1
154	Daily hunt	Consumer Internet	News and ebooks Mobile App\\\\xc2\\\\xa0	1
155	3HCare	Healthcare	Healthcare Service Provider	12
156	HappyGoEasy	Consumer Internet	Online Travel Agecy	18
157	Nykaa	Consumer Internet	Online Marketplace For Multi-brand Beauty Cosmetic and Wellness Products	4
158	Mad Street Den	Technology	Computer Vision And Artificial Intelligence (Ai) Platform	5
159	Dream11	Consumer Internet	Online Gaming Platform	4
160	MamaEarth	Healthcare	Online Marketplace For Mother and Babycare Products	18
161	AutoGrid	Technology	AI-Based Energy Optimisation and Control Provider	1
162	Pharmeasy	Consumer Internet	Online Marketplace For Pharmaceutical Products	4
163	Upwards	Fin-Tech	Online Micro Lending Marketplace	4
164	Kissht	Fin-Tech	Online lending Platform	4
165	dishq	Food-Tech	Personalisation Technology Firm Focusing On The Food And Beverage Industry	1
166	HealthFin	Finance	Patient Financing Platform	6
167	Samosa Labs	Consumer Internet	Social Media and Chat Entertainment Platform	15
168	ZiffyHomes	Consumer Internet	Online Home Rental Marketplace	18
169	My OmNamo	Consumer Internet	Holy Platform Offering Customised Puja Packages To Individuals and Corporates	4
170	ShopX	Consumer Internet	Assisted E-commerce Platform	1
171	MakeMyTrip	Consumer Internet	Online Travel Aggregator	18
172	Hansel io	Consumer Internet	Real-time Mobile App Management	1
173	Metro Bikes	Consumer Internet	Online Bike Rental Marketplace	1
174	Phone Pe	Consumer Internet	UPI Payments App	1
175	quizizz	Ed-Tech	e-learning Platform	1
176	Happy EMI	Fin-Tech	Consumer Financing Platform	1
177	Inthree	Consumer Internet	Rural E-commerce Platform	5
178	Observe AI	Technology	AI Based Solutions Platform	1
179	Enakshi	Consumer Internet	AI Based Solutions Platform	40
180	EazyDiner	Consumer Internet	Online Restaurant Table Reservation Platform	18
181	Finzy	Finance	Online Loan Matchmaking Platform	1
182	RawPressery	Consumer Internet	Online Organic Juice Delivery Service	4
183	Pi Ventures	Technology	Applied Artificial Intelligence and IoT focused\\\\xc2\\\\xa0Platform	1
184	Revv	Consumer Internet	Online Indian Car Rental Platform	18
185	ZestMoney	Consumer Internet	Online Lending Platform	1
186	Shubh Loans	Fin-Tech	\\\\xc2\\\\xa0Customer Sourcing Platform\\\\xc2\\\\xa0	1
187	MyUpchar	Healthcare	Local Language Health Content App	12
188	Narvar	IT	Post-Purchase Customer Engagement Platform\\\\xc2\\\\xa0	1
189	True North	Finance	Private Equity Firm	4
190	Leena AI	Technology	HR Virtual Agent For Employees	18
191	Biryani By Kilo	Consumer Internet	Online Food Delivery	18
192	Anchanto	IT	E-commerce Fulfilment Platform	6
193	Loan Tap	Consumer Internet	Online Lending Platform For Salaried Professionals	4
194	PolicyBazaar	Consumer Internet	Online Insurance Selling Platform	18
195	zippserv	Consumer Internet	Online Platform For Risk-Assessment Services For Real Estate Investments	1
196	Groww	Consumer Internet	Online Platform That Sells Direct Plans Of Mutual Funds	1
197	Avenue Growth	Consumer Internet	Online Platform That Connects Brands With Freelance Sales Professionals	18
198	iNICU	Healthcare	Med-tech Platform Providing Care For Newborns	12
199	Kinara Capital	Finance	Lending Platform For Micro and Small Enterprises	1
200	Shop 101	Consumer Internet	Mobile Storefront And Commerce Platform For Sellers	4
201	Sambandh	Consumer Internet	Online Micro Lending Platform	41
202	19th mile	IT	Artificial intelligence-based sales acceleration software platform	18
203	5th Vital	Healthcare	Home diagnostics services provider	1
204	MEngage	Healthcare	A Doctor-Patient Engagement Platform	33
205	Ofbusiness	Finance	Online Lending Platform For SME	18
206	Cars24	Consumer Internet	Online Used Car Marketplace	18
207	The Ken	Consumer Internet	Subscription-Only News Website	1
208	Book My Show	Consumer Internet	Online Ticketing Platform	4
209	HousingMan	Consumer Internet	Property Discovery Platform	1
210	PaySense	Consumer Internet	Online Consumer Lending Platform	4
211	Yulu Bikes	Technology	Bicycle-Sharing Platform	1
212	VTION	Technology	Media Analytics	18
213	Log9 Materials	Technology	Nanotechnology Company Specializing In Graphene	1
214	kidovators	Ed-Tech	Skill Learning Platform	1
215	Digit	Consumer Internet	Online Insurance Startup	6
216	Black Soil	Finance	Non-Banking Financial Company	4
217	Trell	Consumer Internet	Mobile-First Video Blogging App	1
218	iqlect	Technology	Data Analytics Firm	1
219	Entropik	IT	Software-As-A-Service Platform	1
220	Bitla Software	Technology	Travel-Focused Tech Startup	1
221	TheCapitalNet	Fin-Tech	Unified Global Investments Ecosystem	15
222	Shuttl	Consumer Internet	Bus Aggregation Platform	18
223	Cure Fit	Consumer Internet	Health and fitness Platform	1
224	Five Star Group	Fin-Tech	Non-Bank Lending Platform For SME	5
225	Healthsignz	Healthcare	Health and Well being Platform	15
226	CoinTribe	Finance	Credit-Based Lending Marketplace For Small And Medium Enterprises	18
227	Digiconectt	Technology	Sales Analytics and Enablement Platform	1
228	Kashmir Box	E-Commerce	Online Marketplace For Handicrafts, Handlooms And Local Produce	42
229	Crowdera	Finance	Online Crowdfunding Platform	35
230	Zoctr	Healthcare	Online Healthcare Aggregator	4
231	Annapurna Finance	Finance	Non-Banking Financial Company	43
232	Meesho	Consumer Internet	Online Marketplace For Resellers	1
233	AyeFinance	Finance	Online Lending Platform	18
234	Theranosis	Healthcare	Specialised diagnostics Platform	15
235	Alpha Capital	Finance	Supplychain Finance	4
236	eshakti	E-Commerce	Fashion e-tailer	5
237	Daily Ninja	Consumer Internet	Hyperlocal Delivery Platform	1
238	NirogStreet	Healthcare	An Online Platform That Connects Ayurveda Doctors With Patients	18
239	Nivesh	Finance	Mass Market Mutual Fund Investment Platform	7
240	What\\\\xe2\\\\x80\\\\x99s Up Life	Consumer Internet	A Local Discovery App For Dining-Out, Party, Leisure and Events	18
241	HomeLane	Consumer Internet	Online Home Furnishing Solutions	1
242	Network Intelligence	Technology	Cybersecurity Specialist	4
243	Tynor Othontics	Healthcare	Prosthetics Manufacturers	44
244	Elucidata	IT	Data Analytics (SaaS)	45
245	Chrysalis	Ed-Tech	Education Services Provider	6
246	RentSher	Consumer Internet	Online Rental Marketplace	1
247	Drip capital	Finance	Trade Finance Firm	4
248	WickedRide	Consumer Internet	Online Motorbike And Scooter Rental Platforms	1
249	PolicyBazaar	Consumer Internet	Online Insurance Selling Platform	18
250	HipBar	Consumer Internet	Digital Payment Platform For Beverage Delivery	1
251	Sqqrl	Finance	App-based investment platform	18
252	Paytm	Technology	Digital Payment Platform	7
253	Sigtuple	Healthcare	Data Driven Intelligence Solutions Platform	1
254	Wow Express	Technology	E-commerce Logistics Platform	4
255	Front Desk AI	Technology	An AI Platform Offering Automated Customer Service Software	1
256	Edureka	Ed-Tech	Online Education Platform	1
257	Numeroseven	Technology	An Artificial Intelligence-Based Recruitment Platform	46
258	OpenTap	Finance	Online Lending Platform	5
259	Bizongo	Consumer Internet	Aggregator For Packaging Material	4
260	Disprz	IT	SaaS	5
261	PaisaDukan	Consumer Internet	P2P Lending Platform	4
262	i3sysytems	Technology	AI product company For Health and Life Insurane Companies	4
263	Earth Food	Consumer Internet	Agri-tech	6
264	Nykaa	Consumer Internet	Beauty e-tailer	4
265	mfine	Healthcare	Doctor-Consultation App	1
266	Rocketium	Technology	Online Video Creation Platform	1
267	MilkBasket	Technology	Micro-Delivery Grocery Startup	18
268	Vola	Finance	Micro Lending Platform	1
269	Cashkumar	Consumer Internet	P2P Lending Platform	1
270	Edyoo	E-Commerce	Products For Shoolgoing Children	1
271	Aashiyaan	Finance	Housing Finance For Low-Income Families	47
272	Smartivity	Ed-tech	Designer Of Toys and Learning Projects For Kids	12
273	Bonphulapl	Clean-tech	Oxygen Optimiser Manufacturer	12
274	Acko	Consumer Internet	Online Insurance Platform	4
275	HWell24	Healthcare	Home Healthcare Aggregator	4
276	Toffee	Consumer Internet	Online Insurance Platform	18
277	Tonetag	Technology	Mobile Payments Technology Platform	1
278	Events High	Consumer Internet	Events and Activities Discovery Platform	1
279	Stellaps	Technology	Iot Application Platform In Agriculture	1
280	Credright	Consumer Internet	Lending Platform For SMEs	15
281	Fitternity	Consumer Internet	Online Fitness Discovey Platform	4
282	Synctag	Technology	Social Media Anlaytics Platform	48
283	Benepik	Technology	Enhanced Employee Engagement Platform	18
284	Finzy	Consumer Internet	Online Loan Matchmaking Platform	1
285	Varthana	Finance	Loans and Services To Affordable Private Schools in India	1
286	IndigoLearn	Ed-Tech	Online Education Platform	15
287	Vedantu	Ed-Tech	Interactive Online Tutoring Platform	49
288	Kaleidofin	Fiinance	Digital Financial Services Platform	5
289	Pipabella	Consumer Internet	Fashion Accessories Etailer	4
290	Elemential	Technology	Blockchain Platform	4
291	Kriger Campus	Ed-Tech	Mobile-Based Education Network	12
292	Loanzen	Finance	Digital Lending Platform In Logistics	1
293	TravelTriangle	Consumer Internet	Online Travel Marketplace	18
294	Letsmd	Healthcare	Platform To Discover Healthcare Financing Options	12
295	AyeFinance	Finance	Online Lending Platform	18
296	mintifi	Finance	Online Lending Platform	4
297	icanstay	Consumer Internet	Online Platform For Luxury Hotel Stay For Business Travelers	12
298	Pregbuddy	Healthcare	Connected Care App For Pregnant Women	1
299	Coverfox	Consumer Internet	Online Insurance Aggregator	4
300	Lenskart	Consumer Internet	Online Eyewear Retailer	8
301	mamaearth	Healthcare	Online Baby care Products	18
302	Fyle Technologies	Technology	AI Based Expense Management Platform	1
303	True Balance	Technology	Mobile Balance Checking App	18
304	Visit	Healthcare	AI Driven Health tech Platform	12
305	Doxper	Healthcare	Digitized Health-Tech Solutions For Practitioners	4
306	Nykaa	Consumer Internet	Beauty e-tailer	4
307	Mihuru	Finance	Online Platform Providing Micro Loans For Air Travel	4
308	Capital Float	Finance	Online Lending Platform	1
309	Trip shelf	Consumer Internet	Online Travel Marketplace	12
310	POPxo	Technology	Women Focussed Digital Media Platform	12
311	RailYatri	Consumer Internet	Online Travel Ticketing Platform	7
312	1mg	Consumer Internet	Online Pharmacy Store	18
313	Rubique	Consumer Internet	Online Lending MarketPlace	4
314	Samco	Consumer Internet	Online Stock Broker	4
315	MyLoanCare	Finance	B2C Online Loans Marketplace	2
316	PharmEasy	Consumer Internet	Online Pharmacy Store	4
317	Buddy4studdy	Consumer Internet	Online Scholarship Portal	7
318	Urban Ladder	E-Commerce	Online Furniture Store	1
319	Kuvera	Consumer Internet	Online Financial Planning	1
320	Gramophone	Technology	Agri-tech	36
321	Wellthy	Healthcare	Therapeutics	4
322	MedGenome	Healthcare	Genetic Screening, DNA Diagnostics Labs & Research Centers	1
323	Finova Capital	Consumer Internet	Online Lending	33
324	Hotelogix	Technology	Cloud based Online Hotel Management Software	7
325	Livehealth	Consumer Internet	Health Service Aggregator Platform	6
326	Ad2pro	Technology	Creative Design, Brand, Media and Technology Platform Solutions	5
327	Coverfox	Consumer Internet	Online Insurance Aggregator	4
328	Pepperfry	Consumer Internet	Online Furniture Shopping Store	4
329	Magicpin	Consumer Internet	Hyperlocal Discovery	18
330	HealthCare	Consumer Internet	Healthcare Aggregator	4
331	PineLabs	Technology	Digital Payment Platform	4
332	Stumagz	Consumer Internet	Online Communication and Collaboration Platform For Educational Institutions	15
333	AvailFinance	Consumer Internet	Online Lending Platform	1
334	Grofers	Consumer Internet	Online Grocery Shop	18
335	Fingerlix	Consumer Internet	Ready To cook Food Solution	4
336	Karma Healthcare	Healthcare	Technology enabled equitable healthcare for India	50
337	Zappfresh	Food & Beverages	Online Raw Meat E-tailer	18
338	CustomerSucessBox	Technology	Customer Success Software for B2B SaaS	18
339	One Labs	Consumer Internet	Consumer Technology and Artificial Intelligence Based Aggregator App	\N
340	GigIndia	Consumer Internet	Micro Jobs Provider For Students	6
341	Chargebee	Technology	Subscription Billing & Recurring Payments Software	5
342	i2i Funding	Consumer Internet	Online loan platform	7
343	Slang Labs	Technology	Voice-based assistant platform	1
344	UrbanPiper	Technology	Online ordering solution for restaurants and food chains	1
345	Cash Suvidha	Consumer Internet	Online loan platform	12
346	Roadcast	Technology	Fleet management and asset monitoring platform	12
347	Smartcoin	Finance	Micro lending company	1
348	The Print	Media	News portal	12
349	DriveU	Technology	Professional Car Drivers Hiring App	1
350	Fynd	Consumer Internet	O2O fashion ecommerce platform	4
351	BigBasket	Consumer Internet	Online Grocery & Food Store	1
352	Zomato	Food and Beverages	Food Ordering and Restaurant Discovery	18
353	Pratilipi	Publishing	E-Publishing	1
354	Asia Institute Of Medical Science	Healthcare	Super-specialty Hospital	8
355	CollegeDekho	Consumer Internet	Online platform for Higher Education Services	18
356	Foodmemories	Consumer Internet	Online Food Marketplace	52
357	Healthi	Healthcare	Preventive Health Checkup	1
1218	Koovs	eCommerce	Fashion eTailer	3
358	Swiggy	Food and Beverages	Online Food Delivery	1
359	Shape	Healthcare	Online Portal for Diet,fitness and Beauty	6
360	Icertis	Consumer Internet	Enterprise Contract Management Platform	6
361	healthifyme	Healthcare	Mobile Weight Loss Coach	1
362	MedTel	Healthcare	Virtual health clinics	53
363	Rupeek	Consumer Internet	Online Gold Loan	1
364	WebEngage	Technology	Marketing Cloud for consumer businesses	4
365	Lendingkart	Finance	Online Lending Platform	1
366	Wydr	Consumer Internet	B2B Marketplace	18
367	Cashify	E-Commerce	Online Selling	18
368	holachef	Food and Beverages	Online Food Delivery	4
369	Awaaz De	Technology	Mobile Solutions for Social Impact	54
370	IMAX Program	Ed-Tech	Individualised Progressive Learning Program	1
371	Littlemore	Ed-Tech	Online Education Platform	5
372	Toppr	Ed-Tech	Online Education Platform	4
373	Shirsa Labs	Ed-Tech	Integrated Kids Engagement Company	4
374	MoneyOnMobile	Technology	mobile payment platform	4
375	PetSutra	Consumer Internet	Online Pet Care Products	18
376	Infibeam	E-Commerce	Online Retailing	40
377	happay	Finance	Expense Management	1
378	Fincash	Finance	Fin-Tech	4
379	AyeFinance	Finance	Online Lending	18
380	Agricxlab	Agriculture	Agri-tech	4
381	Udaan	E-Commerce	B2B Marketplace	1
382	Capillary	IT	SaaS	1
383	The Healthy Billions	Healthcare	Analytics	18
384	HighRadius	Technology	Cloud-based Software	15
385	Avishkaar Box	Ed-Tech	Education	12
386	Planys Technologies	Technology	Robotic InspectionStartup	5
387	Lollypop	Technology	Digital Design	1
388	Trilyo	Technology	AI platform for hospitality industry	4
389	Gaana	Technology	Online Music Streaming	18
390	Credy	IT	SaaS	1
391	Predible Health	Healthcare	Cancer radiology	1
392	CleverTap	Technology	Mobile App Analytics	4
393	EarlySalary	Finance	Online Lending	6
394	WOTU	E-commerce	Food and Beverages	1
395	DAAKI	E-commerce	Sports Nutrition Supplement etailer	1
396	Lendingkart	Finance	Online Lending	54
397	Kinsane Entertainment Inc	Entertainment	Digital Entertainment for Children	4
398	Tapzo	Technology	Personal Assistant	1
399	Appario Retail Pvt Ltd.	E-commerce	Retail	12
400	Samunnati	Finance	Agricultural Loan	5
401	Sahajanand Medical Technologies	Technology	Medical Devices	55
402	Kuants	Technology	Algorithmic Trading	2
403	Razorpay	Technology	Payment Gateway	1
404	Streak	Technology	Algorithmic Trading	1
405	pi Ventures	Finance	Venture Capital	1
406	Newgen Software	Technology	IT	3
407	Rubix	Technology	Education	6
408	ShareChat	Technology	Social	1
409	Paperflite	Technology	IT	5
410	HungerBox	Consumer Internet	Food and Beverages	49
411	Skillate	Technology	Artificial Intellegence	1
412	OptaCredit	Finance	Alternative Lending	5
413	AEON Learning	Technology	Education	1
414	Milkbasket	E-commerce	Online Grocery	18
415	NeoGrowth Credit	Finance	Digital Lending	4
416	Rao IIT Academy	Education	Coaching Services	4
417	Aye Finance	Finance	Online Lending	18
418	Glassic	Ecommerce	Eyewear	1
419	GreyAtom	Technology	Education	4
420	Axio	Healthcare	Hemostatic Dressing Solutions	1
421	eKincare	Healthcare	Technology	15
422	The Wedding Brigade	Consumer internet	Online Services	4
423	PeeSafe	Healthcare	Hygiene	18
424	BrowserStack	Technology	Browser Testing	4
425	Scapic	Technology	Virtual Reality	1
426	MoneyOnMobile	Technology	Mobile Payment Platform	4
427	CureFit	Healthcare	Fitness	1
428	iNurture	Technology	Education Solutions	1
429	Strata Enviro	Technology	IoT based air pollution controller	4
430	Dunzo	Technology	Daily Task Management Mobile App	49
431	Tata Housing	Real Estate	Residential Project	4
432	HandyTrain	Technology	Mobile Learning Management Platform	56
433	Mobycy	Technology	Bicycle sharing Platform	2
434	Greenlight Planet	Technology	Off-grid solar products platform	4
435	Fintobox	Technology	Child Learning & Development Platform	5
436	Mswipe	Technology	Mobile point of sale services provider	4
437	The Label Life	E-Commerce	Home Decor and Online Fashion Portal	4
438	Cygnus Hospitals	Healthcare	Super speciality Hospitals	2
439	eShakti	Ecommerce	"Women\\\\'s Fashion Clothing Online Platform"	5
440	Inshorts	Technology	Mobile News Curation App	7
441	Vahdam Tea	E-Commerce	Online Platform Selling Indian Tea Globally	12
442	Logic Roots	Technology	Educational Platform to Learn Mathematics	4
443	Project Mudra	Technology	Assisting Visually Impaired to learn through Braille	1
444	Furlenco	Technology	Furniture Rental Platform	1
445	I Can Stay	Technology	Hotel Aggregator Platform	12
446	Fracktal Works	Technology	Platform based on 3D printing and Digital Manufacturing	1
447	Simility	Technology	Adaptive Fraud Intelligence Platform	15
448	Shopholix	E-Commerce	Fashion and Lifestyle Coupon Platform	2
449	MindTickle	Technology	Gamification Platform to train Sales People	6
450	Nazara Technologies	Technology	Mobile Games Development Firm	4
451	DocsApp	Technology	Mobile Application for Doctor Consultation	1
452	Capita World	Technology	Artificial Intelligence Platform to Raise Funds	4
453	Tea Box	E-Commerce	Fresh Indian Tea Selling Platform across 112 countries	1
454	Transversal Technologies	Technology	Hyperlocal Video Information Sharing Platform	1
455	Curofy	Technology	Mobile App for Network of Doctors	2
456	HomeLane	E-Commerce	Online Furniture Marketplace	1
457	WeDoSky	Technology	Provides Business Insights using Drone Imaginary	12
458	Purplle	E-Commerce	Beauty Products Online Marketplace	4
459	Cash Suvidha	E-Commerce	Online Micro-Lending Platform	12
460	Sky Met Weather	Technology	Weather Forecast Platform	7
461	Springboard	Technology	Online Courses and Mentoring from Experts	1
462	Peel Works	Technology	SaaS based Big Data Analytics Platform	4
463	9Stacks	Technology	Online Poker Platform	12
464	Your Quote	Technology	Vernacular and Video Content Platform	1
465	Spandana Sphoorty	Finance	Micro finance institution providing small ticket unsecured loans to women	15
466	Indus OS	Technology	Regional Operating System for Smartphones	4
467	EasyEcom	E-Commerce	Ecommerce enabler platform	1
468	IGP.com	E-Commerce	Online Gifting Platform	57
469	Specsmakers	E-Commerce	Online Spects Platform for Men and Women	5
470	Garage On Road	E-Commerce	Online vehicle service booking platform	7
471	Foyr.com	Technology	Realty Tech Startup solving real life Interior Designing problems	15
472	Prest Loans	Finance	Business & SME Loans provider	3
473	AadharAPI.com	Technology	Aadhaar-based API provider	6
474	FreshBoxx	ECommerce	Online Grocery Store	49
475	Vagupu	Technology	Online Tutorial Marketplace	49
476	HalaPlay	Consumer Internet	Online Fantasy Games	4
477	Kalpnik Technologies	Technology	VR based Spiritual platform	49
478	Hevo Data	Technology	Real time data analytics & reporting	49
479	Smart Karma	Technology	Financial Technology Research Platform	49
480	Leverage Edu	ECommerce	Online platform for Higher Education Services	3
481	Crayon Data	Technology	Customer Engagement Platform	3
482	DocTalk	Technology	Doctor Patient Communication platform	4
483	CoveIoT	Technology	Wearable tech and Internet of Things platform	49
484	TalentEdge	Technology	Distance Education Learning Platform	49
485	Fisdom	Finance	Mutual Fund Investment App	49
486	FarmLink	eCommerce	Online platform for Agricultural products	4
487	OpenApp	Technology	IoT based Tech Startup	49
488	NoPaperForms	Technology	Enrolment Management Platform	12
489	Tilite Technologies Pvt. Ltd	Technology	Saas based Corporate Travel Management Solution	49
490	Mobiliz AR	Technology	Augmented Reality based Tech platform	49
491	Qubole	Technology	Big Data based analytics platform	49
492	Happily Unmarried	ECommerce	Online Gifting platform	58
493	Universal Sportsbiz Pvt. Ltd	ECommerce	Celebrity fashion accessories and merchandise	4
494	Hungry Foal	Ecommerce	Healthy & Nutrition based snacks online platform	2
495	Active AI	Technology	AI based FinTech platform	49
496	Sumeru	Technology	Banking Software License Platform	49
497	ElderAid Wellness	Health Care	Social Healthcare Enterprise	49
498	Omnia Information	Technology	WiFi Analytics Platform	12
499	Josh Talks	Inspiration	Storytelling platform	2
500	Reniso	Technology	End-to-End property management for landlords living away	3
501	Kanhaiya	Inspiration	Storytelling platform	15
502	Perspectico	Technology	Placement preparation and career growth training platform	12
503	ONN Bikes	Technology	Self riding bike rental program	4
504	Rapido	Technology	Bike and Taxi pooling online platform	15
505	Heckyl	Technology	Big Data Analytics Platform	4
506	Nuvepro	Technology	Managed Cloud Environment Solutions	4
507	RedBook	Technology	AI based pharmacy drugs insights platform	4
508	Portea	Healthcare	Healthcare facilities at doorstep	49
509	Credit Mate	Technology	Vehicle loan approval platform	4
510	Epiq Capital	Finance	Tech based investor firm	4
511	MiStay	Technology	Online Hotel Reservation Platform	49
512	WittyFeed	Storytelling	Viral Content and storytelling platform	36
513	IDG Ventures	Finance	Venture Capitalist	49
514	TempGo	Technology	IoT and SaaS based transportation platform	56
515	Edelweiss	Finance	Diversified Financial	4
516	ERA	Technology	Identity management platform	4
517	Smaaash	Technology	Virtual Reality based gaming platform	4
518	Chumbak	Lifestyle	Designer-led consumer products	49
519	FR8	Technology	Online Truck aggregator platform	5
520	MobieFit	Healthcare	Health and fitness based mobile App	56
521	Stanza Living	Technology	Student accommodation platform	12
522	ChqBook	Consumer Internet	Home Loans Aggregation platform	2
523	HomeCapital	Consumer Internet	Home Loan Down payment assistance program	4
524	Ola Cabs	Consumer Internet	App based cab hailing services	49
525	Elanic	Consumer Internet	P2P platform for Fashion sales	49
526	CollPoll	Consumer Internet	Education collaboration platform	49
527	PhonePe	Consumer Internet	Digital Wallet	49
528	Little Black Book	Consumer Internet	Local Recommendations and Discoveries Platform	3
529	Oorjan	Technology	rooftop solar platform	4
530	Zefo	ECommerce	Ecommerce Portal for Used Goods	49
531	Yaantra	ECommerce	Mobile repair and Refurbishment platform	3
532	Farm Taaza	Technology	Fresh Produce SCM company	49
533	Drivezy	Consumer Internet	Self Drive car and bike rental platform	49
534	Slice Pay	Consumer Internet	Student Micro-financing platform	49
535	Agrowave	Technology	Agriculture Supply Chain management solutions	2
536	MyGubbi	eCommerce	Home Interior Designing Seller	49
537	IBSFintech	Technology	Treasury Risk Management Solution	49
538	Letsservice	Consumer Internet	Auto Service Logistics & SAAS platform	49
539	OneStepUp	Technology	Education Technology platform	3
540	ThirdWatch	Technology	AI-powered anti-fraud solutions	2
541	Parallel Dots	Technology	AI-powered deep learning solutions	2
542	Easy Diner	Consumer Internet	online restaurant reservation platform	2
543	Meesho	ECommerce	Online Reseller Network	49
544	StanPlus	Logistics	Medical Transportation Services	15
545	UCLID	Technology	Education Network for Institutions, teachers & Students	15
546	Policy Bazaar	Consumer Internet	Online insurance policy aggregator	2
547	Gapoon	Consumer Internet	home maintenance services platform	49
548	Chaayos	eCommerce	Online Chai ordering platform	2
549	KrazyBee	Consumer Internet	Micro-lending platform	49
550	Renew Buy	Consumer Internet	Online Insurance Aggregator	3
551	Fingerlix	Consumer Internet	Food Ordering Portal	49
552	Bank Bazaar	Consumer Internet	Online Financial Marketplace	5
553	Hasura	Technology	App building platform	5
554	BlackBuck	Logistics	B2B Logistics provider	49
555	LenDen Club	Consumer Internet	Online peer-to-peer lending platform	4
556	Toppr	Consumer Internet	Mobile based learning app	4
557	RAW Pressery	Food & Beverage	Cold pressed Juice maker	4
558	Cashe	Consumer Internet	app-only lending platform	4
559	Park Easy	Consumer Internet	Machine learning based parking discovery	47
560	TagBox	Technology	Cold Chain monitoring solution	49
561	FYRE	Food & Beverage	Herbal energy shot maker	4
562	ZipLoan	Consumer Internet	SME lending platform	3
563	Skillenza	Consumer Internet	Online Learning Platform	49
564	Chevon	Food & Beverage	Frozen Meat provider	4
565	PropStory	Consumer Internet	Real Estate content portal	2
566	SpotDraft	Consumer Internet	Contract Automation	2
567	Big Basket	eCommerce	Online Grocery portal	49
568	OfBusiness	Technology	B2B Finance & Fulfilment Network	2
569	Olly Credit	Technology	Credit + payment mobile app	3
570	CashFree	Technology	Payments Platform for Marketplaces and Fintechs	3
571	Ola Cabs	Consumer Internet	App based cab hailing services	49
572	GoldFarm	Food & Beverage	Agriculture Technology	48
573	NetMeds	ECommerce	Online Pharmacy	5
574	MSE	Finance	Equity Stock Exchange	4
575	Aahaa Stores	eCommece	Online B2B store for office supplies	5
576	MFine	Consumer Internet	Online Doctor Discovery platform	49
577	Canvera	Consumer Internet	Online Photography platform	4
578	PrimaryIO	Technology	Application Performance Acceleration	6
579	Shubh Loans	Consumer Internet	online lending platform	49
580	Nest Education	Technology	EduTech Platform	2
581	Lending Kart	Consumer Internet	Online Lending Platform	54
582	GoFro	Consumer Internet	Online travel booking platform	3
583	OncoStem	Healthcare	Medical Diagnostic Solutions	49
584	Power2SME	eCommerce	Buying Club for Small Businesses	2
585	Credit Vidya	Consumer Internet	Online Credit scoring platform	4
586	Tails Life	Consumer Internet	Pet care portal & mobile app	49
587	OYO Rooms	Consumer Internet	Branded budget hotels marketplace	2
588	Early Salary	Consumer Internet	Online Unsecured Lending platform	6
589	MamaEarth	eCommerce	online babycare products marketplace	2
590	Seniority	eCommerce	Ecommerce portal for senior citizens	6
591	AYE Finance	Consumer Internet	Micro Lending Platform	3
592	Farmizen	Technology	Agre-Tech Mobile app	49
593	Ecom Express	Logistics	Logistics Solutions provider	3
594	Call Health	Consumer Internet	Healthcare Services Aggregator	15
595	Sattviko	eCommerce	Health Food etailer	3
596	3HCare	Consumer Internet	Healthcare services portal	3
597	Tonbo Imaging	Technology	Imaging Technology for Armed Forces	49
598	Get My Parking	Consumer Internet	Smart Parking Enabler	3
599	WittyFeed	Technology	Content marketing platform	36
600	Glowroad	Consumer Internet	women focussed customer-to-customer reseller network	49
601	OYO Rooms	Consumer Internet	udget hotel marketplace	2
602	Unacademy	Consumer Internet	Online learning platform	4
603	Heterogenous	Technology	Telecom & IoT platform	5
604	Gurukul	Consumer Internet	co-working space provider	3
605	Smaaash	Technology	Virtual Reality gaming and entertainment platform	4
606	WheelStreet	Consumer Portal	Bike Rental Platform	49
607	Xprep	Consumer Internet	Online Tutoring Platform	3
608	The Moms Co	eCommerce	Pregnancy & Baby Care product etailer	2
609	Noticeboard	Technology	mobile-first communication platform for on-field staff,	49
610	High Radius	Technology	Integrated receivables software solutions	15
611	HWell24 Plus	Healthcare	Technology-Empowered Healthcare Solutions	4
612	SaveBC	Finance	financial services firm	59
613	Gaming Monk	Consumer Internet	E-sports platform	3
614	91SpringBoard	Consumer Internet	Co-working spaces	3
615	Homergize	eCommerce	Home Furnishing & Building material marketplace	49
616	Yatra.com	eCommerce	Online Travel Agency	2
617	Ace Turtle	Technology	Omni-channel web commerce solutions provider	49
618	Vogo	Consumer Internet	Scooter Rental Platform	49
619	Synup	Technology	SME Marketing Management Solution	49
620	Tinmen	Consumer Internet	Food Delivery platform	15
621	Cropin	Technology	Crop Technology Solutions	49
622	Rapido	Consumer Internet	Bike Aggregator Mobile App	49
2849	Eat.Shop.Love	Fashion ECommerce	\N	49
623	Sportobuddy	Consumer Internet	Sports & Sport related equipment portal	4
624	Credifiable	Consumer Internet	Online consumer lending platform	49
625	Inclov	Consumer Internet	Matchmaking app for the differently abled	2
626	Multibhashi	Consumer Internet	Language learning Mobile App	49
627	Transerve	Technology	Geospatial Technology-based SaaS solutions	4
628	Fashalot	Consumer Internet	O2O fashion discovery platform	2
629	Pitstop	Consumer Internet	Car repair and Servicing Platform	49
630	GoChoppers	Consumer Internet	Luxury Helicopter Tourism Services portal	2
631	MyUpchar	Consumer Internet	Local Language Health Information portal	3
632	Aadyah	Technology	Defense Tech & Aerospace startup	49
633	TouchKin	Technology	Predictive Care Platform	49
634	Ethinos	Technology	Digital Marketing Agency	4
635	Leverage Edu	Consumer Internet	Online platform for Higher Education Services	3
636	Zepo	Consumer Internet	DIY Ecommerce platform	4
637	Click2Clinic	Consumer Internet	healthcare service aggregator	15
638	SpeedBox	Logistics	On-Demand Logistics Service provider	4
639	Skill Connect	Consumer Internet	Recruitment Portal	33
640	Chai Point	Consumer Internet	Tea Delivery Portal & offline stores	49
641	Zoctr	Consumer Internet	Health Products & Services Aggregator	4
642	Lime Tray	Technology	Restaurant Management Solutions	3
643	CoutLoot	eCommerce	Fashion Resale Marketplace	4
644	Box My Space	Logistics	Warehouse Aggregator	4
645	Curatio	Healthcare	Skincare Speciality services	5
646	New Castle Technologies	Technology	Hospital Management Software	5
647	My Forex Eye	Consumer Internet	foreign exchange services	3
648	TruxApp	Logistics	Mobile based Logistics Service	3
649	CroFarm	Technology	Agriculture Supply Chain solutions	2
650	DoodhWala	Consumer Internet	Online milk delivery	49
651	Stayabode	Consumer Internet	Co-Living space aggregator	49
652	Flipkart	eCommerce	Online Marketplace	49
653	Moong Labs	Technology	Mobile games developer	3
654	Ola Cabs	Consumer Internet	App based cab aggregation Service	2
655	Sports Flashes	Consumer Internet	Sports Content Mobile App	3
656	Digilend	Technology	Personal Loans & EMI solutions platform	4
657	KNAB Finance	Consumer Internet	Unsecured Small Business Loans	49
658	Get Simpl	Consumer Internet	Payment Solution Mobile app	4
659	Rootefy	eCommerce	Building material online store	3
660	Uniphore	Technology	speech recognition startup	5
661	Cerebroz	Consumer Internet	E-Tech platform	60
662	Flochat	Consumer Internet	instant messaging platform	4
663	EasyGov	Consumer Internet	Govt service application portal	7
664	Milk Basket	Consumer Internet	Online Grocery platform	2
665	Dhruva	Technology	Cloud data protection and management solutions	6
666	Bombay Shaving Company	eCommerce	Men Grooming product etailer	3
667	Awign	Technology	Operations and manpower outsourcing	49
668	Indiez	Technology	Software & Mobile app development platform	49
669	Ezetap	Technology	mPOS solutions provider	49
670	Ink Monk	Consumer Internet	Online printing marketplace	5
671	Medinfi	Consumer Internet	Online Doctor Discovery Platform	49
672	Mobikon	Technology	Restaurant & Hotel CRM platform	6
673	CureFit	Consumer Internet	End to End health and wellness platform.	49
674	Doxper	Technology	Healthtech IoT platform	4
675	Fieldassist	Technology	SAAS based sales force automation services	2
676	Treebo	Consumer Internet	Budget Hotel Aggregator platform	49
677	MedGenome	Technology	Genomics Research and Diagnostics Solutions	49
678	Billion Loans	Consumer Internet	Peer to Peer Lending platform	49
679	Ecolibriumenergy	Technology	Energy management solutions provider	54
680	Droom	eCommerce	Online marketplace for automobiles	2
681	Jumbotail	eCommerce	online marketplace for food and grocery	49
682	Moglix	eCommerce	B2B marketplace for Industrial products	7
683	Timesaverz	Consumer Internet	Hyperlocal home services provider	4
684	Minjar	Technology	Cloud Solutions provider	49
685	MyCity4kids	Consumer Internet	parenting blog and kids\\\\xe2\\\\x80\\\\x99 events discovery platform	2
686	Clip App	Consumer Internet	Digital Media Video platform	49
687	Upwardly.in	Consumer Internet	MF investment platform	49
688	Autorox.co	Technology	Workshop Management Software Platform	15
689	Fabogo	Consumer Internet	Salon & Spa Aggregation & Discovery platform	6
690	Flickstree	Consumer Internet	Video Content Discovery Platform	4
691	Design Cafe	Consumer Internet	Online Interior Design platform	49
692	Innoviti	Technology	Digital payments solutions	49
693	VDeliver	Logistics	Door Step Delivery platform	15
694	Bottr.me	Technology	Chatbot creation tool	49
695	Arcatron	Technology	Next Gen Mobility device manufacturer	6
696	QwikSpec	Technology	Construction site operations and analytics platform	49
697	Chumbak	eCommerce	Designer consumer products Marketplace	49
698	Increff	Technology	Sales Solutions for Fashion Brands	49
699	Vayana	Technology	Enterprise Banking Solutions	6
700	MObiquest	Technology	Mobile Services & Solutions	7
701	Ambee	Consumer Internet	Ambulance Aggregation Services	15
702	Ideal Insurance	Consumer Internet	Online Insurance platform	47
703	Hypernova Interactive	Technology	Mobile games creator	49
704	Rentomojo	Consumer Internet	Consumer Leasing Platform	49
705	AirCTO	Consumer Internet	AI powered recruitment platform	49
706	Playablo	Technology	Gamified Learning App	49
707	Trupay	Technology	Online payments platform	2
708	Brick2Wall	eCommerce	Online Marketplace for Construction Material	2
709	FableStreet	eCommerce	Women Work wear etailer	3
710	Monsoon Fintech	Technology	Machine Learning Access platform	3
711	MonkeyBox	Consumer Internet	Healthy Food Delivery Platform	49
712	Noticeboard	Consumer Internet	Mobile-first Enterprise communication platform	49
713	Byju\\\\xe2\\\\x80\\\\x99s	Consumer Internet	Mobile Learning App	49
714	Creator\\\\xe2\\\\x80\\\\x99s Gurukul	Others	Co-Working Space Provider	3
715	Fab Hotels	Consumer Internet	Budget hotels brand & Aggregator Platform	3
716	ThinkerBell	Consumer Internet	Assisted Learning Startup	49
717	1mg	eCommerce	Online Pharmacy	2
718	Jhakaas	Consumer Internet	App-based Aggregator of Offline Businesses	4
719	BigStylist	Consumer Internet	Beauty Services Marketplace	4
720	Gympik.com	Consumer Internet	online marketplace for discovering fitness centres	49
721	Tripeur	Technology	Mobile based travel ERP platform	49
722	RentOnGo	eCommerce	Online Marketplace for Renting Bikes, Electronics & Appliances	49
723	Goomo	Consumer Internet	Online Travel & Holiday Booking platform	4
724	MaxMyWealth	Consumer Internet	Online Wealth Management & Savings platform	4
725	Spinny	eCommerce	Online Used Car marketplace	2
726	Healthbuds	Consumer Internet	Healthcare Discovery & booking platform	47
727	Ftcash	Consumer Internet	Mobile Payments platform	4
728	BHIVE Workspace	Consumer Internet	co-working spaces	49
729	wayForward	Consumer Internet	Mobile app for Mental Health	3
730	GyanDhan	Consumer Internet	Education Marketplace	3
731	Hungry Foal	Consumer Internet	For profit Social Venture	2
732	ZipLoan	Consumer Internet	Online lending platform	3
733	GrowFitter	Consumer Internet	health and fitness discovery platform	4
734	Stratfit	Consumer Internet	Health coaching programs	15
735	Multiplier Solutions	Technology	CRM Software for Healthcare space	15
736	ABI Health	Technology	Unified Digital Health Platform	49
737	Stockal	Consumer Internet	App-based Investment advisory Services	49
738	Guidoo	Consumer Internet	Travel & adventure planning platform	4
739	eSahai.in	Consumer Internet	ambulance aggregator and medical taxi provider	15
740	Loanmeet	Consumer Internet	Online peer-to-peer lending platform	49
741	LendingKart	Consumer Internet	Online Lending platform	54
742	Boxx.ai	Technology	Artificial Intelligence	49
743	PeeSafe.in	Healthcare	Hygiene care product manufacturer	3
744	Vista Rooms	Consumer Internet	Online rooms aggregation platform	4
745	CoverFox	Consumer Internet	Online insurance brokerage platform	4
746	HyperTrack	Technology	Location tracking solutions	3
747	Goodera	Technology	CSR and sustainability management platform	49
748	Digit	Technology	Tech driven Insurance platform	49
749	Ola	Consumer Internet	Cab Aggregation App	49
750	Vanitycask	Consumer Internet	Beauty products discovery platform	4
751	MrNeeds	Consumer Internet	Micro Food Delivery platform	7
752	MoneyTap	Consumer Internet	Money Lending platform	49
753	Goodbox	eCommerce	Mobile SAAS\\\\xc2\\\\xa0 ECommerce platform for SMEs	49
754	Fincash	Consumer Internet	Personal Finance platform	4
755	PortDesk	Technology	Maritime Solutions	7
756	EdgeFx	eCommerce	DIY project Kits seller	15
757	EazyDiner	Consumer Internet	Online Restaurant Reservation Platform	2
758	HealthIntel	Healthcare	Online Pharmacy	3
759	Unbxd	Technology	Cloud-based product discovery platform	49
760	DarwinBox	Technology	Enterprise human resources management platform	15
761	ForeverShop	Consumer Internet	Mobile based ecommerce platform	49
762	Insider.in	Consumer Internet	Events Ticketing platform	4
763	Fynd	eCommerce	Fashion etailer	4
764	Grow Fit	Consumer Internet	Health-Tech platform	49
765	Fabulyst	Technology	Artificial Intelligence based platform	15
766	mSwipe	Technology	Point-of-Sale services	4
767	OneAssist	Consumer Internet	Credit card fraud protection	4
768	Julia Computing	Technology	Open Source Language for Data Science and Machine Learning	49
769	Kissht	Consumer Internet	Consumer Lending platform	4
770	Explore Life traveling	Consumer Internet	Local homes booking platform	49
771	Loantap	Consumer Internet	Lending platform for salaried professionals	4
772	Voxweb	Consumer Internet	Mobile based social networking platform	4
773	HUG Innovations	Technology	Gesture based\\\\xc2\\\\xa0 Smartwatch manufacturer	15
774	Flipkart	eCommerce	Online marketplace	49
775	V Resorts	Consumer Internet	Holiday & Vacation resort aggregator	7
776	Stashfin	Consumer Internet	Personal Finance App	3
777	Formcept	Consumer Internet	Unified Data Analysis platform	49
778	Spares Hub	eCommerce	Automobile parts marketplace	6
779	FiTraQ	Consumer Internet	Fitness Centre Discovery Platform	3
780	Rubique	Consumer Internet	Online Marketplace for financial products	4
781	Niki.ai	Consumer Internet	AI Based Personal Assistant	49
782	Fitpass	Consumer Internet	Online Fitness Marketplace	3
783	ZingHR	Technology	digital employee solutions,	4
784	Tagos Design	Technology	in-video discovery platform	49
785	UrbanClap	Consumer Internet	Mobile Services Marketplace	2
786	Ace2three	Consumer Internet	Online Rummy playing Website	15
787	Power2SME	eCommerce	Buying portal for SMEs	2
788	Innovapptive	Technology	Enterprise Mobility Solutions	15
789	4tigo	Logistics	Truck Network company	49
790	SMECorner	Consumer Internet	Online Platform for small business loans	4
791	ZippServe	Consumer Internet	Real estate risk assessment platform	49
792	Ola	Consumer Internet	Cab Aggregation App	49
793	Sumeru	Technology	Software & Mobile development services	49
794	Healthians	Consumer Internet	Online Diagnostics and wellness platform	3
795	HealthMir	Consumer Internet	AI-based health content platform	3
796	Uactive	Consumer Internet	Health-based social networking & discovery App	4
797	i-lend	Consumer Internet	Peer-to-peer lending platform	15
798	Good Methods Global	Technology	Cloud Based Practice Management Software	61
799	Balance App	Consumer Internet	Money Savings & Management App	49
800	YepMe	eCommerce	Private Label Fashion etailer	2
801	Nightstay	Consumer Internet	Last minute hotel booking mobile app	3
802	Devourin	Technology	Restaurant Automation Solution	6
803	MyGreens	Food & Beverage	Cold-press Juices manufacturer	3
804	Ace Turtle	Technology	Omni-Channel Platform	49
805	CureFit	Technology	Health-Tech Platform	49
806	Curie Labs	Technology	Energy Analytics startup	3
807	Uncanny Vision	Technology	Computer Vision on Embedded Systems	49
808	Anchanto	Technology	Ecommerce Fulfilment and Technology Platform	6
809	Sequretek	Technology	IT Security & Data Management Services	4
810	Lucideus	Technology	Cyber Security Startup	3
811	Vidooly	Consumer Internet	Video Intelligence platform	7
812	Shopclues	eCommerce	Online marketplace	2
813	Fourth Ambit	Consumer Internet	Community Building platform	49
814	Chymera VR	Technology	Advertising Platform for Virtual Reality	49
815	Early Salary	Consumer Internet	Online lending platform	6
816	Book My Diamond	eCommerce	Diamond B2B eTailer	4
817	ION Energy	Technology	Clean Tech Startup	4
818	Legal Raasta	Consumer Internet	Legal Services to SMEs & Individuals	3
819	Log 9 Materials	Technology	NanoTech product developer	49
820	Remit Guru	Consumer Internet	Digital money transfer platform	4
821	Aequm	eCommerce	Cloud ECommerce platform	49
822	Zapty	Technology	Project Management tool	49
823	Vernacular.ai	Technology	Multi-lingual AI Platform for Businesses	49
824	Niki.ai	Technology	AI-based chatbot	49
825	Telr	Technology	Online Payment Gateway	4
826	Fynd	eCommerce	Fashion ECommerce Portal	4
827	Genie	Consumer Internet	hyperlocal delivery and logistics mobile app	5
828	Paysense	Consumer Internet	Online Lending platform	4
829	The Good Life	ECommerce	Online Luxury Tea etailer	4
830	PumpKart	eCommerce	Online Water Pumps etailer	44
831	Paytm	ECommerce	Mobile Wallet & ECommerce platform	49
832	EzCred	Consumer Internet	Consumer Lending Platform	49
833	HealthSutra	Food & Beverage	Health Food Maker	15
834	YepMe	eCommerce	Private Fashion Brand etailer	3
835	Delhivery	Logistics	ECommerce Logistics provider	3
836	ZipGrid	Consumer Internet	Cashless, paperless solutions for Housing societies	4
837	TravelSpice	ECommerce	Travel ECommerce portal	15
838	Magicpin	Consumer Internet	Hyperlocal discovery platform	2
839	The Print	Consumer Internet	News Portal	3
840	Box8	Consumer Internet	Food Delivery Platform	4
841	GenNext Students	Consumer Internet	Online Tutoring Services	4
842	Aye Finance	Finance	Non-Banking Financial Company	2
843	WhatsLoan	Consumer Internet	Online Lending mobile app	49
844	Cube Consumer Services	Consumer Internet	Finance management Mobile app	4
845	Nivesh	Consumer Internet	Online MF investment platform	7
846	Wowflux	Technology	image Processing solution	3
847	Collateral Medical	eCommerce	Online Medical equipment supplier	4
848	Loadshare	Logistics	Express Logistics Network	49
849	SimpliLend	Consumer Internet	Online lending platform	3
850	Supr Daily	Consumer Internet	Subscription based delivery platform	4
851	Swiggy	Consumer Internet	Online food delivery platform	49
852	SastaSundar	eCommerce	Online Pharmacy	47
853	Magicpin	Consumer Internet	Hyperlocal Discovery\\\\xc2\\\\xa0 & Rewards platform	2
854	Cashe	Consumer Internet	Online & Mobile based Lending platform	4
855	Eruditus	Education	Executive Education Provider	4
856	TestBook	Consumer Internet	Online Test Preparation Platform	4
857	Healthcare at Home	Healthcare	Home Healthcare Provider	7
858	Tyre Express	Technology	Enterprise IoT solutions For Tyre Performance	4
859	SmartCoin	Consumer Internet	Micro Lending platform	49
860	WayCool	Food & Beverage	Fresh-Produce Distribution Platform	5
861	Perfios	Technology	Fin-Tech Solutions	49
862	Whatfix	Technology	Interactive Tech-Support Guides	49
863	ElastiRun	Technology	App based Logistics & Distribution platform	6
864	Trukky	Consumer Internet	Online Truck Aggregator & Booking platform	54
865	Konsult App	Consumer Internet	App based Doctor Consulting platform	3
866	Credit Sudhaar	Consumer Internet	Credit Score Improvement platform	4
867	Fingerlix	Consumer Internet	Food Delivery Platform	4
868	DataWeave	Technology	Business Intelligence Solutions	49
869	Medwell Ventures	Healthcare	Home-Based Healthcare provider	49
870	Mech Mocha	Consumer Internet	Mobile gaming startup	49
871	Startup Buddy	Consumer Internet	Startup Support Platform	2
872	QorQI	Healthcare	Online Healthcare provider	7
873	Twenty Two Motors	Technology	Smart Scooter manufacturer	2
874	PharmEasy	eCommerce	Online Pharmacy	4
875	WonderChef	eCommerce	Online marketplace for kitchen products	4
876	FastFox	Consumer Internet	Online rental discovery platform	2
877	Omnify	Technology	SaaS platform for SMEs	49
878	Capital Float	Consumer Internet	Online Lending Platform for SME	49
879	Ninjacart	eCommerce	B2B agri-marketing platform	49
880	MergerWare	Technology	Software solutions for M&As	49
881	Sports Flashes	Consumer Internet	Online Sports portal & Mobile app	3
882	Clovia	eCommerce	Online lingerie & Sleepwear etailer	3
883	Emiza	Logistics	Third Party Logistics provider	4
884	HackerEarth	Consumer Internet	Online Skill Assessment Platform	49
885	Squadrun	Technology	Software-As-a-Service Platform	7
886	Tinmen	Consumer Internet	Food Delivery Platform	15
887	ScoutMyTrip	Consumer Internet	Online Travel planner	4
888	SafetyKart	eCommerce	Safety & Hygiene Products etailer	2
889	WeAreHolidays	Consumer Internet	Travel Packages & Planner marketplace	2
890	Ola Cabs	Consumer Internet	Cab Aggregator App	49
891	Myly	Consumer Internet	Mobile App for Schools	33
892	CrediHealth	Consumer Internet	Online Medical Assistance platform	2
893	Navia Life Care	Technology	Health Technology platform	3
894	Raw Pressery	Food & Beverages	Raw Pressed Juices manufacturer	4
895	Snackible	Food & Beverages	Healthy Snacks manufacturer	4
896	Be U Salons	Consumer Internet	Online Salon discovery & Booking Services	3
897	Simulanis	Consumer Internet	eLearning & Skills Development plat	3
898	LendingKart	Consumer Internet	Lending platform for small businesses	54
899	Innefu Security Consulting	Technology	Cyber Security solutions using AI	3
900	Whodat	Technology	Markerless AR platform	49
901	Absentia VR	Technology	Virtual Reality Startup	49
902	IOTrek	Technology	IoT Platform for Bus	3
903	HolaChef	Consumer Internet	Online Food Delivery	4
904	Wooplr	eCommerce	Social Commerce\\\\xc2\\\\xa0 Fashion platform	49
905	Video Ken	Consumer Internet	Video Based Collaborative Learning	49
906	Faasos	Food & Beverage	QSR chain and online food delivery	6
907	Oyo Rooms	Consumer Internet	Branded Budget Hotels Aggregator	2
908	Toppr	Consumer Internet	Learning mobile app for students	4
909	Niramai	Healthcare	Breast Cancer Screening Solutions	49
910	The Office Pass	Consumer Internet	CoWorking Spaces booking platform	2
911	UrbanClap	Consumer Internet	Mobile Services Marketplace	2
912	Awfis	Consumer Internet	Collaborative co-Working Spaces	4
913	Myra	Consumer Internet	Online Pharmacy	49
914	Flytxt	Technology	Customer data analytics software	4
915	Howdy Ventures	Consumer Internet	Public and Private Events creation app	5
916	StalkBuyLove	eCommerce	Online fashion marketplace	3
917	ZipGo	Consumer Internet	Bus Pooling services platform	49
918	Scootsy	Consumer Internet	On-Demand Food Delivery	4
919	Autobix	Technology	Software Solutions for Auto Dealership	6
920	eShiksha	Technology	Education Institution Management Solutions	33
921	iNurture	Consumer Internet	Online Educational courses	49
922	Sepalika	Consumer Internet	Healthcare related content platform	3
923	Mintwalk	Consumer Internet	Financial advisory mobile app	4
924	Qriyo	Consumer Internet	Tutor Discovery & Booking platform	33
925	Ola	Consumer Internet	App based cab aggregator	49
926	Belong	Consumer Internet	Online Jon Portal	49
927	Seenit	Consumer Internet	AI based Fashion Search Portal	47
928	Paalak	ECommerce	Fresh Produce Selling portal	3
929	Celes Care	Consumer Internet	Women Healthcare & Information portal	15
930	Karomi	Technology	Packaging Artwork Management software	5
931	Red Carpet	Consumer Internet	Micro Lending platform	2
932	Kreate Konnect	Technology	End-to-End Seller e-commerce solutions Provider	60
933	CreditMantri	Consumer Internet	Online Credit score & lending platform	5
934	Lets Endorse	Consumer Internet	Online Ecosystem of social innovators	49
935	Tydy	Technology	Employee Onboarding and Engagement platform	49
936	Nactus	Consumer Internet	Professional Tutors discovery & booking mobile app	33
937	Oho Shop	Technology	eCommerce Mobile App Builder	54
938	Emojifi	Consumer Internet	Mobile App for live emoji	15
939	Paytm Marketplace	ECommerce	ECommerce Marketplace	49
940	iGenetics	Healthcare	Health Diagnostic Solutions	4
941	Juno Clinic	Consumer Internet	Online Counseling Platform	4
942	Summerlabel	Consumer Internet	Fashion and Lifestyle discovery platform	2
943	PickMe	Consumer Internet	Gadget Insurance & Repair Services platform	4
944	Agrostar	Technology	Direct-to-Farmer Mobile-Based Retail platform	6
945	Zapr	Technology	DSP, TV Analytics & Cross-Platform advertising	49
946	Data Resolve	Technology	Cyber Security Solutions	7
947	Book Servicing	Consumer Internet	Online Vehicle Services Booking platform	3
948	Blowhorn	Consumer Internet	Intra-City Logistics provider	49
949	Rivigo	Logistics	Technology Enabled Logistics Company	2
950	PipeCandy	Technology	Intelligent Sales Prospecting Platform	5
951	Supr Daily	Consumer Internet	Subscription based Home Delivery Platform	4
952	Parentune	Consumer Internet	Online Community for Parents	2
953	AppBrowzer	Consumer Internet	Instant Mobile Apps Store	49
954	MagicBricks	Consumer Internet	Online Real Estate Portal	4
955	PeeBuddy	Healthcare	Female Hygiene product manufacturer	3
956	iOrderFresh	ECommerce	Online fresh fruits and grocery store	3
957	Lavelle Networks	Technology	SDN Solutions	49
958	PropertyShare	Consumer Internet	Fractional Proerty Ownership & Rental platform	49
959	MyDermacy	Consumer Internet	Online Dermatology consultation platform	3
960	LatestOne	eCommerce	Tech Accessories e-tailer	15
961	Frapperz	Consumer Internet	On-demand home services provider	47
962	mPaani	Consumer Internet	Loyalty rewards app	4
963	ShilpMIS	Technology	Virtual Reality platform	55
964	POPxo	Consumer Internet	Digital Media publication for women	3
965	Fitso	Consumer Internet	Fitness Mobile App	2
966	FarMart	Technology	Farming rental equipment provider	2
967	Flipkart	eCommerce	ECommerce Marketplace	49
968	Airpay	Technology	Online payment Gateway	4
969	MyGlamm	Consumer Internet	On-Demand Beauty Services	4
970	The Mons Co.	eCommerce	Pregnancy & Baby Care etailer	3
971	Haqdarshak	Consumer Internet	Tech-Enabled Social Enterprise	49
972	Ixigo	Consumer Internet	Online Travel Search Engine	2
973	Markets and Markets	Technology	Marketing Research Company	6
974	Bizom	Technology	supply chain automation platform	49
975	BabyonBoard	Consumer Internet	Parenting Mobile App	49
976	Delhivery	Technology	Tech enabled Fulfilment & Logistics Solutions	3
977	Sport Flashes	Consumer Internet	Sports Based Online Media portal	3
978	Fynd	ECommerce	Online fashion marketplace	4
979	Wigzo	Technology	Enterprise Automation suite	3
980	DoneThing	Consumer Internet	On-demand Personal Assistant service	2
981	Zapyle	ECommerce	Luxury Fashion Marketplace	49
982	Ithaka	Consumer Internet	Vacation Trip Planning platform	4
983	perpule	eCommerce	Self-Checkout ECommerce App	49
984	Byju\\\\xe2\\\\x80\\\\x99s	Consumer Internet	Online Education Platform	49
985	Licious	ECommerce	Online Meat Ordering platform	49
986	Medinfi	Consumer Internet	Doctor & Hospital search Platform	49
987	Indus OS	Technology	Mobile OS creator	4
988	Emflux Motors	Technology	Electric Motorcycle manufacturer	49
989	Klinic App	Consumer Internet	Pathology & Diagnostic Tests Portal	2
990	Jhakaas	Consumer Internet	Offline Business Aggregator App	4
991	Oriano Solar	Technology	Turnkey Solar Solutions	4
992	BigBasket	ECommerce	Online Grocer	49
993	Rooter	Consumer Internet	Sports engagement platform	3
994	FalconBrick	Technology	Real-Estate Workflow mobile app	49
995	Icertis	Technology	ERP solutions provider	6
996	Clodura	Technology	Intelligent Sales Assistant	6
997	Stockroom.io	Consumer Internet	Curated Platform for Developers	15
998	Capital Float	Consumer Internet	Online lending platform	49
999	iManageMyHotel	Technology	Hotel Management Solution	47
1000	Inner Hour	Consumer Internet	Online Counselling Platform	4
1001	Travel Triangle	Consumer Internet	Online travel agent marketplace	7
1002	Wandertrails	Consumer Internet	Online Travel, Adventure & Activities Portal	49
1003	Zenatix	Technology	IoT Based Energy Monitoring & Control	2
1004	Cartrade	Consumer Internet	Automobile Classifieds Portal	4
1005	MindYourFleet	Technology	Car Rental Software Solutions	7
1006	Edurev	Consumer Internet	Online Education Portal	2
1007	Voonik	ECommerce	Women Apparel & Lifestyle etailer	49
1008	1Crowd	Finance	Startup Crowd-funding platform	4
1009	Wooplr	ECommerce	Women Fashion Portal	49
1010	48East	ECommerce	Online Food Delivery Platform	49
1011	Redesyn	Consumer Internet	Tech Enabler for Artists	4
1012	Sigtuple	Technology	Medical Automation platform	49
1013	Flutura	Technology	Decision Sciences Analytics Solutions	49
1014	Wassup	Consumer Internet	On Demand Laundry & Dry Cleaning Services	5
1015	Better Mortgage	Consumer Internet	Mortgage Offering Platform	2
1016	Nurturey	Consumer Internet	Parenting Mobile App	3
1017	Fyle	Technology	Expense Management Solution	49
1018	GoBumpr	Consumer Internet	Online Bike & Car Services provider	5
1019	CCAvenue	Consumer Internet	Online Payment Gateway	4
1020	Connaizen	Technology	Data Analytics platform	3
1021	Innov8	Consumer Internet	Co-Working Space Platform	3
1022	ZestMoney	Consumer Internet	Online Consumer Lending platform	49
1023	AirZaar	Technology	Drone operations management platform	62
1024	Truebil	Consumer Internet	Online Marketplace for Used Cars	4
1025	YourStory	Consumer Internet	Online Media	49
1026	Imaginate	Technology	AR & VR platform	15
1027	The Ken	Consumer Internet	Online Media Platform	49
1028	Urban Ladder	ECommerce	Online Furniture Store	49
1029	Aisle	Consumer Internet	Online match-making app	49
1030	TownScript	Consumer Internet	DIY event registration and ticketing portal	6
1031	Leopetra	eCommerce	Solution provider for pet needs	4
1032	Blood n Care	Consumer Internet	First Aid care app	2
1033	Flipkart	eCommerce	Online Marketplace	49
1034	True Balance	Consumer Internet	Mobile balance Checking App	2
1035	Vebbler	Consumer Internet	Photo Sharing for Groups	49
1036	Get My Parking	Consumer Internet	Smart Parking Platform	3
1037	Lets Reap	Consumer Internet	B2B Mobile App for Pharmacies	4
1038	Oglas	Consumer Internet	Mobile Advertising App	7
1039	Staydobe	Consumer Internet	Co-Living Spaces Aggregator	49
1040	Biryani By Kilo	Consumer Internet	Online Food Ordering & Delivery Portal	2
1041	Johari Shop	ECommerce	Online Jewellery etailer	49
1042	NeoStencil	Consumer Internet	Live Online Coaching Classes	3
1043	Blackbuck	Logistics	Online freight aggregator	49
1044	TaxSutra	Consumer Internet	Online Tax Filing platform	6
1045	TempoGo	Technology	IoT & SAAS Solutions for Transportation Industry	63
1046	GoFynd	ecommerce	Fashion ecommerce portal	4
1047	Vow Car Clinic	Consumer Internet	Online/App Based Car cleaning service provider	2
1048	LearnTron	Technology	Blended Learning Delivery App for Schools & Corporates	5
1049	MobiDent	Consumer Internet	Dentist Appointments booking platform	49
1050	Yostra	Technology	Healthcare Technology Solutions	49
1051	Leap India	Logistics	Supply Chain Solutions Provider	4
1052	FreeCharge	Consumer Internet	Mobile Wallet	4
1053	TicketNew	Consumer Internet	Movie Ticket Booking platform	5
1054	Intelligence Node	Technology	SAAS Based Retail Analytics Solutions	4
1055	Securens	Technology	e-surveillance services provider	4
1056	Loan Frame	Consumer Internet	Small Business Loans Marketplace platform	2
1057	DriveSkool	Consumer Internet	online marketplace for driving schools	49
1058	Medinfi	Consumer Internet	Doctor & Clinic Discovery portal	49
1059	LensKart	eCommerce	Online eyewear retailer	49
1060	InstaOffice	Consumer Internet	CoWorking Spaces booking platform	2
1061	Hansel.io	Consumer Internet	Real-time Mobile App Management Platform	49
1062	Square Yards	Consumer Internet	Property Search Aggregator platform	2
1063	Roambee	Technology	IoT smart Logistics and Asset Management Company	4
1064	PaisaWapas	Consumer Internet	Cashback & Coupons platform	49
1065	iService	Consumer Internet	Gadgets Repair & Service Booking platform	49
1066	Unacademy	Consumer Internet	Online learning platform	49
1067	SecururAX	Technology	Cloud-based solutions provider	49
1068	Leadburg	Consumer Internet	Personality Development Mobile App	49
1069	ZoloStays	Consumer Internet	Branded PG Accomodation booking platform	49
1070	Oi Media	Technology	SAAS Based Media Marketing platform	3
1071	HipCouch	Consumer Internet	Custom & Modular Furniture platform	4
1072	Curiositi	Consumer Internet	Online Learning Platform	49
1073	TinyStep	Consumer Internet	Parenting Info & Social Network	49
1074	Practo	Consumer Internet	Online Healthcare platform	49
1075	Ketchupp	Consumer Internet	Food Discovery Platform	3
1076	Hoopy	Consumer Internet	Online Car Service Platform	64
1077	Ezytruk	Consumer Internet	Logistics and truck aggregator platform	49
1078	Kratikal	Technology	Cyber Security Solution provider	3
1079	Direct Create	eCommerce	B2B Marketplace for Handicrafts	2
1080	Vahdam Teas	eCommerce	Online Tea etailer	3
1081	Qwikspec	Technology	Cloud-based construction	49
1082	PParke	Consumer Internet	Parking Solutions mobile app	49
1083	Weddingz.in	Consumer Internet	Online Marketplace for Wedding Venues and vendors	4
1084	Native Special	eCommerce	Indian Sweets & Snacks etailer	65
1085	Fitnapp	Consumer Internet	Fitness Mobile App	7
1086	Ethosh	Technology	Visual and Interactive communications Solutions	6
1087	Wydr	eCommerce	B2B Wholesale Marketplace in India	2
1088	Tyre Express	Technology	IoT platform for Tyre Performance management & tracking	4
1089	Connaizen	Technology	Data Analytics platform	3
1090	MessaGif	Consumer Internet	social messaging platform	3
1091	SmartHi	Technology	Audit automation Solutions	6
1092	CRON Systems	Technology	Border Intrusion Alert Solutions	3
1093	CueMath	Technology	Maths Learning program	3
1094	ChipperSage	Technology	Online learning platform	49
1095	SelectJobs	Consumer Internet	Online Job portal	4
1096	Khel Now	Consumer Internet	Mobile-based Social Platform for Sports	49
1097	NowFloats	Consumer Internet	Platform to take businesses online	15
1098	Lets Transport	Consumer Internet	Online transport vehicle booking platform	49
1099	BetaOut	Technology	ECommerce Marketing Software	7
1100	Wishberry	Consumer Internet	Crowdfunding Platform	4
1101	RML Agtech	Technology	Agri Decision Support Solution for farmers	6
1102	LoyaltyPrime	Technology	Loyalty program management solutions	3
1103	InstaSafe	Technology	Security-as-a-Service solution provider	49
1104	Infibeam	eCommerce	eCommerce Marketplace	54
1105	99Games	Technology	Mobile Game Developer Studio	66
1106	AirMed Labs	Consumer Internet	Health Tests Booking platform & ePharmacy	54
1107	99PerHour	Consumer Internet	Hyper-local Handyman Service provider	5
1108	Kochi Post	Consumer Internet	English Online News portal	67
1109	Intuit Things	Technology	IoT solutions for home automation applications	4
1110	Cloudrino	Technology	Cloud based Virtual Servers	3
1111	FabX	eCommerce	Used Furniture Marketplace	4
1112	Maptags	Consumer Internet	Smart Online address tags	49
1113	YOLO Health	Consumer Internet	Online Healthcare platform	4
1114	Heads Up For Tails	eCommerce	Online Pet Products Store	3
1115	Register My Marriage	Consumer Internet	Online Marriage Registration services	3
1116	SidQam	Technology	Healthcare Software System	7
1117	India Lends	Consumer Internet	Online Instant personal Loan provider	3
1118	Slide App	Consumer Internet	Lock screen Rewards mobile app	3
1119	Badiyajobs	Consumer Internet	Entry-Level job Seekers platform	3
1120	Streo	Consumer Internet	Live Music Streaming App	49
1121	TYGR	Technology	Transport and logistics mobile App	4
1122	Mr Hot Foods	Consumer Internet	Online Food Ordering & Delivery Portal	36
1123	UrDoorStep	eCommerce	Online Grocery Store	49
1124	ONN Bikes	eCommerce	On-demand, self-drive bike rental platform	4
1125	Diro Labs	Consumer Internet	Mobile Contacts Management app	3
1126	THB	Technology	Clinical research and data analytics	2
1127	LookAtMe	Consumer Internet	Mobile App based Fashion Network	21
1128	Netree	eCommerce	Mobile-only Retailers Engagement Solution	3
1129	BookEventz	Consumer Internet	Venue, Events Booking platform	4
1130	Tailslife	Consumer Internet	Pet Parenting mobile app	49
1131	Revv	Consumer Internet	Self-Driven Car Services booking portal	3
1132	WealthApp	Consumer Internet	Online Investment Advisory platform	49
1133	Vehico	Technology	Connected Transportation solutions	49
1134	Zest Money	Consumer Internet	Online Consumer Lending platform	4
1135	GoMechanic	Consumer Internet	Online Car servicing Booking platform	2
1136	Stalk Buy Love	eCommerce	Fashion Apparel eTailer	3
1137	Nykaa	eCommerce	Beauty Products etailer	4
1138	Wittyparot	Technology	Content Management & Productivity platform	49
1139	NeuroEquilibrium	Technology	Health-Tech platform	33
1140	Xseed Education	Technology	Education & learning Tech platform	49
1141	Rupaiya Exchange	Consumer Internet	P2P Lending platform	3
1142	Doctor Insta	Consumer Internet	Online Doctor Consulting platform	2
1143	UrbanPiper	Consumer Internet	Self-Branded Websites & Apps for Ecommerce	49
1144	Fresh Food Concepts	Food & Beverage	Cold Press Juice manufacturer & seller	3
1145	Indifi	Consumer Internet	Online lending platform	2
1146	GoComet	Logistics	Marketplace for International Freight	4
1147	OfBusiness	eCommerce	Online business-to-business (B2B) marketplace	2
1148	Fitmein	Consumer Internet	Fitness Discovery & Booking platform	3
1149	Qacco	Consumer Internet	Hotel Booking platform	2
1150	Fitpass	Consumer Internet	Fitness center aggregator & Booking mobile app	3
1151	MoEngage	Technology	User analytics and engagement platform	49
1152	Ten3t Health	Technology	medical grade wearable patch maker	49
1153	Trading Bells	Consumer Internet	Online Share & Commodity Broking platform	36
1154	SERV\\\\xe2\\\\x80\\\\x99D	Consumer Internet	Financial Services For Unorganized Workforce	6
1155	IdeaForge	Technology	Drone Manufacturing	4
1156	Amagi Media Labs	Technology	Media Technology Solutions	4
1157	Pocket Aces	Technology	Digital Entertainment Company	4
1158	Pi Data Centers	Technology	Cloud Data Center Solutions provider	15
1159	TripShelf	Consumer Internet	Holiday Packages provider	3
1160	Events High	Consumer Internet	Events & Activities Marketplace	49
1161	NoBroker	Consumer Internet	Rental property search portal	49
1162	VivoCarat	eCommerce	Online jewellery marketplace	4
1163	Tiyo	Consumer Internet	Doctor Search Mobile App	47
1164	Zoomcar	Consumer Internet	Self-Driven Cab booking platform	49
1165	BYJU\\\\xe2\\\\x80\\\\x99s	Consumer Internet	Online Learning platform	49
1166	Supr Daily	Consumer Internet	Daily Subscription based Delivery service	4
1167	The BlueBook	Consumer Internet	online to offline marketing platform	49
1168	MamaEarth	eCommerce	Babycare Products seller	3
1169	Vegetall	eCommerce	Online Vegetable eTailer	5
1170	Innoplexus	Technology	Data as a Service Provider	6
1171	Mindler	Consumer Internet	Career Planning & Assessment platform	3
1172	MCaffeine	eCommerce	Personal care product etailer	49
1173	enKast	Technology	Cloud based CRM for Agencies	49
1174	ShopKirana	eCommerce	B2B platform for Merchants & Retailers	36
1175	MyAdvo	Consumer Internet	Legal Advice Platform	3
1176	Asocon	Technology	Process management startup	7
1177	LexComply	Consumer Internet	Compliance Management Software	3
1178	The Postbox	eCommerce	Art & Lifestyle ECommerce Store	5
1179	Pandorum Technologies	Technology	3D printed experimental Human Liver tissue creator	49
1180	Dekkho	Consumer Internet	Video Streaming platform	4
1181	Shadowfox	Logistics	On-Demand Delivery Service	2
1182	ShopX	eCommerce	SAAS ECommerce Retail app	49
1183	BookEventz	Consumer Internet	Online event-booking platform	4
1184	Healthifyme	Consumer Internet	Fitness Mobile App	49
1185	LetsMD	Consumer Internet	Healthcare plan comparison platform	3
1186	Justbooks	Consumer Internet	Library Chain Aggregator	49
1187	InstantPay	Consumer Internet	Digital payments & recharge platform	3
1188	PickMyLaundry	Consumer Internet	On-Demand Washing & Dry Cleaning Services	3
1189	FreshDesk	Consumer Internet	SAAS Based HelpDesk Services	5
1190	LaundryAnna	Consumer Internet	On-Demand Washing & Dry Cleaning Services	49
1191	LetsMD	Consumer Internet	Healthcare Services Comparison Platform	3
1192	Sattviko	Food & Beverage	Health Food Restaurant Chain	3
1193	Zarget	Technology	SaaS-based web optimisation and marketing platform	5
1194	DoSelect	Consumer Internet	Skill Showcasing platform	49
1195	EasyPolicy	Consumer Internet	Online insurance Portal	7
1196	Browntape	Technology	cloud-based software solutions company	56
1197	Connect India	Logistics	Last mile Delivery Network	49
1198	Corseco	Technology	AI-based Software as a Service Solution provider	3
1199	vImmune	Consumer Internet	Immunisation Management Platform	49
1200	The Gourmet Jar	eCommerce	Gourmet Food etailer	7
1201	Medzin	eCommerce	Online ordering & Delivery of medicines	3
1202	Bizongo	eCommerce	Packaging Material Marketplace	4
1203	Rivigo	Technology	Technology based Logistics platform	2
1204	JustRide	Consumer Internet	Online Car Sharing platform	4
1205	IIM Jobs	Consumer Internet	Online Job Portal	3
1206	Square Yards	Consumer Internet	Online Property Search Portal	2
1207	GolfLAN	Consumer Internet	Golf Session Online Bookings platform	3
1208	Yottaasys	Technology	Data Sciences platform	49
1209	Tone Tag	Technology	Contactless Payment Solution	49
1210	Life in Control	Consumer Internet	Online Diabetes Management platform	2
1211	Active.ai	Technology	Banking & Fintech Platform	21
1212	ElasticRun	Technology	Tech driven Logistic & distribution platform	6
1213	NoBroker	Consumer Internet	Online Rental discovery	49
1214	Zefo	eCommerce	Used Furniture & Appliances Marketplace	49
1215	PlaySimple	Technology	Mobile Gaming portal	49
1216	Stasis Labs	Technology	Cloud based\\\\xc2\\\\xa0 health monitoring platform	49
1217	Scienaptic	Technology	Data Analytics platform	49
1219	Lawrato	Consumer Internet	Free Legal Advice	3
1220	Trip Tap Toe	Consumer Internet	Online Travel Portal	2
1221	Pictor Imaging	Consumer Internet	Product Photography Mobile App	4
1222	GramCover	Finance	Insurance Marketplace for the Rural Sector	3
1223	AerMed	eCommerce	Online Pharmacy	4
1224	WorkIndia	Consumer Internet	Job Board for Clue Collar Jobs	4
1225	Bats on delivery	Consumer Internet	Online food, Grocery ordering & Delivery	2
1226	numberz.in	Technology	Cash Flow Management Solution for Businesses	2
1227	Housing.com	Consumer Internet	Real Estate Portal	4
1228	Awesummly	Consumer Internet	Short News Mobile App	49
1229	VoLT	Consumer Internet	Ed-Tech Platform	4
1230	Vymo	Technology	SaaS-based predictive analytics platform	49
1231	ShubhLoans	Technology	Consumer Finance & Credit Score platform	49
1232	Noddapp	Consumer Internet	App based networking platform	4
1233	Knowlarity	Consumer Internet	Cloud Telephony Platform	49
1234	Infisecure	Technology	Bot Protection Solutions	4
1235	Udaan	eCommerce	B2B Marketplace	49
1236	FroyoFit	Consumer Internet	Fitness Discovery Platform	36
1237	Betterplace	Consumer Internet	Background Verification Services	49
1238	ShareChat	Consumer Internet	Local Language Social Networking Platform	4
1239	UClean	Consumer Internet	Tech Enabled Laundry Service Provider	2
1240	Servify	Consumer Internet	Personal Device Assistant App	4
1241	Hubilo	Consumer Internet	End-to-end Event Organizers Solutions	54
1242	FunOnGo	Consumer Internet	Digital Media Content and Distribution platform	4
1243	121Policy	Consumer Internet	Online Insurance Platform	47
1244	TapChief	Consumer Internet	Professional Expert Advice Platform	49
1245	Kloseby	Consumer Internet	proximity based\\\\xc2\\\\xa0 Rewards platform	49
1246	WholeSaleBox	eCommerce	B2B Wholesale Apparel Marketplace	33
1247	Crossahead	Consumer Internet	Creative Artists Discovery & Booking platform	7
1248	Affordplan	Consumer Internet	Savings platform for Medical Expenses	3
1249	HandyTrain	Consumer Internet	Mobile App for SAAS based Training	56
1250	ShopsUp	eCommerce	Hyperlocal Shopping App	49
1251	Indofash	eCommerce	Ethnic Indian Fashion Marketplace	49
1252	Entropika	Technology	AI, Machine learning Solutions	49
1253	MarianaIQ	Technology	AI-driven B2B marketing platform	49
1254	Chai Thela	Food & Beverage	Quick Service Restaurants	7
1255	Interviewpad	Technology	Engineering Interview facilitation platform	6
1256	Math Buddy	Consumer Internet	Online Math Learn	60
1257	Pulse	Consumer Internet	Campus Social Networking App	49
1258	MonkeyBox	Consumer Internet	Healthy Food Delivery platform	49
1259	Carcrew.in	Consumer Internet	Online Car repair Marketplace	4
1260	MeraKisan	eCommerce	Fruit & vegetable eTailer	49
1261	Mystifly	Consumer Internet	Airline Ticket Aggregator	49
1262	HelpChat	Consumer Internet	AI Powered Content & Commerce platform	49
1263	Uniphore	Technology	Speech Recognition Solutions	5
1264	World Art Community	eCommerce	Art & Craft Marketplace	2
1265	Giftxoxo	eCommerce	Online Gifting platform	49
1266	Bharat Bazaar	eCommerce	Online B2B Marketplace	4
1267	GOQii	Consumer Internet	Health & Fitness Wearable Device	4
1268	India Gifts Portal	eCommerce	Online Gifting platform	7
1269	Moglix	eCommerce	Industrial & Home products marketplace	7
1270	NetLinx	Consumer Internet	Internet Service Provider	15
1271	Scandid	Consumer Internet	Product Shopping Comparison App	6
1272	Remitr	Consumer Internet	Foreign Currency Payments Platform	4
1273	InnerChef	Consumer Internet	Online food ordering platform	2
1274	AppsDaily	Consumer Internet	Mobile Phone Theft, Damage Protection platform	4
1275	MuhurtMaza	Consumer Internet	Online Puja Booking Service	6
1276	Azuro	Consumer Internet	Rental Property Finder platform	4
1277	NeuroSynaptic	Technology	Remote Healthcare Delivery Solutions	49
1278	UE LifeSciences	Technology	Mobile Health Technology Solutions	4
1279	FindmeaShoe	Consumer Internet	Footwear Recommendation App	49
1280	RealBox	Technology	Data Sciences Platform	7
1281	Sportido	Consumer Internet	Sports Discovery platform	7
1282	GoZefo	eCommerce	Used Furniture & Appliances Marketplace	49
1283	RayIOT	Technology	Baby Monitoring Devices manufacturer	49
1284	KOOH Sports	Technology	Sports Training & Technology	4
1285	Flexiloans	Consumer Internet	Online Funds Raising Platform	4
1286	Sibia Analytics	Technology	Marketing & Customer Analytics Solutions	47
1287	Vithi.com	eCommerce	Online Hair Extension etailer	3
1288	Yupp TV	Consumer Internet	Internet-based TV streaming service provider	49
1289	Deyor Camps	Consumer Internet	Branded Camping location Aggregator	2
1290	ZipLoan	Consumer Internet	online lending platform	3
1291	FabAlley	ecommerce	online fashion brand store	7
1292	Shoekonnect	eCommerce	B2B Marketplace for Shoes	68
1293	Maya	Consumer Internet	Womens Health Tracker App	49
1294	RoboVac	Technology	waterless car washing solution	54
1295	Newspatrolling	Consumer Internet	Online News portal	3
1296	Postman	Consumer Internet	API Platform	49
1297	ISFC	Finance	Education Sector Lending	15
1298	BeatRoute	Technology	SAAS based mobile application platform	2
1299	Kidsstoppress	Consumer Internet	Parenting and Baby care Platform	4
1300	Innov8	Consumer Internet	Co-Working Spaces aggregator	49
1301	DailyHunt	Consumer Internet	Vernacular content mobile app	49
1302	Tazzo Bikes	Consumer Internet	Motorbike rental platform	15
1303	MyKindofJob	Consumer Internet	Internet & Fresher Job platform	4
1304	Trilyo	Technology	B2B SAAS based product	49
1305	Rooter	Consumer Internet	Sports Social Network mobile app	3
1306	Yumigo	Consumer Internet	App based Travel Discovery and Transactions platform	2
1307	Rentalpha	Others	equipment rental and leasing company	4
1308	3Dexter	Technology	3D Printing Solutions for Edu space	3
1309	BabyChakra	Consumer Internet	Parenting and Child Care portal	4
1310	Coppre	eCommerce	Copper based items etailer	6
1311	MySUN	Technology	Solar Energy harnessing products marketplace	7
1312	ePathsala	Technology	Cloud based ERP for Accreditation & ICT	49
1313	Furlenco	Consumer Internet	Online Furniture Rental platform	49
1314	Fisdom	Consumer Internet	Personal Wealth Management Platform & App	49
1315	Actofit	Technology	Wearable Technology platform & devices	4
1316	Stayology	Consumer Internet	Stay & Travel related services	49
1317	Hipcask	Consumer Internet	Alcoholic beverage discovery platform	4
1318	RailYatri	Consumer Internet	Train Travel Info mobile app	7
1319	ChatOnGo	Consumer Internet	Hyperlocal\\\\xc2\\\\xa0 Communication Mobile app	4
1320	WOTU	eCommerce	B2B Marketplace for traders	49
1321	Healthians	Consumer Internet	Health Test Discovery & Ordering service	2
1322	Box8	Consumer Internet	Online Food Ordering platform/App	4
1323	Kredx	eCommerce	Invoice discounting marketplace	49
1324	CreditMate	Consumer Internet	Credit Report Info platform	4
1325	Pickrr	Technology	Courier Logistics & Order management Solutions	3
1326	SatvaKart	eCommerce	Online Grocery Etailer	2
1327	SooperMO	Technology	Android utility app suite creator	2
1328	OrangeTwig	Consumer Internet	Social Media Marketing platform	3
1329	Wooplr	Consumer Internet	Fashion Discovery App	49
1330	The Kettlery	eCommerce	Online Tea Etailer	54
1331	Idea Bubbles	Consumer Internet	Doctor Consulting platform	49
1332	FR8	Technology	Truck Fleet Operation platform	5
1333	Ather Energy	Technology	Electric Vehicle Manufacturer	49
1334	Pikkol	Logistics	Relocation Service provider	49
1335	Velmenni	Technology	LiFi based wireless communication provider	3
1336	Volta Motors	Technology	Electric Bike Manufacturer	5
1337	Cyclops	Technology	Clinical and Wearable Diagnostic Product creator	49
1338	Impact Analytics	Technology	Business intelligence and data science Startup	49
1339	Talent Next	Consumer Internet	Talent Discovery & Audition management platform	4
1340	Mad Street Den	Technology	Artificial Intelligence platform	5
1341	Mihup	Technology	Personal Digital Assistant	47
1342	Renowala	eCommerce	Home Improvement Marketplace	15
1343	Lucideus	Technology	IT Risk Assessment and Digital Security Services provider.	3
1344	Trackbizz	Technology	Field Force Automation System	67
1345	Social Quotient	Technology	Platform for Social Causes	4
1346	Stalk Buy Love	eCommerce	Fashion Apparel eTailer	3
1347	eShakti	eCommerce	Women\\xe2\\x80\\x99s Fashion Apparel eTailer	5
1348	CheersOye!	Consumer Internet	Online Gift Vouchers platform	4
1349	Lenskart	eCommerce	Online Eyewear eTailer	3
1350	BigStylist	Consumer Internet	Hyperlocal doorstep Beauty Services provider	4
1351	Zilingo	eCommerce	Online Fashion Retailer	69
1352	Alternacare	Consumer Internet	Online Doctor Consulting platform	3
1353	Simplilearn	Education	Online Certification programs	49
1354	Prozo	eCommerce	Study Material Marketplace	2
1355	TopRankers	Education	Online Test Preparation platform	49
1356	BuildTraders	eCommerce	Online Construction Materials Marketplace	49
1357	Byju\\\\xe2\\\\x80\\\\x99s	Education	Online Learning App	49
1358	NoBroker	Consumer Internet	Online Home Rental platform	49
1359	Freshboxx	eCommerce	Fruits & vegetable eTailer	70
1360	CureInstant	Consumer Internet	Social Health Networking Platform	3
1361	Poshtic	Consumer Internet	Online health & Wellness platform	7
1362	KarmaCircles	Consumer Internet	Peer-to-peer Social Learning platform	3
1363	Purple Style Labs	Consumer Internet	Personal Styling Online platform	4
1364	Inuxu	Technology	Online Advertising Solutions	6
1365	Nykaa	eCommerce	Online Beauty products eTailer	4
1366	Glam Studios	Consumer Internet	Beauty Salon Aggregator	7
1367	Findow	Consumer Internet	Fashion Discovery Mobile app	49
1368	IdeaChakki	Consumer Internet	Restaurant Menu & Food mobile app	12
1369	ShoeKonnect	eCommerce	Footwear & Leather B2B App	68
1370	NearBuy	Consumer Internet	Online Deals & Discount platform	2
1371	ZeroInfy	Consumer Internet	Online Video Lectures platform	47
1372	Flocareer	Consumer Internet	Jobs & Skill Validation platform	49
1373	LensPick	eCommerce	eyewear eTailer	49
1374	infeedo	Consumer Internet	Employee engagement platform	2
1375	Furlenco	eCommerce	Online furniture rental startup	49
1376	GoPigeon	Consumer Internet	on-demand logistics service provider	49
1377	NewsDistill	Consumer Internet	City based News Aggregator App	15
1378	DoctorInsta	Consumer Internet	Online Doctor Consultations	2
1379	Milofy	Consumer Internet	Couple Socialization App	49
1380	Liqvid	Technology	Integrated eLearning content solutions	3
1381	Swiggy	Consumer Internet	Online Food Ordering & Delivery	49
1382	Codemojo	Consumer Internet	Customer Engagement Platform	49
1383	JustLikeNew	eCommerce	Online gadget Repair Services Marketplace	15
1384	JoeHukum	Technology	Enterprise customer engagement solutions	3
1385	Co Life	Consumer Internet	shared living and working spaces platform	49
1386	PurpleDocs	Consumer Internet	Electronic Health care records platform	60
1387	Pepperfry	eCommerce	Furniture eTailer	4
3011	RateGain	\N	\N	\N
1388	eQuickies	eCommerce	Online Book etailer	54
1389	Khel Now	Consumer Internet	Mobile-based social networking platform	3
1390	Gadgetwood	Consumer Internet	On-Demand Gadget repair services platform	3
1391	DailyRounds	Consumer Internet	Mobile App for Doctors	49
1392	Flixy Games	Technology	Mobile Game Publisher for Indian audience	49
1393	HashTaag	Technology	Mobile App Development company	49
1394	PharmaRack	Technology	SAAS application for Pharma Industry	6
1395	\\\\xc2\\\\xa0CloudCherry	Technology	CRM SAAS Platform	5
1396	Parentlane	Consumer Internet	Social Platform for babycare and parenting	49
1397	First Moms Club	Consumer Internet	Social Network for Mothers	4
1398	inMotion	Technology	Financial platform for daily wage earning communities	7
1399	Let\\xe2\\x80\\x99s Barter	Consumer Internet	Goods & Services Barter Platform	3
1400	EvenGini	Consumer Internet	Event Registration and Ticketing platform	5
1401	TinyStep	Consumer Internet	Parenting Network Platform	49
1402	Canvs	Consumer Internet	Community Platform for Artists and Designers	4
1403	Beardo	eCommerce	Mens Grooming products etailer	54
1404	Instacar	Consumer Internet	Out-Station Taxi Rental Platform	36
1405	Celes Care	Consumer Internet	Virtual Health Clinic for Women	15
1406	Druva	Technology	Cloud Based Data Protection Solution	6
1407	Promon	eCommerce	Local Commerce Platform	3
1408	Fastudent	eCommerce	Education eCommerce platform	7
1409	Unocoin	Consumer Internet	Bitcoin Wallet	49
1410	Demyto	Consumer Internet	Vehicle maintenance Services platform	6
1411	Zeta	Technology	Enterprise Cloud Solutions	4
1412	Kalaage	Consumer Internet	Social Networking Platform for Writers	33
1413	HealthKart	eCommerce	Online Pharmacy & Health Marketplace	2
1414	Medinfi	Consumer Internet	Doctor & Clinic\\\\xc2\\\\xa0 Discovery Platform	49
1415	RepairEasy	Consumer Internet	Gadget Repair Services Platform	6
1416	Voonik	eCommerce	Online Women\\\\xe2\\\\x80\\\\x99s Fashion Marketplace	49
1417	Tokri	Consumer Internet	Hyperlocal Grocery Delivery platform	6
1418	Sheroes	Consumer Internet	Online Job and Career Platform for Women	7
1419	Daily Ninja	Consumer Internet	Hyperlocal daily needs Products delivery platform	49
1420	Yumlane	Food & Beverage	Retail Food & Snack Offline centres	4
1421	Xcode	Healthcare	Personal Genomics	5
1422	ExtraCarbon	Consumer Internet	Waste Recycle Management platform	2
1423	FlickBay	Consumer Internet	Mobile Based Bollywood Discovery platform	4
1424	Petoo	Consumer Internet	Food Delivery Platform	49
1425	lehlehsports	Others	Sports Arena discovery	3
1426	Tricog	Healthcare	Healthcare Analytics Platform	49
1427	VST Travels	Technology	Travel Ticket Booking Software	71
1428	AdPushUp	Technology	Ad optimization Platform	3
1429	Wefly Indoor Skydiving	Others	Indoor Skydiving Sports Provider	4
1430	Mojarto	eCommerce	Original Art, Digital Prints etailer	2
1431	Zipgrid	Consumer Internet	Community services platform	4
1432	MobiDent	Healthcare	Dental Protection Solution	49
1433	Zeolr/RespirON	Technology	Healthcare related IoT platform	3
1434	Vebbler	Consumer Internet	Photo Sharing Mobile App	49
1435	Bombay Shaving Company	eCommerce	Men\\\\xe2\\\\x80\\\\x99s Grooming Product etailer	3
1436	Travelyaari	Consumer Internet	Online ticket booking platform	49
1437	91SpringBoard	Consumer Internet	Co-Working Spaces Discovery & Booking platform	4
1438	Genextstudents	Consumer Internet	Online Tutoring Service provider	4
1439	Zenoti	Technology	Cloud Based Software Solutions Provider	15
1440	Crofarm	Technology	Agri-Tech supply chain Solution provider	2
1441	Faircent.com	Consumer Internet	peer-to-peer lending platform	2
1442	Innovaccer	Technology	Integrated Enterprise Analytics Platform	7
1443	Cuberoot	Technology	Data Analytics & Audience Management Platform	2
1444	Funcastic	Consumer Internet	B2C vernacular podcast aggregator platform	3
1445	Buttercups	ECommerce	Women Intimate Wear eTailer	49
1446	Zappfresh	ECommerce	Raw Meat Products eTailer	2
1447	OyoRooms	Consumer Internet	Budget Hotels Aggregator	3
1448	Hike	Consumer Internet	Mobile Messaging App	3
1449	Joolz	eCommerce	Online Jewellery Store	4
1450	SaleBhai	eCommerce	Sweets, Dry Fruits & Handicrafts etailer	54
1451	Makkajai	Technology	Online & Mobile learning for kids	6
1452	Gradopedia	Consumer Internet	Career progression Portal	4
1453	MaalGaadi	Logistics	Online Logistics Marketplace	36
1454	ZiPi	Technology	Mobile Chatbot App	49
1455	Appknox	Technology	Mobile security solutions	49
1456	Pikkol	Logistics	Packers & Movers	49
1457	Meesho	eCommerce	Mobile based eCommerce SAAS platform	49
1458	Sesame Software	Technology	Financial Technology Solutions Provider	72
1459	Quikr	Consumer Internet	Classified Listings platform	4
1460	Digio	Technology	Aadhar based Document Signing platform	49
1461	Ziffity	Technology	Full Service Ecommerce Agency	5
1462	Zzungry	Consumer Internet	Food Delivery platform	49
1463	Puro Wellness	healthcare	Organic,\\\\xc2\\\\xa0 Natural\\\\xc2\\\\xa0 Food substitute manufacturer	4
1464	Fitternity	Consumer Internet	Fitness Gym & Services Discovery platform	4
1465	TAC Security	Technology	Cyber-Security Solutions Provider	3
1466	Notesgen	Consumer Internet	Online Notes Sharing Portal	3
1467	NearU	Consumer Internet	Marketing app for retailers	4
1468	Octo.ai	Technology	Artificial Intelligence based marketing platform	3
1469	ShaadiSaga	Consumer Internet	Wedding Website Creator	3
1470	UnaAcademy	Consumer Internet	Free Interactive education platform	49
1471	Advenio	Technology	Clinical Imaging Solution Provider	44
1472	Guarented	eCommerce	Home Furnishing rental marketplace	49
1473	Beyond Evolution	Technology	Mobile Apps & Tech Services provider	2
1474	Uber Dreams	eCommerce	Dreams fulfilling marketplace	4
1475	Convegenius	Education	Edutainment platform	7
1476	UrbanLadder	eCommerce	Online Furniture Store	4
1477	enCashea	Consumer Internet	Scrap Collection and Recycling platform	49
1478	EngineerBabu	Technology	Mobile App & Web Development company	36
1479	Cult	Healthcare	Health and Fitness Centres	49
1480	WitWorks	Technology	Consumer IoT Startup	49
1481	NearFox	Consumer Internet	Local Lifestyle Content and Discovery Platform	4
1482	ZoomCar	Consumer Internet	Self-driven car booking platform	49
1483	Plix	Consumer Internet	Photo and Video Sharing App	2
1484	Mobikwik	Consumer Internet	Digital Wallet platform	2
1485	MyDidi	Consumer Internet	on-demand, hyper-local Cleaning services provider	4
1486	CrownIt	Consumer Internet	Cashback Mobile app	2
1487	LoanTap	Consumer Internet	Lending platform for Salaried professionals	4
1488	Runnr	Consumer Internet	hyperlocal Logistics services provider	49
1489	Zolo	Consumer Internet	on-demand online talent marketplace	7
1490	Notion Press	Consumer Internet	Self-Publishing books platform	5
1491	LivSpace	Consumer Internet	Online portal for Home Design	49
1492	iAugmentor Labs	Technology	Assessment & Learning Platform	2
1493	DayBox	Consumer Internet	Fruit & Vegetable Delivery platform	3
1494	Paytm	eCommerce	Mobile Wallet & ECommerce platform	49
1495	CropIn	Technology	Agriculture Technology Solutions	49
1496	Canvera	Consumer Internet	Photographer Discovery & Information platform	49
1497	Prime Focus Technologies	Technology	Hybrid Cloud technology enabled Media ERP platform	4
1498	Flyrobe	eCommerce	Online fashion rental platform	4
1499	inclov	Consumer Internet	Matchmaking App for Disabled	4
1500	RazorPay	Consumer Internet	Online Payment Gateway	49
1501	DarwinBox	Technology	HR Software Services Startup	15
1502	Venture Catalysts	Consumer Internet	Seed Investment & Innovation Platform	4
1503	PressPlay TV	Consumer Internet	Video Content Discovery Platform	3
1504	Playment	Consumer Internet	Mobile Marketplace for Crowdsourced Work	49
1505	WealthTrust	Consumer Internet	Wealth Management App	4
1506	Curefit	Consumer Internet	Online Preventive Healthcare Platform	49
1507	StitchWood	eCommerce	Custom Furniture Online	4
1508	Grab.in	Logistics	hyperlocal logistics service	4
1509	Fulfil.IO	Consumer Internet	Cloud Based ERP Software	73
1510	NeoGrowth	Finance	SME Lending platform	4
1511	SeeDoc	Consumer Internet	Video Based Doctor Consulting platform App	2
1512	BookMyShow	Consumer Internet	Event & Movie Ticketing platform	4
1513	Flyrobe	eCommerce	Online fashion rental platform	4
1514	HappilyUnmarried	eCommerce	Online Merchandize etailer	3
1515	Don\\\\xe2\\\\x80\\\\x99t Scratch Your Head	Technology	Full Stack Offline & Online ERP Solution	54
1516	Wedding Wishlist	Consumer Internet	Wedding Wishlist, Gifts & Registry Creation platform	5
1517	AppDaily	Technology	Mobile Security App development & Distribution	4
1518	Adytude	Consumer Internet	Gamified Consumer Insights Portal	3
1519	Quickli	Logistics	On-Demand Delivery Startup	2
1520	SpectraVR	Technology	Virtual Reality Content Studio	4
1521	Pitstop	Consumer Internet	Online Car Repair and Servicing Booking platform	49
1522	HolaChef	Consumer Internet	Online Food Ordering & Delivery Platform	4
1523	Purplle	eCommerce	Beauty Products Marketplace	4
1524	Trak N Tell	Technology	Car Tracking & Safety System	2
1525	Overcart.com	eCommerce	Unboxed & refurbished electronic products marketplace	2
1526	SirionLabs	Technology	SAAS based Service Agreement Management	2
1527	GyanDhan	Consumer Internet	Education Focused Financing Platform	3
1528	MintM	Consumer Internet	Digital Marketing & AdTech Platform	49
1529	HitGrit	Consumer Internet	Online Legal Consultation platform	44
1530	Find My Stay	Consumer Internet	Online Budget Hotel Aggregator & Booking Platform	3
1531	YAAP	Consumer Internet	Online Content Discovery, Creation & Distribution Platform	3
1532	Utoo Cabs	Consumer Internet	Cab aggregation & Rental platform	5
1533	Twigly	Consumer Internet	Online Food Ordering & Delivery Startup	2
1534	ShareChat	Consumer Internet	Vernacular Language Content Creation & Sharing App	49
1535	Urban Tailor	Consumer Internet	E-Tailoring service provider	49
1536	RentMojo	Consumer Internet	Online Furniture Renting Platform	49
1537	CityFurnish	Consumer Internet	Online Furniture Renting Platform	2
1538	HEAL Institute	Healthcare	Sports Focused Healthcare Startup	4
1539	Augrav	eCommerce	Personalized precious Jewellery etailer	48
1540	ShoppinPal	Technology	M-Commerce Solutions for Retail Stores	6
1541	TransTutors / AskIITians	Consumer Internet	Online Education & Tutoring portals	3
1542	WorkApps	Technology	Enterprise Work Management Software	6
1543	BankerBay	Consumer Internet	Online Investment Banking platform	49
1544	BaggOut	eCommerce	Women\\\\xe2\\\\x80\\\\x99s Fashion etailer	3
1545	TripShelf	eCommerce	Travel Package Marketplace	3
1546	SatvaCart	eCommerce	Online Grocers	3
1547	Ridlr	Consumer Internet	Public Transport Mobile App	4
1548	Yellowdig	Consumer Internet	Online Learning Platform	6
1549	Zuppler	Consumer Internet	Online Food Ordering platform	3
1550	BlueStone	eCommerce	Jewellery Etailer	4
1551	underDOGS	Technology	Game Development Startup	4
1552	ImageProVision	Technology	Image Analysis Solutions	6
1553	Sagacito	Technology	Cloud-Based Enterprise Solutions	3
3012	Wishberry	\N	\N	\N
3013	eKincare	\N	\N	\N
1554	Deal4Loans / Wishfin	Consumer Internet	\\\\nLoans Comparison platform\\\\n\\\\n\\\\n\\\\n     (adsbygoogle = window.adsbygoogle || []).push({});\\\\n\\\\n	7
1555	NiYO Solutions	Technology	Payroll & Benefits Software solutions	49
1556	AppLop	Consumer Internet	Mobile Apps SaaS Platform	2
1557	Tax2Win	Consumer Internet	Online Tax Filing Portal	33
1558	Truckola	Logistics	Tech-focused cargo transport startup	4
1559	iServe Financial	Consumer Internet	Loan Comparison & Deals platform	6
1560	MyTaxiIndia	Consumer Internet	Online Car rental booking platform	3
1561	AbeRuk	eCommerce	Online Marketplace for books	49
1562	Wiwigo	Consumer Internet	Inter-City Taxi Booking platform	49
1563	Drums Food	Food & Beverage	Yogurt and Ice Cream maker	4
1564	Chikoop	Consumer Internet	Free Ad based Voice Calling	36
1565	BRIDGEi2I	Technology	Data Analytics Platform	49
1566	Droom	eCommerce	Online marketplace for used automobiles	3
1567	Visit	Consumer Internet	On-Demand Healthcare Service provider	3
1568	Atomberg	Technology	smart, energy efficient home appliance manufacturer	4
1569	Coutloot	eCommerce	Fashion Re-Commerce Platform	4
1570	Limo	Consumer Internet	Bus Aggregator Mobile app	4
1571	iCliniq	Consumer Internet	Doctor Consultation platform	49
1572	GoGo Truck	Consumer Internet	Truck Aggregator & Booking platform	5
1573	Vyome Biosciences	Healthcare	Treatment Development for Antibiotic-resistant diseases	3
1574	SillyMonks	Consumer Internet	Digital Media and Entertainment Startup	15
1575	CueMath	Education	K-12 Maths Learning Courses	49
1576	KrazyBee	Consumer Internet	Student Micro-Loan platform	49
1577	Intgrea	Technology	Post merger Integration Partners	49
1578	HelpShift	Technology	Mobile CRM Platform	6
1579	CreditVidya	Technology	Credit Scoring Platform	4
1580	Grey Campus	Consumer Internet	Online Learning Platform	15
1581	ListUp	eCommerce	Location based Classified Mobile app	4
1582	6Degree	Technology	Tech-enabled Fashion Talent platform	4
1583	Shopwati	Consumer Internet	Online Fashion Discussion Community	2
1584	Cookifi	Consumer Internet	Online Chef Discovery & Booking Service	49
1585	StoreKing	eCommerce	Connecting Small Town Consumers to E-Commerce	49
1586	Wired Hub	Real Estate	Co-Working Spaces	33
1587	MySeniorDoctor	Consumer Internet	Online medical support platform	2
1588	Teabox	eCommerce	Online Tea Store	74
1589	ExtraaEdge	Consumer Internet	Student Acquisition Platform	6
1590	EPayLater	Technology	Fin-Tech Platform	4
1591	Kyazoonga	eCommerce	Online event ticketing Platform	4
1592	Paytunes	Consumer Internet	Mobile based rewards platform	3
1593	Kickstart Jobs	Technology	Entry level hiring platform	2
1594	Freshee	FMCG	Household packaging & Storage product manufacturer	4
1595	MadRat Games	Technology	Wearable Gaming Platform	49
1596	Jazzmyride	eCommerce	Auto Parts & Accessories eTailer	3
1597	AutoSense	Technology	Data Analytics based Customer Management Services	3
1598	Redsun Telematics	Consumer Internet	Internet of Things Platform	5
1599	KhanaGadi	Consumer Internet	Online Food Delivery for Train Travelers	33
1600	Bombay Shirt Company	eCommerce	Online custom Shirt retailer	4
1601	Matrubharti	Consumer Internet	e-Book Publisher	\N
1602	EdTechReview	Consumer Internet	Education based online portal	3
1603	Bonhomia	Food & Beverage	Premium Tea & Coffee Capsules maker	3
1604	Gobolt	Logistics	B2B Logistics provider	3
1605	Jivox	Technology	Data Driven Advertising platform	49
1606	Sminq	Consumer Internet	Queue management Mobile app	6
1607	CureJoy	Consumer Internet	Online Alternative health community platform	49
1608	Oneway.cab	Consumer Internet	Taxi Rental Platform	60
1609	GrabOnRent	eCommerce	On-demand product rental marketplace	49
1610	Diro Labs	Consumer Internet	Contact Management Mobile App	3
1611	Unnati Helpers	Consumer Internet	Help Hiring Platform	2
1612	Athletto	Consumer Internet	Sports Venue discovery and booking platform	49
1613	Saavn	Consumer Internet	Web/Mobile Music Streaming service	75
1614	Voonik	eCommerce	Online Women\\\\xe2\\\\x80\\\\x99s Fashion Marketplace	49
1615	ThinkPhi	Technology	Sustainable Green Tech Solution developer	4
1616	Cleartax	Consumer Internet	Online Tax Filing Platform	3
1617	Silvan Innovation Labs	Technology	Home Automation Solutions	49
1618	GreytHR	Technology	Payroll & HR Software Developer	49
1619	Duffl	eCommerce	Fashion Rental Marketplace	49
1620	BYG	Consumer Internet	Fitness centre Discovery & Booking Mobile app	49
1621	Dipper	eCommerce	Freight Logistics Marketplace	3
1622	Qonfuse	Consumer Internet	Online Test Papers for competitive exams	3
1623	The Indian IRIS	Consumer Internet	Govt Policy Research & Information portal	54
1624	Onspoon	Consumer Internet	Online Platform for Event Sponsorship	4
1625	REstate	Consumer Internet	Real Estate Platform	49
1626	Cleartrip	Consumer Internet	Online Travel Agency	4
1627	ProcMart	Consumer Internet	Online Procurement Marketplace	7
1628	Celerix	Technology	Fintech Product Development & Services Startup	49
1629	NatureNama	Consumer Internet	Online Outdoors & travel	4
1630	CyclopsMedtech	Technology	Medical Technology Provider	49
1631	Syona Cosmetics	FMCG	Beauty Products & Training to Salons & Spas	5
1632	PrettySecrets	eCommerce	Women Lingerie Store	4
1633	SpiderG	Consumer Internet	Online invoice app for SMEs	6
1634	FarEye	Technology	Logistics Management Software	3
1635	The Uolo	Consumer Internet	School Parent Communication App	49
1636	Staqu	Technology	Artificial Intelligence based search platform	2
1637	Padhopadhao	Consumer Internet	Home Tutors search & Discovery	3
1638	Drivify	Consumer Internet	Professional Driver discovery & Booking Mobile app	4
1639	PratiLipi	Consumer Internet	Multi-Lingual self-publishing platform	49
1640	ParaBlu	Technology	Cloud Data Security & Privacy Solutions	49
1641	Schedulers Logistics	Logistics	Cold Storage Logistics solutions	4
1642	LEAP India	Others	Supply Chain Equipment & Services provider	4
1643	KabadiExpress	Others	Free Door Step Scrap Pickup Service	3
1644	YourDost	Consumer Internet	Online counselling & Personal coaching platform	49
1645	Gomalon	Consumer Internet	Online Spa & Salon discovery & Booking platform	49
1646	Voler Cars	Consumer Internet	Self-Driven Car rental platform	3
1647	Travelyaari	Consumer Internet	Online ticket booking platform	49
1648	FabHotels	Consumer Internet	Online Hotel aggregator & Booking platform	2
1649	Locanix	Technology	GPS based SaaS Solutions	54
1650	LendingKart	Consumer Internet	Online Working Capital Business Loans Platform	54
1651	Hello Tax	Consumer Internet	Online Tax Filing Platform	3
1652	MySuperBrain	Consumer Internet	Online Talent Discovery Platform for Kids	15
1653	BlogBeats	Consumer Internet	Online Blogging Platform	49
1654	LetReach	eCommerce	ECommerce SAAS Solutions	3
1655	TrendieApp	Technology	Visual Content Marketing	47
1656	ImpactGuru	Consumer Internet	Crowdfunding Platform	4
1657	Velvetcase	eCommerce	Online designer jewellery marketplace	4
1658	Meru Cabs	Consumer Internet	Online/ Mobile Tax Cab booking	4
1659	Campus Diaries	Consumer Internet	Student focussed Content Discovery portal	49
1660	Scripbox	Consumer Internet	Online Mutual Fund Investment platform	49
1661	Biryani Blues	Food & Beverage	QSR Chain	2
1662	MotoMojo	Consumer Internet	Mobile based Vehicle maintenance App	4
1663	Get My Parking	Technology	Parking Technology Platform	3
1664	Prescribez	Consumer Internet	Health Service Aggregator Platform	6
1665	Airwood	Technology	Agri Data & Analytics Platform	5
1666	Mobikwik	Consumer Internet	Mobile & Digital Wallet	2
1667	iDreamCareer	Consumer Internet	Career Planning Services Portal	3
1668	Zwayam	Consumer Internet	Online Recruitment Platform	49
1669	BoiBanit	Consumer Internet	Online Food Delivery platform	60
1670	Zuver	Consumer Internet	Car driver Discovery App	4
1671	Prepathon	Education	Competitive Exam learning platform	4
1672	EasyRoads	Consumer Internet	Road Trip planning Mobile app	4
1673	Lenskart	eCommerce	Eyewear & Accessories etailer	3
1674	Seclore	Technology	Enterprise Security Technology platform	4
1675	SolarTown	Technology	Solar Rooftop system installation company	5
1676	Comarete	Technology	Telecom & Media IT services company	6
1677	MyDentistChoice	eCommerce	Medical Supplies eTailer	15
1678	Active.ai	Technology	Intelligent Tech platform for Finance vertical	21
1679	Affordplan	Technology	Affordable non-emergency medical service health plans	3
1680	Indee	Consumer Internet	Web Video Streaming Platform	49
1681	Unbxd	Technology	eCommerce product discovery software	3
1682	WebAlligator	Consumer Internet	Cloud Based Software Solutions	49
1683	EduAce Services	Education	Education Workshops & mentoring programs	76
1684	Meesho	eCommerce	Social commerce platform	49
1685	Zebroads	Logistics	Logistics and Warehousing services	15
1686	Locus	Technology	Logistics Intelligence platform	49
1687	Toko Innovations	Consumer Internet	Children\\\\xe2\\\\x80\\\\x99s Entertainment Portal	49
1688	Rentickle	eCommerce	Furniture, appliances Portal	3
1689	HealthifyMe	Consumer Internet	Health & Fitness App	49
1690	Zarget	Consumer Internet	Conversion Rate Optimization Platform	5
1691	InnoNano Research	Technology	Clean Water Technology	5
1692	SchoolWear	eCommerce	School Uniform & Supplies Marketplace	4
1693	Swiggy	Consumer Internet	Food Delivery Platform	49
1694	Zenify	Consumer Internet	Home rental Discovery & Booking Portal	49
1695	Faircent	Consumer Internet	Online Peer to Peer Lending platform	2
1696	Fractal Analytics	Technology	Data Analytics Company	4
1697	Unacademy	Consumer Internet	Free Online Education Platform	49
1698	Capital Float	Consumer Internet	Online Lending Platform	49
1699	Life Circle	Healthcare	Senior Healthcare Services	15
1700	Dream Wallets	Consumer Internet	Online Crowdfunding platform	33
1701	ShabdNagari	Consumer Internet	Hindi social networking portal	77
1702	Galleri5	Consumer Internet	Visual Content Discovery platform	49
1703	Derbii	Logistics	Carpooling Services	2
1704	StayZilla	Consumer Internet	Budget Room Aggregator Booking platform	5
1705	WoW Express	Logistics	E-Commerce Logistics Solutions	4
1706	Smartivity	eCommerce	Smart Learning products	12
1707	BedBathMore	Consumer Internet	Home Decor eMarketplace	4
1708	Murgency	Consumer Internet	Medical Emergency Response App	4
1709	Crownit	Consumer Internet	Mobile customer rewards management platform	2
1710	Blinge	eCommerce	Apparel Rental platform	4
1711	TheSmartQ	Consumer Internet	Food Ordering Mobile App	49
1712	PurpleHealth	Consumer Internet	Online health-on-demand platform	61
1713	Fundamentor	Education	Aptitude Development Program	6
1714	EduPristine	Education	Online Certification Courses	4
1715	BhiveWorkspace	Reality	Co-Working Spaces	49
1716	Parentlane	Consumer Internet	Parenting & Child Care app	49
1717	Appie	Consumer Internet	Location-based offline retail discovery platform	4
1718	Niki.ai	Technology	Artificial Intelligence Platform	49
1719	TaxiVaxi	Consumer Internet	Cab Aggregating Platform	3
1720	Veqta	Consumer Internet	On Demand Digital Sports Network	3
3014	ShopClues	\N	\N	\N
1721	i2ifunding	Consumer Internet	Online Peer to Peer Funding	7
1722	EduRev	Consumer Internet	Online Learning Platform	2
1723	Hoppingo	Consumer Internet	Fashion Discovery platform	3
1724	Eatonomist	Consumer Internet	Food Delivery Platform	2
1725	Goalwise	Consumer Internet	Online investment platform	49
1726	Roast	Consumer Internet	Mobile entertainment App	3
1727	Address Health	Healthcare	Pediatric Primary Healthcare Network	49
1728	Arcatron Mobility	Technology	Mobility Devices for differently abled	6
1729	SheThePeople	Consumer Internet	Digital platform for Women	3
1730	Cleartax	Consumer Internet	Online Income Tax Filing platform	49
1731	Consure Medical	Healthcare	Medical Devices Kit manufacturer	3
1732	mChamp	Consumer Internet	Celebrity Entertainment Contest App	3
1733	Pianta	Consumer Internet	Online healthcare service discovery platform	49
1734	Vahanalytics	Technology	Safe driving Analytics platform	4
1735	Play Your Sport	Consumer Internet	Location based Sports & Fitness Discovery App	3
1736	Koovs	eCommerce	Apparel & Lifestyle eTailer	3
1737	CCavenue	Consumer Internet	Payment Gateway	4
1738	1mg	eCommerce	Online Pharmacy	2
1739	Tpot	Food & Beverage	QSR Chain	2
1740	MachaDalo	Consumer Internet	Hyperlocal Advertising Platform	4
1741	Dil Mil	Consumer Internet	Matchmaking Mobile App	78
1742	PicsDream	Consumer Internet	Online Marketplace for Photographers	12
1743	Process 9	Consumer Internet	online translation and transliteration	2
1744	Housing	Consumer Internet	Real Estate Portal	4
1745	Roll Mafia	Food & Beverage	Rolls & Biryanis QSR chain	6
1746	Hungama	Consumer Internet	Digital Media Entertainment Portal	4
1747	Highway Delite	Consumer Internet	Various Highway Help Services	49
1748	Cult Fitness	Healthcare	Healthcare training programs	49
1749	Haptik	Technology	Personal Assistant App	4
1750	Servify	Consumer Internet	Gadget & Appliances Service App	4
1751	Shipsy	Logistics	Logistics Solutions	2
1752	gear6	Consumer Internet	Online bike service and repairs platform	49
1753	MyGlamm	Consumer Internet	Mobile based on-demand Beauty Services platform	4
1754	Petoo	Consumer Internet	Online Food Delivery Platform	49
1755	Truly Social	Consumer Internet	Mobile Gaming Studio	79
1756	Little Black Book	Consumer Internet	Curated Food, event & Lifestyle guide	3
1757	Vahan	Education	Mobile Education Platform	5
1758	imedilane	Consumer Internet	Online Health Diagnosis platform	3
1759	Living Local	Consumer Internet	Social discovery platform	4
1760	Vegfru	eCommerce	Online Fruit & Vegetable Marketplace	3
1761	Oyo	Consumer Internet	Online Branded Budget Room Booking Service	3
1762	PriceRaja	Consumer Internet	Price Comparison Portal	2
1763	MagicX	Consumer Internet	On-Demand Task Management App	49
1764	Happydemic	Consumer Internet	Artist Discovery & Booking platform	4
1765	LenDenClub	Finance	Peer-to-Peer Lending Platform	4
1766	Indi.com	Consumer Internet	Video Social Network	\N
1767	Legalraasta	Consumer Internet	Online legal Services for Startups	3
1768	RainCan	Consumer Internet	Subscription-based grocery delivery Mobile App	6
1769	Hippily	eCommerce	Fashion ECommerce App	4
1770	kredX	eCommerce	Invoice discounting\\\\xc2\\\\xa0 Marketplace	49
1771	Wedwise	Consumer Internet	Wedding related services community	3
1772	BeaconsTalk	Technology	contextual mobile advertising	4
1773	Deal 4Loans	Consumer Internet	Loan Comparison Portal	7
1774	RenewBuy	Consumer Internet	Online Car & Bike Insurance Comparison portal	3
1775	Blue Box Media	Consumer Internet	Online Tech Portals	33
1776	Vyomo	Consumer Internet	On-Demand Beauty Service provider	3
1777	Organicshop	eCommerce	Marketplace for organic products	33
1778	MInd Your Fleet	Consumer Internet	Car Rental Software	7
1779	NestAway	Consumer Internet	Furnished Home Rental Platform	49
1780	Tapchief	Consumer Internet	Expert Advice Platform	49
1781	Rapido	Consumer Internet	Bike Aggregator App	49
1782	Yufta	eCommerce	Women\\\\xe2\\\\x80\\\\x99s Fashion ECommerce Portal	49
1783	Smytten	eCommerce	Online Discovery and Shopping Platform	2
1784	Houssup	Consumer Internet	interior design and home furnishing portal	33
1785	Jugnoo	Consumer Internet	On-demand Delivery & Logistics platform	44
1786	Tork Motocycles	Auto	Electric Motorcycle Manufacturer	6
1787	Betaout	eCommerce	customer intelligence and marketing automation platform	7
1788	DriversCart	Consumer Internet	on-demand chauffeur provider	5
1789	LensKart	eCommerce	Eyewear etailing platform	3
1790	CollegeDekho	Consumer Internet	College & Student information platform	3
1791	OYOfit	Consumer Internet	Fitness Services Aggregator platform	49
1792	Oliveboard	Consumer Internet	Online exam practice & preparation platform	49
1793	Simplilearn	Consumer Internet	Online certification platform	49
1794	1mg	eCommerce	Online Pharmacy	2
1795	Fashalot	Consumer Internet	Fashion and Store discovery mobile app	3
1796	Broomberg	Consumer Internet	Cleaning Services Provider	3
1797	m.paani	Consumer Internet	Loyalty rewards platform	4
1798	Yufta	eCommerce	hyperlocal fashion retail platform	33
1799	mishTag	Consumer Internet	Style, Fashion Discovery Mobile app	3
1800	Advanced Structures India	Auto	Automotive Design and Engineering company	49
1801	Licious	eCommerce	Mobile based Meat ordering App	49
1802	Knolskae	Consumer Internet	Educational Gamification & Simulation platform	49
1803	Druva	Technology	Converged Backup & Data Protection Solutions for Enterprises	6
3015	Refiral	\N	\N	\N
1804	TOKO Innovation Studios	Consumer Internet	Children\\xe2\\x80\\x99s Entertainment Games & Products	3
1805	Commut	Consumer Internet	Shuttle Service Provider	15
1806	intouchapp	Consumer Internet	Contact Management Mobile App	6
1807	Dropkaffe	Food & Beverage	Ready-to-Drink Beverage Producer	49
1808	Transerv	Consumer Internet	Digital Payments platform	4
1809	ClearTax	Consumer Internet	Online filing of Tax returns	49
1810	Roposo	eCommerce	Social Fashion ECommerce Discovery platform	2
1811	MilkBasket	Consumer Internet	Micro Grocery Delivery Platform	2
1812	CareonGO	Consumer Internet	Online Pharmacy	\N
1813	RailYatri	Consumer Internet	Train Related Information portal	7
1814	ICHR	Consumer Internet	Mobile based Children health Information app	3
1815	Murgency	Consumer Internet	Medical Emergency Response App	4
1816	The Wedding Brigade	Consumer Internet	Online Wedding Information Portal	4
1817	DocsApp	Consumer Internet	Online Doctor Discovery & Chat platform	49
1818	Impact Guru	Consumer Internet	Online Crowdfunding platform for NGOs & Social Projects	4
1819	LetReach	eCommerce	ECommerce SAAS Solutions	3
1820	DriveU	Consumer Internet	Chauffeurs Discovery for private car owners	49
1821	Gympik	Consumer Internet	Fitness Centres, Gym Discovery online marketplace	49
1822	Testbook	Consumer Internet	Online Test Preparation Platform	4
1823	IQlect	Technology	Big Data Analytics Platform	49
1824	MoMark	Consumer Internet	Mobile Wallet Aggregation platform	7
1825	Skedool	Consumer Internet	AI based Office Assistant Mobile App	80
1826	Systemantics	Technology	Industrial robots maker	49
1827	Vertuals	Technology	Audio Visual Digital Content creators for Brands	4
1828	Imarticus Learning	Education	Financial Services & Analytics Education Institute	4
1829	Shouut	Consumer Internet	Social Discovery Mobile app	3
1830	TinyStep	Consumer Internet	Parenting Social Network Platform	49
1831	Aahaa	ECommerce	Office Products Super Store	5
1832	Arcatron Mobility	Technology	Smart wheelchair Design and Development	6
1833	FTCash	Consumer Internet	Mobile Payments Platform	47
1834	Civilsdaily	Consumer Internet	Civil Services News Aggregator	3
1835	Zappka	Consumer Internet	Mobile App discovery and review platform	2
1836	Tarusa World	ECommerce	Handicraft products eTailer	4
1837	medECUBE	Healthcare	Healthcare related Services provider	2
1838	N.O.W	Consumer Internet	Bike Taxi Service & Hyperlocal Delivery App	7
1839	Ninjacart	ECommerce	B2B marketplace for Farmers & Retailers	49
1840	Reach	Consumer Internet	Cross Platform P2P file sharing mobile app	49
1841	Vanity Cube	Consumer Internet	Hyperlocal Beauty Services platform	3
1842	Wooplr	ECommerce	Curated Fashion ECommerce portal	49
1843	Medidaili	Consumer Internet	Medical Support service platform	49
1844	Finomena	Technology	Credit Worthiness Big Data Analytics	3
1845	Cookaroo	Consumer Internet	Food Delivery Platform	49
1846	vPhrase Analytics	Technology	AI based data analytics platform	4
1847	LoveCycles	Consumer Internet	Women\\\\xe2\\\\x80\\\\x99s health Tracker	49
1848	Kartrocket	ECommerce	ECommerce SAAS platform	3
1849	dunzo	Consumer Internet	Daily Task Management App	49
1850	Indiamart	ECommerce	B2B Marketplace for SMBs	7
1851	SmartVizX	Technology	Virtual Reality Solutions	7
1852	MyGubbi	Real Estate	Interior Design & Home D\\\\xc3\\\\xa9cor Solutions	49
1853	Nukkad Shops	Consumer Internet	Hyperlocal Grocery Delivery Service	15
1854	Cloudacar	Consumer Internet	Carpooling Mobile App	6
1855	Justride	Consumer Internet	Self Drive Car Rental	4
1856	Yana	Consumer Internet	Personal AI Transaction Engine App	2
1857	Big Fish Ventures	Food & Beverage	premium dining lounges Chain	3
1858	Stylflip	ECommerce	Pre-Owned Fashion marketplace mobile app	4
1859	Icertis	Technology	Contract Management Software Solutions platform	81
1860	Supplified	ECommerce	Construction material eTailer	3
1861	JollyFoodFellow	Technology	Food Related Marketing & Branding platform	54
1862	PinkBlue	ECommerce	Medical Supplies eTailer	49
1863	TruckingCube	Logistics	Domestic, Commercial, and Industrial Goods Movers	3
1864	eSwasthya	Consumer Internet	Online Medicine Delivery Aggregator	54
1865	FlipClass	Consumer Internet	Tutor Search Platform	49
1866	Proximit	Technology	Advertising Technology	6
1867	WithMe	Consumer Internet	Personalized Fashion App	2
1868	Gapoon	Consumer Internet	Hyperlocal Home Maintenance services	49
1869	Avagmah	Consumer Internet	Online Education Portal	49
1870	WorkIndia	Consumer Internet	Online Job Board	4
1871	Wealthy	Consumer Internet	Online Investment management portal	49
1872	Pramati	Healthcare	Specialized Patient Care platform	7
1873	Qlivery	Consumer Internet	Ondemand Concierge Service	2
1874	HealthEnablr	Consumer Internet	Doctor Discovery and booking platform	4
1875	Liftiee	Consumer Internet	Car/ bike Pooling App	4
1876	Hello Curry	Food & Beverage	Quick Service Restaurant Chain	15
1877	goSporto	Consumer Internet	Online Sports discovery and booking platform	3
1878	OneClickWash	Consumer Internet	Online Laundry & Washing service Booking & Delivery	2
1879	Girnar Software	Consumer Internet	Online News Media Network	33
1880	Room On Call	Consumer Internet	Budget hotel aggregator	2
1881	Byju\\\\xe2\\\\x80\\\\x99s	Consumer Internet	Educational Video Content Creator	49
1882	BigBasket	eCommerce	Online Grocery Shop	49
1883	DrivoJoy	Consumer Internet	On-demand 2-wheeler Servicing platform	49
1884	Smartron	Technology	Internet of Things Device manufacturer	49
1885	LifCare	Consumer Internet	Online Pharmacy portal	33
1886	CreditSeva	Consumer Internet	Online Credit management tools	15
1887	CityShor	Consumer Internet	online lifestyle media recommendation portal	54
1888	Endless Robotics	Technology	Interior Painting Automation	15
1889	SP Robotics	Technology	Robotic Classes for Students	5
1890	StalkBuyLove	eCommerce	Fashion eTailer	3
1891	eKincare	Consumer Internet	Healthcare related solutions	15
1892	HashLearn	Consumer Internet	Mobile based private tutoring services	\N
1893	Wheelstreet	Consumer Internet	Online Bike Rental platform	49
1894	Horntell	Consumer Internet	Unified Push Notification service	2
1895	Schoolkart	eCommerce	Online Marketplace for Schools	7
1896	HealthEminds	Consumer Internet	Online mental healthcare	49
1897	Babygogo	Consumer Internet	Child healthcare experts aggregator mobile app	3
1898	Veritas Finance	Finance	Asset Based Lending platform	5
1899	QikShip	Consumer Internet	Mobile based Logistics provider	3
1900	FixNix	Consumer Internet	GRC SAAS Platform	5
1901	True Balance	Technology	Mobile Balance Check App	2
1902	Touchkin	Healthcare	Predictive Healthcare platform	49
1903	SwitchMe	Consumer Internet	Home Loan Rate comparison platform	4
1904	Transcell	Healthcare	Family Stem Cell Banking Services	15
1905	Blue Tokai Coffee	ECommerce	Specialty Coffee Etailer	3
1906	Altizone	Technology	IoT & M2M Solutions	6
1907	Oust App	Consumer Internet	Competitive Exam Preparation Platform	49
1908	Strike	Consumer Internet	Mobile Email productivity tool	49
1909	MaaxMarket	Consumer Internet	Marketing Automation platform	\N
1910	Gamooz	Technology	Augmented Reality Solutions	2
1911	SoundSurround	Technology	Audio Technology Solutions	4
1912	Mazkara	Consumer Internet	Beauty & Wellness Platform	82
1913	RoadGods	ECommerce	Auto Spare Parts eTailer	3
1914	Pindropmusic	Consumer Internet	Music Discovery Mobile App	7
1915	Woodpie	Consumer Internet	Book Recommendation Service	49
1916	Perfumery	ECommerce	Fragrances & Perfume eTailer	3
1917	Magic Crate	Education	Children Education Platform	49
1918	ZenDrive	Technology	Safe Driving Data & Analytics platform	83
1919	Smartcooky	ECommerce	Marketplace for Health Foods	3
1920	Turtlemint	Consumer Internet	online personalized insurance platform	4
1921	BHIVE	Real Estate	Workspace Rentals	49
1922	Gingercrush	Ecommerce	Personalized Products & Merchandize eTailer	60
1923	American Vision	Consumer Internet	Optical Store Aggregator Platform	6
1924	DawaiLelo	Consumer Internet	Healthcare Services & Online Pharmacy Mobile App	84
1925	Heads Up For Tails	Ecommerce	Pet Products eTailer	3
1926	LiveNutriFit	Healthcare	Weight loss & Healthcare Info portal	3
1927	Moglix	Ecommerce	Industrial & Home Products Marketplace	3
1928	iStyleYou	Consumer Internet	Personal Fashion Stylist App	2
1929	AdUrCup	Consumer Internet	Ad Network	3
1930	Weddingz	Consumer Internet	online marketplace for wedding venues and vendors	4
1931	Urban Dhobi	Consumer Internet	On Demand Laundry Services	33
1932	Gray Routes	Consumer Internet	Last mile logistics solutions	4
1933	Xpressbees	ECommerce	ECommerce Logistics solutions	6
1934	Invictus Oncology	Healthcare	Cancer therapeutic Info & Solutions	3
1935	Hansel.io	Technology	Mobile App Tech Solutions	49
1936	Inc42	Consumer Internet	Startup Focused Media News Portal	3
1937	GOQii	Technology	Personalized fitness coaching & Fitness band	4
1938	Capzest	Consumer Internet	Digital Lending Platform	4
1939	GlamStudios	Consumer Internet	Online Salon Aggregator	7
1940	Affimity	Consumer Internet	Social Networking platform	49
1941	Anandakanda	Technology	Medicine Intake Reminder System	6
1942	JoulestoWatts	Technology	IT services & Talent collaboration services startup	49
1943	Shopkirana	Consumer Internet	Retailer Supply Chain platform	36
1944	Stylofie	Consumer Internet	Online Beauty Parlour search & discovery Platform	2
1945	OyBob	eCommerce	Hyperlocal Products & Services marketplace	2
1946	ActOnMagic	Technology	Cloud Analytics and Management Products	49
1947	Bonhomia	Food & Beverage	premium Tea and Coffee	3
1948	iGrenEnergi	Technology	Solar Power Solutions	4
1949	RKSV	Consumer Internet	Online Stock Trading Platform	4
1950	Aasaanjobs	Consumer Internet	Online Recruitment Marketplace	4
1951	Snapdeal	eCommerce	Horizontal Online Marketplace	3
1952	Jugnoo	Consumer Internet	Transportation & On-demand delivery aggregator	44
1953	Snapbizz	Technology	Connectivity platform for local grocery stores	49
1954	GoYaNo	Consumer Internet	Events & Restaurant Discovery Marketplace App	2
1955	RentSher	Consumer Internet	Online Household Product Rental platform	49
1956	Buddy	Finance	Micro Lending Platform for eCommerce purchases	49
1957	Legistify	Consumer Internet	Online Legal services platform	3
1958	TableHero	Consumer Internet	Dynamic Restaurant Website creator	49
1959	BetterPlace	Technology	Data analytics based Verification services Platform	49
1960	Salebhai	eCommerce	Sweets, Eatables, Handicrafts Online Marketplace	54
1961	icustommadeit	eCommerce	Professional Custom creators Marketplace	6
1962	Tring	Consumer Internet	Instant Messaging App	6
1963	Medinfi	Consumer Internet	Doctor & Clinics Discovery platform	49
1964	Timemytask	Consumer Internet	On-Demand home cleaning services	4
1965	GameZop	Technology	Mobile Gaming Platform	3
1966	Notary Mama	Consumer Internet	On-demand Legal documentation and registration service	49
1967	The Viral Fever	Consumer Internet	Independent Online Video production company	4
1968	Avanti Learning	Education	Private Coaching Classes	3
3016	Ping Digital	\N	\N	\N
1969	Bollant Industries	Technology	Eco-friendly consumer & packaging products	15
1970	GetVee	Consumer Internet	Matrimony & Couples only mobile platform	3
1971	HealthKumbh	Consumer Internet	Health related Information portal	54
1972	Unlaze	Consumer Internet	Social Networking app for outdoor interests	2
1973	Tracxn	Technology	Indian Startup ecosystem trends analyzer & funding platform	49
1974	Careongo	ECommerce	Online Pharmacy store	3
1975	Ark Robot	Technology	Warehouse Automation	49
1976	Jaypore	ECommerce	Ethnic Products marketplace	3
1977	Finance Buddha	Consumer Internet	Online Loan Comparison & Discovery platform	49
1978	AlmaConnect	Consumer Internet	Alumni social network	3
1979	Advantage Club	Consumer Internet	mobile platform for corporate employee benefits	2
1980	LocalRamu	Consumer Internet	mobile based aggregator for local service providers	49
1981	Baby Berry	Consumer Internet	Parenting Mobile app	49
1982	Magicpin	Consumer Internet	Hyperlocal Discover Mobile App	3
1983	First Eat	Consumer Internet	Healthy Food Delivery platform	3
1984	SigTuple	Technology	Healthcare based Tech Solutions	49
1985	Taskbob	Consumer Internet	Hyperlocal Handyman services platform	4
1986	Styledotme	Consumer Internet	Mobile Fashion App	3
1987	NewsLaundry	Consumer Internet	Independent News Media Portal	3
1988	CupoNation	Consumer Internet	Deals and Discount platform	2
1989	Aarav UAV	Technology	unmanned aerial vehicles creator	77
1990	Sayfix	Consumer Internet	Hyperlocal Home Services Provider	49
1991	LoanZen	Consumer Internet	Peer to peer Lending marketplace	49
1992	NoBroker	Consumer Internet	Peer to peer property listing platform	49
1993	AppilyEver	Consumer Internet	Online wedding services marketplace	15
1994	Pocketin	Consumer Internet	Hotel reservations & Deal platform	7
1995	FeetApart	Consumer Internet	Employee engagements & Rewards platform	49
1996	OfBusiness	eCommerce	B2B commerce Marketplace	2
1997	CarveNiche	Consumer Internet	Personalized Learning Solutions & products	49
1998	Juspay	Consumer Internet	Digital Payments solutions	49
1999	Funcart	eCommerce	Party Supplies Etailer	3
2000	Freedom Smart Labs	Technology	IoT retail solutions	3
2001	EduBridge	Consumer Internet	Skill development and vocational training platform	4
2002	Nestaway	Consumer Internet	Online Home Rental Marketplace	49
2003	Hopscotch	eCommerce	Baby & Kids Products Online Flash sales platform	4
2004	PinClick	Consumer Internet	Online real estate listings	49
2005	Smartcooky	ECommerce	Health Food / Personal Care Marketplace	3
2006	Helpi	Consumer Internet	On Demand Cleaning Services Mobile App	4
2007	DogSpot	ECommerce	Online Pet Store	2
2008	Career360	Education	College Education Portal	3
2009	B9 Beverages	Food & Beverage	Craft Beer manufacturing company	3
2010	WIMWI Foods	Food & Beverage	Healthy food manufacturing & sales startup	54
2011	MyChild App	Education	Child Disorder Information & Education	30
2012	Instaproc	ECommerce	B2B Procurement Marketplace for Office Products	7
2013	360Ride	Consumer Internet	Ride Sharing platform	49
2014	Alef\\\\nMobitech	Consumer Internet	Cloud Mobility Solutions	4
2015	Tracxn	BFSI	Startup Funding Deal Discovery & Execution platform	49
2016	Qdesq	Real Estate	Branded Workspaces Aggregator	2
2017	Sensara	Technology	TV Search, Guide and Remote mobile app	49
2018	Zebpay	Consumer Internet	Bitcoin Buying & Selling Mobile App	54
2019	PlanMy\\\\nMedicalTrip	Healthcare	Medical Tourism platform	6
2020	MyCity4Kids	Education	Children Education & Information platform	2
2021	Justdakhila.com	Education	School Student admissions platform	3
2022	PitStop	Consumer Internet	Automobile Service Booking App	49
2023	Bikxie	Consumer Internet	Two Wheeler Taxi Service	2
2024	Infurnia	Consumer Internet	Online Furniture Customization platform	49
2025	Myly	Education	Mobile Based Education platform	33
2026	MakeMyTrip	Consumer Internet	Online Travel/Hotel Booking platform	2
2027	Melorra	ECommerce	Online/ Mobile Jewellery Retailer	49
2028	ConfirmTKT	Consumer Internet	Train PNR Status Prediction Platform	49
2029	Gyaanzone	Education	Career Planning and Education Advisory Platform	4
2030	FlatFurnish	Consumer Internet	Online Furnishing Rental Platform	2
2031	Lumiere	ECommerce	Organic Food eTailer	49
2032	Koovs	ECommerce	Online Fashion Apparel Retailer	2
2033	Wishup	Consumer Internet	Mobile app based Concierge Service	3
2034	FreshMenu	Consumer Internet	Online / Mobile Food Ordering platform	49
2035	SavvyMob	ECommerce	Last Minute Hotel Bookings mobile marketplace	49
2036	Fashionablyin	Consumer Internet	Mobile based Geo-target Fashion Marketplace	4
2037	Shopclues	ECommerce	ECommerce Marketplace	2
2038	Hike Messenger	Consumer Internet	P2P Messaging Service	3
2039	iBus Networks	Technology	Next Generation in-building connectivity	49
2040	Happy2Refer	Consumer Internet	Mobile based Referral Platform	4
2041	CarTrade	Consumer Internet	Auto Classifieds Portal	4
2042	Rentomo	Consumer Internet	peer-to-peer renting Marketplace	49
2043	Roder	Consumer Internet	inter-city cab aggregator	3
2044	Bucker	Consumer Internet	Food Ordering Mobile App	15
2045	Care24	Healthcare	Professional Health Services Platform	4
2046	Obino	Healthcare	Weigh Loss Coaching	4
2047	Snapshopr	Consumer Internet	Visual Search & Image Recognition Platform	49
2048	Buildkar	ECommerce	Construction Material Marketplace	49
2049	Orahi	Consumer Internet	Carpooling Mobile App	2
2050	Zapr	Technology	TV to Mobile audience Platform	2
2051	Remidio	Healthcare	Healthcare Product Manufacturer	49
2052	Fitso	Consumer Internet	Fitness related Social Networking App & Forum	2
2053	evibe.in	Consumer Internet	Party Hall Booking platform	49
2054	Zoctr	Consumer Internet	healthcare aggregator platform	4
2055	Jobick	Consumer Internet	Mobile app based Job Search	7
2056	Plick	Consumer Internet	Instant Content Transfer Mobile App	4
2057	Voice Friends	Consumer Internet	Dating & Singles Chat Platform	4
2058	Kartrocket	Consumer Internet	SAAS DIY\\\\xc2\\\\xa0 ECommerce Platform	3
2059	Swiggy	Consumer Internet	Online/Mobile food ordering platform	49
2060	TinyStep	Consumer Internet	Parenting Social Network	49
2061	Cashkaro	Consumer Internet	Coupon & Cashback platform	2
2062	Gameezop	Consumer Internet	Casual Gaming platform	3
2063	DailyObjects	ECommerce	Mobile Accessories etailer	3
2064	Indus OS	Technology	Local language Mobile OS	4
2065	CollegeDunia	Consumer Internet	Educational College Search platform	3
2066	Villgro	Finance	Social Business Incubator & Fund	5
2067	Reddoorz	Consumer Internet	Budget Accomodation Aggregator	3
2068	IndustryBuying	ECommerce	B2B Industrial Goods Marketplace	3
2069	Just Buy Live	ECommerce	B2B Marketplace for Distributors	4
2070	IMbesharam	ECommerce	Adult Products Etailers	85
2071	Moodoo	Consumer Internet	Social Meeting organizer App	86
2072	Saral Designs	Healthcare	Women Hygiene Product Manufacturer	4
2073	FirstCry	ECommerce	Kids Focused eTailer	6
2074	Fisdom	Consumer Internet	Personal Finance Mobile App	49
2075	Easypolicy	Consumer Internet	Online insurance policy aggregator	7
2076	Housing.com	Consumer Internet	Online Real Estate Portal	4
2077	CREO	Technology	Smartphone OS Developer	49
2078	ShabdaNagari	Consumer Internet	Hindi Language Social Networking Portal	77
2079	Little	Consumer Internet	Deal Discovery App	49
2080	SnapBizz	ECommerce	Mobile based Retail Market Ecosystem	49
2081	Qlivery	Consumer Internet	on-demand concierge services	2
2082	PlexusMD	Consumer Internet	Social Network for Healthcare Professionals	54
2083	Silvan	Technology	Home Automation & Security Solutions	49
2084	EPS	Technology	Electronic Payments Solution Company	4
2085	Qubole	Technology	Enterprise Cloud Based Data Processing	49
2086	Gajty	Healthcare	Salons & Spa Chain	2
2087	SIFTR Labs	Consumer Internet	Photography curation & Aggregator platform	4
2088	Power2SME	Consumer Internet	SME Online Buying Hub	2
2089	SkyCandle	ECommerce	Home D\\\\xc3\\\\xa9cor Product etailer	3
2090	Teabox.com	ECommerce	Specialty Tea ETailer	74
2091	Buildzar	ECommerce	Construction Material ETailer	2
2092	Applicate	Technology	Sales, Market, Distribution & Data Analytics Platform	49
2093	WhatsOnRent	ECommerce	Online Rental Marketplace	49
2094	Zebi (yet to launch)	Technology	Data Intelligence & Analytics	15
2095	Truce	FMCG	Vegetables & Fruits Supply Chain	4
2096	JustDoc	Consumer Interne	Medical Video Consultation platform	49
2097	Myeglu	Technology	Connected Smart Home Solutions	49
2098	BitGiving	Consumer Internet	Crowd Funding Platform	3
2099	Qriyo	Consumer Internet	Online Fitness & Educational information Aggregator	87
2100	N.O.W	Consumer Internet	Rental Bike Aggregator App	7
2101	Aisle	Consumer Internet	Indians focused Matchmaking App	49
2102	FreshMenu	Consumer Internet	Fresh Food Delivery platform	49
2103	Truebil	ECommerce	Online marketplace for cars	4
2104	Rare Media	Technology	Mobile & Cloud based App developer	3
2105	TinMen	Consumer Internet	Food Delivery Platform	15
2106	CodingLabs	Technology	Coding Skill Showcase & Resume Builder	15
2107	FindUrClass	Consumer Internet	Hobby & Activity Class Aggregator	4
2108	DesignBids	Consumer Internet	Interior Design Marketplace	3
2109	CollegeDekho	Online Education Information platform	\N	33
2110	Black White Orange Brands	Brand Licensing Startup	\N	4
2111	Biteclub	Gourmet Food Discovery & Delivery platform	\N	2
2112	Patel Logistics	Transportation & Logistics Platform	\N	4
2113	Wigzo	Enterprise Marketing Automation platform	\N	3
2114	Zapluk	Health, Wellness & Beauty Services App	\N	15
2115	Godof Hospitals	Digital Healthcare	\N	3
2116	RoomsTonite	Last Minute Hotel Booking App	\N	49
2117	Kaaryah	Womens Fashion Wear Portal	\N	3
2118	Anakage	Product Learning platform	\N	49
2119	EasyKhaana	Online Food ordering & Delivery platform	\N	3
2120	Shuttl	App based Bus Pooling Services	\N	2
2121	Eckovation	Social Learning Platform	\N	3
2122	Fitcircle	Social Fitness platform	\N	4
2123	Applop	On Demand Mobile app developer	\N	47
2124	CaRPM	Car Maintenance & Management mobile app	\N	2
2125	NDTV Wedding portal	Online Wedding Marketplace	\N	3
2126	Splitkart	Splitting Bills Mobile App	\N	3
2127	Zenatix	IOT Energy Management Analytics platform	\N	2
2128	Customfurnish	Custom Made furniture e-tailer	\N	15
2129	Faasos	QSR Chain	\N	6
2130	Vlurn	eLearning platform	\N	4
2131	Leaf Wearables	Smart Safety Wearable Devices	\N	3
2132	Coolshare	Cab Sharing service Mobile app	\N	4
2133	mFicient	Cloud Enterprise Mobility Platform	\N	3
2134	HeyBiz	Online Shopping Assistant Mobile app	\N	3
2135	Yumist	Home Cooked Food Order & Delivery platform	\N	2
2136	Jigsaw Academy	Online School for Analytics learning	\N	49
2137	JoeHukum	Chat based personal Assistant App	\N	2
2138	Voxweb	Picture creation & Social mobile app	\N	4
2139	Aye Finance	Nonbanking finance company	\N	3
2140	JumboBasket	eCommerce returns etailer	\N	44
2141	BlackBuck	Online Freight Services Aggregator	\N	49
2142	HomeStudio	Online Branded Furniture etailer	\N	49
2143	PropheSee	Digital Analytics Platform	\N	3
2144	i2e1	Internet Network Infrastructure Services	\N	3
2145	Holisol Logistics	Supply Chain & Logistics Solutions	\N	3
2146	Stay Simple Resorts	Holiday Resort Chain	\N	49
2147	Paynear	Mobile Point of Sale solutions	\N	15
2148	Chillr	Peer-to-Peer Money Transfer & Recharge App	\N	4
2149	EureQa	Test Automation SAAS platform	\N	88
2150	LocalCircles	Citizens Engagement Platform	\N	7
2151	GetFocus	Indoor Navigation & Analytics Solutions	\N	4
2152	UrbanClap	Hyperlocal On-Demand Household Services platform	\N	2
2153	OnlineRTI	Online RTI application services	\N	49
2154	Powerstores	ECommerce Website Creation SAAS platform	\N	56
2155	Weddingz.in	Wedding Venues & Vendors Marketplace	\N	4
2156	Intelligent Interfaces	Interface development platform for Government officials	\N	49
2157	Capricoast	Modular Furnishings Marketplace	\N	49
2158	JetSetGo	Private Jet Bookings Marketplace	\N	49
2159	Cabsguru	Cab search Comparison & Booking platform	\N	3
2160	Whoop	Performance Optimization Platform for athletes	\N	89
2161	BookEventz	Event Venue Booking Platform	\N	4
2162	Deal Street Asia	Digital Media Platform	\N	21
2163	Streamoid	visual search and discovery platform	\N	90
2164	Housejoy	Home services marketplace	\N	49
2165	Bluebirch	End to End reverse logistics Solution platform	\N	49
2166	MeraDoctor	Virtual Health consultation app	\N	4
2167	STAGE 3	Online Renting platform	\N	3
2168	Rivigo	Logistics Services Provider	\N	2
2169	Springboard	Data Science & UX design Learning platform	\N	49
2170	Eatfresh	Online marketplace for Chef Meals	\N	49
2171	Ampere Vehicles	Electric Bike Manufacturers	\N	48
2172	Focus Digit	ECommerce platform solutions	\N	3
2173	The News Minute	Online Media Publication	\N	49
2174	CBREX	International Hiring Platform	\N	91
2175	TruckMandi	Logistics Service Provider Marketplace	\N	3
2176	Peppertap	Hyperlocal\\\\xc2\\\\xa0 Grocery Delivery Service	\N	2
2177	KOOH Sports	Sports Education Platform	\N	4
2178	RentOnGo	Bike, Appliances Renting marketplace	\N	49
2179	Industrybuying	Online Marketplace for Industrial Goods	\N	3
2180	Zapr	Reward points mobile app	\N	2
2181	LatestOne	Mobile accessories online store	\N	15
2182	PlanetGogo	Content Discovery & reward points platform	\N	2
2183	Arya.ai	Artificial Intelligence platform	\N	4
2184	Doctor Insta	Medical Consultation & Doctor appointment booking platform	\N	2
2185	MobieFit	Mobile Fitness App	\N	56
2186	LafaLafa	Digital Coupons, Deal & Cashback aggregator app	\N	4
2187	Mech Mocha	Mobile Game development & Design platform	\N	49
2188	Shotang.com	B2B eCommerce Marketplace	\N	49
2189	CityFurnish	Furniture and appliances rental platform	\N	2
2190	Black White Orange	B2B Merchandize platform	\N	4
2191	Kolabro	Real Estate focused Tech platform	\N	2
2192	Canvera	Photographer Online search & booking platform	\N	49
2193	Town Essentials	Grocery Delivery platform	\N	49
2194	Bumper	Mobile Car Servicing appointment app	\N	49
2195	Hotify	New Curation Mobile App	\N	49
2196	MobiKwik	Mobile Wallet	\N	2
2197	Intelligent Interfaces	Interface development platform for Government officials	\N	49
2198	Twigly	Online Food Ordering & Delivery platform	\N	2
2199	CityFlo	Bus Aggregation and rental mobile app	\N	4
2200	Findyahan	hyperlocal online Services platform	\N	7
2201	Sabse	WiFi \\xe2\\x80\\x93 first Cloud communication platform	\N	4
2202	Pokkt	Alternate Mobile Monetization platform	\N	4
2203	oibanit	Online Food Ordering Marketplace	\N	60
2204	Stuffed	Quick Service Restaurant & Online Delivery	\N	4
2205	LoanBaba	Online Loans Marketplace	\N	4
2206	Deyor Rooms	Budget Hotels Aggregator	\N	3
2207	Bidgely	Efficient Energy Management platform	\N	92
2208	Shirsa Labs	Digital Intelligent learning platform	\N	4
2209	Paytunes	Voice Call incentivization mobile app	\N	3
2210	YourDOST	Online Counselling and psychological support platform	\N	64
2211	BookMyBai	Domestic Help Aggregation platform	\N	4
2212	MyIndianStay	Home Stay & room rentals platform	\N	56
2213	Bobble	Selfie Mobile App	\N	3
2214	RepUp	Online Reputation Management Platform	\N	2
2215	Satvacart	Online Grocery platform	\N	2
2216	POPxo.com	Online content platform for women	\N	3
2217	SparesHub	Online Vehicle Spare Parts etailer	\N	6
2218	Explara	Event Ticketing platform	\N	6
2219	Soothe Healthcare	affordable Personal Healthcare Products	\N	7
2220	Yuvi Hospitality	Premium dining Lounges & restaurants	\N	2
2221	AppVirality	Mobile Growth Hacking\\\\nPlatform	\N	15
2222	iStar Skill Development	Skill Training Startup	\N	49
2223	BigStylist.com	Beauty and Wellness Marketplace	\N	4
2224	Zilingo	Marketplace App for Bangkok	\N	69
2225	Didi	On-demand Maids Service Provider	\N	4
2226	Skoov.com	eCommerce Product Search Engine	\N	4
2227	Chefs Basket	Ready to cook packaged Foods	\N	4
2228	Gingercrush	Product Customization Platform	\N	60
2229	Delight Foods	Branded Food products online sales	\N	49
2230	6Degree	Talent platform for Fashion professionals	\N	93
2231	RenewBuy	Auto Insurance Online platform	\N	2
2232	Grab	Hyperlocal Logistics Service Provider	\N	4
2233	Hitwicket	Cricket Management Mobile Game	\N	15
2234	Flashdoor	On Demand Laundry Service platform	\N	49
2235	Cashkaro.com	Ecommerce Discount & Cashback coupons platform	\N	2
2236	Absentia	Virtual Reality Headset creator	\N	49
3017	HealthyWorld.in	\N	\N	\N
2237	Renowala	Home Improvement Service platform	\N	15
2238	TaskBucks	mobile-only tasks marketplace	\N	3
2239	CraftsVilla	Women Ethnic Wear\\\\xc2\\\\xa0 Online Marketplace	\N	4
2240	Julia Computing	Numerical Computing & Data Science Platform	\N	49
2241	StyleTag	Designer fashion Jewellery Marketplace	\N	49
2242	Smytten	Online Products Discovery Platform	\N	2
2243	BiBox	Kids Tool kit for Innovation platform	\N	49
2244	Convegenius	Mobile Learning Solutions	\N	94
2245	Ola	Car Aggregator & Retail Mobile App	\N	49
2246	Goodbox	conversational commerce mobile app	\N	49
2247	ScoopWhoop	Viral Content web Platform	\N	3
2248	Hipship	Express local delivery platform	\N	49
2249	Pickrr	On-Demand Local Logistics provider	\N	3
2250	Truelancer	Curated Freelancer Marketplace	\N	3
2251	AHA Taxis	Online Taxi Rental Platform	\N	7
2252	UrbanClap	Mobile Services Marketplace	\N	2
2253	SenseGiz	Smartwatch Maker	\N	95
2254	PlaceofOrigin	Online Gourmet Food Marketplace	\N	49
2255	Fourseven	Online Jewellery etailer	\N	3
2256	MindTickle	Sales & Productivity Software	\N	96
2257	Shopsense	ecommerce related software product platform	\N	4
2258	Medinfi	Health-Tech platform	\N	49
2259	OUWT	Nightlife Discovery Mobile App	\N	4
2260	HeyPillow	Online Real Estate Marketplace	\N	49
2261	Healers At Home	Home Healthcare Services platform,	\N	3
2262	Caravan Craft	Indian Ethnic Crafts Etailer	\N	49
2263	Talkoot	Social platform for traders and investors	\N	49
2264	RentoMojo	Online Furniture, Home Appliances Rental Platform	\N	49
2265	Medikoe	Healthcare Services Discovery platform	\N	49
2266	Stylofie	Health and Beauty Services Marketplace	\N	2
2267	ServX	Automotive Services platform	\N	3
2268	Naaptol	Online and TV Shopping Marketplace	\N	4
2269	Crayon Data	Big Data Analytics Platform	\N	97
2270	EarlySalary.com	Mobile App based Loan disbursement platform	\N	4
2271	Tooler	On Demand Laundry Services App	\N	3
2272	S Chand	Education Content Provider	\N	3
2273	Stelae	Content Management Software Solutions	\N	5
2274	GoQii	Fitness Tracking Management Solutions	\N	4
2275	Grofers	Hyper-local Grocery Delivery platform	\N	2
2276	Pluss	Hyperlocal healthcare product Delivery Service provider	\N	2
2277	KountMoney	Online Lending Marketplace	\N	49
2278	StayGlad	On Demand Beauty Services Platform	\N	49
2279	JustRide	Self Driven Rental Car Platform	\N	4
2280	Fastudent	Education Content etailer	\N	7
2281	LearnOn	Clud based Learning platform	\N	5
2282	Talentrack	Talent Exchange & Talent Services Marketplace	\N	3
2283	M-TAXI	Two-Wheeler Taxi Service	\N	2
2284	Baxi	Two-Wheeler Taxi Service	\N	2
2285	Superhero Brands	character merchandize sales platform	\N	4
2286	MoMagic	Mobile Application Developer	\N	3
2287	QikPod	Ecommerce Delivery locker services	\N	49
2288	Butterfly Interactive	extra curricular activities marketplace app	\N	3
2289	Bro4U	Hyperlocal Online Home services provider	\N	49
2290	Indifi	Easy Business Loans platform	\N	2
2291	Wydr	Performance based Wholesale Marketplace	\N	3
2292	EasyFix	Professional Services Marketplace	\N	2
2293	Muvizz	Movie-on-demand platform	\N	21
2294	Abhibus	us ticketing and fleet management platform	\N	15
2295	Cleartax	Online Income Tax Filing platform	\N	3
2296	Shopalyst	Product discovery & recommendation platform	\N	49
2297	Chillr	Mobile Payments App	\N	4
2298	Nykaa	Beauty & Wellness Products e-tailer	\N	4
2299	Voylla	Fashion jewelry and accessories e-tailer	\N	33
2300	IndiaLends	Online Consumer Lending platform	\N	3
2301	Rock N Shop	Premium Apparel shopping portal	\N	3
2302	DocPlexus	Exclusive Platform for Doctors & Healthcare professionals	\N	6
2303	WorkIndia	Job Board	\N	4
2304	SportzVillage	Sports Management & Physical Education Business	\N	49
2305	SportyBeans	multi-sport program for preschoolers	\N	6
2306	Burger Singh	QSR & Online delivery portal	\N	2
2307	Welcome Cure	Online Homeopathy Clinic	\N	4
2308	SchoolGuru	E-Learning Service Provider	\N	4
2309	Naturally Yours	Organic Food etailer	\N	4
2310	GoJavas	Delivery & Logistics Service provider	\N	2
2311	Scandid	Product Discovery & comparison App	\N	6
2312	StalkBuyLove	Online Apparels Fashion brand	\N	3
2313	ZuperMeal	Home Cooked Food marketplace & Delivery	\N	4
2314	Cube26	Gesture based Mobile Development	\N	3
2315	Mobikon	Hotel Mobile CRM Software platform	\N	98
2316	Grabhouse	Rental Accommodation Search platform	\N	49
2317	Quifers	Logistics Tech Platform	\N	4
2318	Stockroom.io	Developer Portfolio Showcase platform	\N	15
2319	Curofy	Doctors Network Mobile App	\N	3
2320	Cloud Lending	End-to-End Lending platform	\N	99
2321	Inayo	on-demand healthcare marketplace	\N	4
2322	WoNoBo	360-degree view creating platform	\N	49
2323	Kulzy	Advertising & Marketing Community Networking platform	\N	3
2324	Zeppery	Food Ordering & Delivery App	\N	3
2325	Zify	Ride Sharing platform	\N	15
2326	Faircent	Online P2P lending marketplace	\N	2
2327	Bizongo	B2B marketplace for industrial goods	\N	4
2328	Gridle	Cloud Based Collaboration platform	\N	54
2329	Tripoto	global community for travellers	\N	3
2330	Mubble	Prepaid Bill manager App	\N	49
2331	Voodoo	Mobile Only Shopping Assistant	\N	3
2332	Lookup	Mobile Messaging Assistant App	\N	49
2333	AskMyGift	Personalized Wish List creator app	\N	7
2334	Gaana.com	Music Streaming mobile app	\N	4
2335	Zappfresh	Raw Meat & Ready to eat food etailer	\N	2
2336	GymTrekker	Gym Discovery platform	\N	4
2337	Bounty App	Online Purchase rewards app	\N	49
2338	Homers.in	Home rental platform	\N	2
2339	mShipper	Crowdsourced Delivery platform	\N	3
2340	BolRealty	Real Estate Insights platform	\N	3
2341	S-Cube Futuretech	Structural & Civil Engg Service Automation	\N	4
2342	LetsVenture	Startup Funding Marketplace	\N	49
2343	Citrus Payment	Payments Solution platform	\N	4
2344	Holidify	Travel Destination Discovery platform	\N	3
2345	PrimaSeller	Order Fulfillment SAAS platform	\N	49
2346	Opinio	Last Mile Delivery Service	\N	49
2347	Attune Technologies	Healthcare IT Solutions & services	\N	5
2348	iChef.in	Gourmet Meals Delivery	\N	4
2349	Jiyo Natural	Healthy Meals Food delivery platform	\N	49
2350	AgentDesks	Real Estate Mobile CRM	\N	100
2351	White Owl Brewery	Micro-Brewery	\N	4
2352	MealHopper	Home Made Food Marketplace	\N	2
2353	Zenify.in	residential rental management platform	\N	49
2354	Stockal	Personalized Stock Intelligence Platform	\N	49
2355	Medd	Personal Diagnostic Mobile App	\N	4
2356	Leaping Caravan	Online food ordering & Delivery service	\N	2
2357	Frsh	Online food ordering & Delivery service	\N	2
2358	Qik Stay	Hotel Aggregator & booking platform	\N	3
2359	Parcelled	Online Logistics Platform	\N	49
2360	AlmaMapper	Online Student & Campus Social Networking platform	\N	54
2361	Flexing It	Professionals & Project Search Marketplace	\N	3
2362	Netmeds.com	Online Pharmacy	\N	5
2363	Razorpay	Online Payment Gateway	\N	33
2364	Jombay	Psychometric Test Online Software	\N	6
2365	Happitoo	Location based Nightlife recommendation\\\\xc2\\\\xa0 Platform	\N	4
2366	Care24	Professional Health Services Platform	\N	4
2367	Roadrunnr	Hyperlocal Logistics Service	\N	49
2368	Simpli5d	Online user engagement platform	\N	2
2369	ORIGA Leasing	Asset Financing platform	\N	4
2370	Smartivity.in	Virtual Reality activity based learning platform	\N	3
2371	UrDoorStep	Online Grocery Store	\N	49
2372	Tavaga	Investment management platform	\N	4
2373	Moglix	Industrial Toons Marketplace	\N	7
2374	ZopHop	Public Commute helper App	\N	4
2375	Niki.ai	Artificial Intelligence Ecommerce Chatbot	\N	49
2376	Instavans	Truck Aggregator & Logistics service	\N	49
2377	LiftO	Ridesharing Mobile app	\N	4
2378	TinyOwl	Food Discovery & Delivery Mobile app	\N	4
2379	Toppr.com	Competitive exam learning platform	\N	4
2380	Kleeto	Document Digitization platform	\N	2
2381	BeaconsTalk	proximity marketing & Mobile Advertising platform	\N	4
2382	Jugnoo	Autorickshaw Aggregator & Booking platform	\N	44
2383	TOFlo	FinTech Startup Incubation platform	\N	4
2384	FXMartIndia	Payment Services platform	\N	44
2385	Stylecracker	Personalized Styling platform	\N	4
2386	Luxuryhues	Luxury goods\\\\xc2\\\\xa0 Shopping Platform	\N	2
2387	HolaChef	Food Delivery Platform	\N	4
2388	Zivame	Online Lingerie Marketplace	\N	49
2389	Capillary Tech	Cloud software solutions	\N	3
2390	Jobspire	Job Search Platform	\N	49
2391	MeraDoctor	Doctor consultancy Mobile App	\N	4
2392	Vistaar Finance	Small Business Financing (NBFC)	\N	49
2393	HiJinny	Beauty & Wellness Services Marketplace	\N	4
2394	Clapsnslaps	Online Movie Review Platform	\N	4
2395	Blubox	ECommerce Brands\\\\xe2\\\\x80\\\\x99 Full Service Agency	\N	4
2396	RoomCentral	Cloud-based Hotel Booking Platform	\N	49
2397	YouthKiAwaaz	Community Driven News/Views Platform	\N	3
2398	Prozo	Study Material Marketplace	\N	3
2399	Zomato	Restaurant Ratings & Reviews platform	\N	2
2400	Sahayog Dairy	Dairy Based Product Manufacturer	\N	30
2401	MockBank	Government Test Preparation platform	\N	49
2402	ReportBee	Smart Report Cards for Schools	\N	5
2403	GuruG Learning	Teacher empowerment platform	\N	49
2404	OnlineTyari	Multilingual Test Preparation Platform	\N	2
2405	IndustryBuying	Industrial Tools Marketplace	\N	3
2406	The/Nudge Foundation	Non Profit Organization to alleviate poverty	\N	49
2407	FitMeIn	Gym & Fitness Studios Subscription platform	\N	3
2408	Envoged	pre-used luxury item Marketplace	\N	4
2409	Zapyle	pre-used apparel shopping mobile app	\N	49
2410	Renomania	Home Design & D\\\\xc3\\\\xa9cor platform	\N	3
2411	CredR	Used Vehicles Marketplace	\N	4
2412	YatraGenie	Online Bus & Cab ticketing platform	\N	15
2413	CanvasFlip	Mobile App testing platform	\N	15
2414	Shadowfax	Hyperlocal Delivery Services	\N	2
2415	UE Life Sciences	Early Cancer Detection Solutions	\N	101
2416	Ola Cabs	Cab rental Mobile app	\N	49
2417	Coverfox	Online Insurance Distribution Platform	\N	4
2418	MoEngage	Mobile Marketing Automation Platform	\N	49
2419	Mubble	Prepaid Mobile Bill Manager App	\N	49
2420	Tea Trails	Chain of Tea Caf\\\\xc3\\\\xa9\\\\xe2\\\\x80\\\\x99s	\N	4
2421	Room on Call	Branded Budget Hotel Marketplace	\N	7
2422	FYNE	Home Fitting & Fixtures Marketplace	\N	49
2423	ChaiPoint	Food Subscription platform	\N	49
2424	WedmeGood.com	Wedding Planning Platform	\N	2
2425	XSTOK	B2B Mobile Auction Marketplace	\N	4
2426	UniLog	ECommerce Data Analytics Platform	\N	49
2427	Paintcollar	Designer Merchandize Marketplace	\N	4
2428	YepMe	Private label Fashion eTailer	\N	2
2429	Bueno	Online Food ordering & delivery	\N	2
2430	Plabro	Real Estate Broker Platform App	\N	3
2431	CureJoy	Online Health & Wellness platform	\N	49
2432	Briston Technomach	Internet of Things platform	\N	3
2433	LabStreet	Diagnostic Labs aggregator platform	\N	2
2434	DailyNinja	Hyperlocal Delivery Platform	\N	49
2435	Portea Medical	Home Medical Care Services	\N	49
2436	Neotrade Analytics	Real-Time stock data platform	\N	49
2437	DishCo	Food discovery & table booking app	\N	4
2438	LafaLafa	coupons and cashback aggregator app	\N	4
2439	ConnectAbank	Financial Products lead generation platform	\N	4
2440	VillFarm	Sustainable Agri-inputs Firm	\N	49
2441	Bestdealfinance	Financial Services Portal	\N	4
2442	GameXS.in	Pre-owned games Marketplace	\N	3
2443	The Man Company	Content-based Subscription eCommerce platform	\N	3
2444	Virtual Logic	virtual reality, 3d simulation and stereoscopic products	\N	49
2445	Furdo	Online Interior Designing platform	\N	49
2446	LogiNext	End-to-end Logistics platform	\N	4
2447	Korra	Private Label Apparel sales	\N	3
2448	Credihealth	Healthcare Consulting platform	\N	2
2449	Amigobulls	Stock Market Portal	\N	49
2450	SilverPush	Cross-device retargeting platform	\N	102
2451	Juggernaut	Digital & Physical Publishing platform	\N	3
2452	InnerChef	Food Delivery Platform	\N	3
2453	Quintype	Data Driven Publishing platform	\N	49
2454	Capabiliti	Employee OnBoarding & Orientation platform	\N	7
2455	Fourth Partner Energy	Solar Power Solutions company	\N	15
2456	Licious	Online Meat Ordering platform	\N	49
2457	TravelKhana	online meal-booking platform for train travelers	\N	3
2458	Quickli	hyperlocal delivery platform	\N	3
2459	Ola Cabs	Cab Booking app platform	\N	49
2460	Paytm	E-Commerce & M-Commerce platform	\N	3
2461	Inmobi	Mobile Advertising platform	\N	49
2462	Peppertap	Hyperlocal Grocery Delivery	\N	2
2463	Hugefly	Ecommerce Product recommendation platform	\N	6
2464	Brigge	Activity Based Social Network	\N	5
2465	Zakoopi	Fashion Discovery platform	\N	3
2466	LoanCircle	Consumer lending marketplace	\N	49
2467	Infoworks	Big Data Management Platform	\N	103
2468	RedDoorz	Budget Accommodation Platform	\N	7
2469	FirstTouch	Local Mobile OS	\N	2
2470	Eywa Media	Digital Signal processing platform	\N	49
2471	Snapdeal	Ecommerce Marketplace	\N	3
2472	Ressy	Restaurant Discount app	\N	6
2473	Cuelearn	Tech-enabled learning	\N	3
2474	Connect India	ECommerce Logistics provider	\N	3
2475	The Home Salon	on-demand home beauty and wellness portal	\N	4
2476	Jusride	Self Driven Car rental	\N	4
2477	Oyorooms	Budget Hotel accommodation brand	\N	3
2478	Glowship	Energy & Environment Online Marketplace	\N	49
2479	Wizrocket	User Engagment & Analytics platform	\N	4
2480	Pickingo	On-Demand Delivery Logistics	\N	3
2481	Grex	fund raising platform for startups	\N	6
2482	LetsTransport	Logistics Tech Platform	\N	49
2483	Zo Rooms	Online budget hotel chain	\N	3
2484	Doormint	Hyperlocal Handyman services	\N	4
2485	NightStay	hotel booking app	\N	7
2486	Zocalo	Rental Accomodation finder	\N	3
2487	Sunday Realty Solutions	Tech Platform for property brokers	\N	4
2488	Klozee	Luxury Apparel rental	\N	49
2489	Appvigil	App security\\\\xc2\\\\xa0 testing platform	\N	4
2490	practo	Doctor Appointment booking app	\N	49
2491	LoudShout	anonymous bulletin board app	\N	3
2492	Wetravelsolo	Travel community platform	\N	3
2493	Ketto	Crowd funding platform	\N	4
2494	Ezetap	Mobile based PoS solution	\N	49
2495	NDTV ecommerce venture	Car & Bike ecommerce platform	\N	4
2496	Carl\\\\xe2\\\\x80\\\\x99s Jr	Fast food Chain Franchisee	\N	2
2497	EasyRewardz	Loyalty Programs & Reward Points	\N	4
2498	GIBSS	Energy saving solutions provider	\N	4
2499	StoreMore.in	Self-Storage Spaces	\N	7
2500	iOrderFresh	Grocery retail Mobile app	\N	3
2501	MyTaxiIndia	Taxi Rental platform	\N	2
2502	eSadar	ecommerce	\N	3
2503	Actionable Analytics	Machine Learning Platform	\N	104
2504	MyPoolin	mobile social network	\N	3
2505	NearBuy (previously\\\\xc2\\\\xa0 groupon India)	Hyper-Local Ecommerce	\N	3
2506	Inkmonk	Online printing marketplace	\N	5
2507	ToneTag	mobile payment software platform	\N	49
2508	Grey Orange	Automated Storage & Warehousing Solution	\N	2
2509	Livspace	Home Design & D\\\\xc3\\\\xa9cor solutions	\N	49
2510	WOW! MOMO	Quick Service Restaurant Chain	\N	47
2511	RainCan	Subscription based Online Grocery platform	\N	6
2512	Allygrow Technologies	engineering services company	\N	4
2513	Infogain	Business and IT consulting	\N	85
2514	OneAssist	Credit Card Fraud protection solutions	\N	4
2515	BigBasket	Online & mobile Grocery store	\N	49
2516	Sheroes	Career Community for Women	\N	7
2517	Scripbox	Mutual Fund Investing platform	\N	49
2518	etaout	Ecommerce Marketing Software Platform	\N	7
2519	IFMR Holdings	Financial Inclusion platform	\N	5
2520	Massblurb	Digital Marketing automation solution	\N	4
2521	Agrostar	Mobile Commerce for Farmers	\N	6
2522	VoxWeb	Picture based Social App	\N	4
2523	Trukky	Logistics service platform	\N	54
2524	VanityCube	On-Demand Beauty Services	\N	3
2525	Edu4Share	Exam Preparation Platform	\N	3
2526	YourStory	Startup Focused Online Publisher	\N	4
2527	Sampurnearth	Waste Management Solutions	\N	4
2528	Orobind	App based Fitness coaching	\N	49
2529	Fixy	On demand cleaning & fixing services	\N	4
2530	MSM Box	Beauty & Lifestyle platform	\N	3
2531	ShadowFax	on-demand delivery service	\N	2
2532	Gadgets 360	Car & Bike ecommerce platform	\N	3
2533	Roposo	Fashion Discovery platform	\N	2
2534	IntelligenceNODE	Data Analytics Platform	\N	4
2535	HyperVerge	Deep Learning Cloud Algorithms	\N	5
2536	Twyst	Location based engagement & rewards platform	\N	2
2537	IDfy	Online Identity Verification Services platform	\N	4
2538	Zoojoo.be	Corporate Wellness App	\N	49
2539	Fashionove	Fashion Search & Review Platform	\N	47
2540	TimeSaverz	Hyperlocal Maintenance, Repair & Cleaning services	\N	4
2541	Envoged	pre-owned Luxury online apparel seller	\N	4
2542	MebelKart	Online Furniture Marketplace	\N	49
2543	LabsAdvisor	Online Diagnostic Tests Marketplace	\N	3
2544	Flatpebble	Online marketplace for Photographers	\N	15
2545	Bluegape.com	Visual Blogging platform	\N	3
2546	ePoise	Job Search Platform	\N	49
2547	Jolly Food Fellow	Food Customer analytics platform	\N	54
2548	BookMeIn	Professional Service Appointment booking service	\N	4
2549	iZofy	Scientific Horoscope Online Assistance platform	\N	47
2550	rBus	Tech enabled AC bus service	\N	4
2551	Qyk App	On-Demand App based Professional service provider	\N	49
2552	EazyDiner	Restaurant Reservation Platform	\N	2
2553	RevX	Cross-channel CRM platform	\N	4
2554	ICustomMadeIt	Professional Custom creators Marketplace	\N	6
2555	PickMyLaundry	on-Demand Washing & Dry-Cleaning	\N	3
2556	Belita	On-Demand Beauty Service	\N	4
2557	EzySolare	solar products and services marketplace	\N	54
2558	FoodTalkIndia	Online Food Community Platform	\N	2
2559	InstaSafe	Private Cloud Networks SAAS platform	\N	49
2560	Eazy Coach	Education Marketplace	\N	47
2561	Djubo.com	Cloud Based Hotel Sales Platform	\N	3
2562	BetterButter.in	online recipe sharing platform	\N	3
2563	Vyomo	Beauty & Lifestyle Mobile Marketplace	\N	49
2564	RollMafia	QSR Restaurant Chain	\N	6
2565	iamwire	Digital Media publishing platform	\N	2
2566	DropKaffe	Online Coffee Delivery platform	\N	49
2567	Reverie	Language Localization Cloud platform	\N	49
2568	Infinite Analytics	Big Data & predictive Analysis Platform	\N	4
2569	Parcelled	Online Logistics Platform	\N	49
2570	Retigence Technologies	Business IT Intelligence Services	\N	4
2571	Cloudcherry Analytics	CRM / Analytics platform	\N	5
2572	HandyHome	Hyperlocal Electronics repair Service	\N	4
2573	iDreamCareer	Ed-Tech Platform	\N	3
2574	Ola Cabs	Cab rental Mobile app	\N	49
2575	NxtGen	IT infrastructure & Data Center services	\N	49
2576	BankBazaar	Online Financial Services	\N	5
2577	Gozoomo	Used Car Marketplace	\N	49
2578	Zenatix	Internet of Things platform	\N	2
2579	CultureAlley	Language Learning App	\N	33
2580	Goqii	Mobile Fitness Marketplace	\N	4
2581	Gingercrush	Custom Merchandize platform	\N	54
2582	Elanic	P2P Pre-owned goods marketplace	\N	49
2583	Stitchwood	Custom Furniture Marketplace	\N	4
2584	Urban Tailor	Online Tailoring Services	\N	49
2585	ConfirmtTkt	Rail Ticket Confirmation predictor	\N	49
2586	Paper Boat	Ethnic Beverages manufacturer	\N	2
2587	getNow	Hyperlocal Goods marketplace	\N	35
2588	Wudstay	Budget Accommodation aggregator	\N	2
2589	Liases Foras	Real Estate Rating & Analysis	\N	3
2590	Eatlo	Food Delivery platform	\N	49
2591	IndiaLends	Financial Tech	\N	3
2592	Quinto	Food Discovery App	\N	6
2593	Saavn	Music Streaming App	\N	4
2594	Flytxt	Big Data & Analytics platform	\N	105
2595	Axtria	Big Data & Analytics platform	\N	106
2596	33Coupons	Coupon Aggregator Platform	\N	77
2597	Ampere	Electric Scooter manufacturer	\N	48
2598	Hopping Chef	Online Food-Tech Platform	\N	4
2599	Collectabillia	Celebrity Fashion Brand	\N	49
2600	Lendingkart	Online Finance lending platform	\N	54
2601	Lybrate	Healthcare Mobile App	\N	3
2602	Zoomcar	Self-driven vehicle rental	\N	49
2603	\\\\xc2\\\\xa0News in shorts	\\\\xc2\\\\xa0News Aggregator mobile app	\N	7
2604	\\\\xc2\\\\xa0Bluestone	\\\\xc2\\\\xa0Online Jewellery Store	\N	49
2605	\\\\xc2\\\\xa0Shopsity	\\\\xc2\\\\xa0Fashion Info Aggregator App	\N	2
2606	\\\\xc2\\\\xa0Notesgen	\\\\xc2\\\\xa0Online Study Notes Marketplace	\N	3
2607	\\\\xc2\\\\xa0Infinity Assurance	\\\\xc2\\\\xa0Warranty Programs Service Administration	\N	3
2608	\\\\xc2\\\\xa0Footprints Education	\\\\xc2\\\\xa0Pre-School Chain	\N	2
2609	\\\\xc2\\\\xa0Loylty Rewards	\\\\xc2\\\\xa0Premium Loyalty Rewards Point Management	\N	4
2610	\\\\xc2\\\\xa0Ameyo	\\\\xc2\\\\xa0Contact Center Software Platform	\N	2
2611	\\\\xc2\\\\xa0Mamagoto	\\\\xc2\\\\xa0Casual Dining restaurant Chain	\N	3
2612	\\\\xc2\\\\xa0Satvacart	\\\\xc2\\\\xa0Online Grocery Delivery	\N	2
2613	MySmartPrice	Online comparison engine	\N	15
2614	Zenify	Residential Rental management platform	\N	49
2615	Boxmyspace	Physical Storage warehouses	\N	4
2616	HackerRank	Tech Recruitment platform	\N	49
2617	WickedRide	Bike Rental Platform	\N	49
2618	WoWexpress	Tech enabled logistics platform	\N	4
2619	Oyo Rooms	Budget Hotel Accommodation	\N	2
2620	Mobikon	Restaurant customer engagement platform	\N	6
2621	InstaLively.com	Live video streaming app	\N	3
2622	Roadrunnr	Hyper local logistics platform	\N	49
2623	Ketto	Crowd Funding Platform	\N	4
2624	QuikWallet	F&B sector Mobile Payment platform	\N	4
2625	Omnikart	Industrial Supplies B2B ecommerce	\N	4
2626	Zo Rooms	Online budget hotel chain	\N	3
2627	Innoviti	Payment Solutions platform	\N	49
2628	ZenRadius	Online Hiring Platform	\N	49
2629	Joy by nature	Organic Food ecommerce	\N	3
2630	Iqlect	Big Data & Analytics platform	\N	49
2631	deGustibus	Fine Dining Restaurant Chain	\N	4
2632	Nestaway	Luxury Rental Homes	\N	49
2633	Mswipe	Mobile Point of Sale payment solution	\N	\N
2634	Myonsto	Online Grocers	\N	54
2635	iCrushiFlush	Casual Dating App	\N	4
2636	MedGenome	Clinical Genomics Provider	\N	49
2637	HolidayIQ	Travel information portal	\N	49
2638	Fitternity	Fitness Marketplace	\N	4
2639	Quikr	Online & Mobile classified listings	\N	4
2640	JetSetGo	Private Jet/ Helicopter Marketplace	\N	3
2641	BroEx	Real Estate Broker network App	\N	2
2642	Shopatplaces	Ethnic/ Traditional Fashion Store	\N	3
2643	CredR	Used Bikes Marketplace	\N	4
2644	ManageMySpa	Spa & Salon Management Software	\N	15
2645	Townrush	B2B logistics delivery platform	\N	49
2646	Locus	Logistics Automation Platform	\N	49
2647	Bevy	Online Hiring Platform	\N	49
2648	Pepperfry	Online home d\\\\xc3\\\\xa9cor marketplace	\N	4
2649	Flipkart.com	Online Marketplace	\N	49
2650	Opinio	Hyperlocal food & grocery store	\N	49
2651	Zoctr	Health-Tech platform	\N	4
2652	Zimmber	Hyperlocal Handyman Services	\N	4
2653	trueHb	Medical Tech Instruments	\N	3
2654	Zovi.com / Little App	Hyperlocal Deals Marketplace	\N	49
2655	Swajal	Innovative Water Solutions	\N	2
2656	Pipa Bella	Online Jewelry Store	\N	4
2657	Pragmatix	Business intelligence & Analytics	\N	4
2658	Droom.in	Used Vehicle Marketplace	\N	3
2659	MadRat Games	Educational Board Games	\N	49
2660	Noodle Play	Chinese food delivery	\N	4
2661	Wassup	On-Demand Laundry & Dry cleaning App	\N	5
2662	Cartisan	On-Demand Car services App	\N	49
2663	LazyLad	Hyperlocal Grocery App	\N	2
2664	TripFactory	Online Curated Holiday package bookings	\N	49
2665	Prothom	Hasbro Toy Manufacturer	\N	6
2666	Bona Vita	Travel Tech	\N	2
2667	Vyomo	Beauty and Wellness Platform	\N	3
2668	Veeba Foods	Healthy Food Manufacturer	\N	3
2669	Truebil	Used Car Marketplace	\N	4
2670	Meritnation	Online Learning Platform	\N	3
2671	Eattreatonline	Healthy Food Online Community	\N	3
2672	CredR	Used two-wheeler Marketplace	\N	4
2673	Glamrs	Online Fashion Video Portal	\N	4
2674	Proviera	Probiotic Technology Products Manufacturer	\N	5
2675	Arth DesignBuild	Architectural Design & Consulting	\N	15
2676	Saama	Big Data & Analytics Services	\N	96
2677	AllIzHealth	Preventive Healthcare Services	\N	6
2678	Karma Healthcare	Tech-enabled Rural Healthcare Services	\N	50
2679	Entropy Innovations	Engineering Innovations	\N	4
2680	Propstack	Real Estate Intelligence Platform	\N	4
2681	MyTaxiIndia	Online Car Rental Affiliates	\N	3
2682	Arkin Net	Data Center Software platform	\N	96
2683	Little Black Book Delhi	Online City & Lifestyle Guide	\N	3
2684	MyPoolin	P2P Payments platform	\N	3
2685	iCustomadeit	Bespoke Merchandize Marketplace	\N	6
2686	KAARYAH	Women Lifestyle Marketplace	\N	2
2687	Ecom Express	Logistics Solution Provider	\N	3
2688	Vidooly	Video Intelligence Platform	\N	7
2689	Zopper	Hyperlocal Shopping App	\N	4
2690	Flipkart	eCommerce platform	\N	49
2691	kWatt Solutions	Renewable energy solutions	\N	4
2692	Medwell Ventures	Healthcare\\\\nService provider	\N	49
2693	Jugnoo	Auto Rickshaw Based Services	\N	44
2694	PosterGully	Artist / Designer Marketplace	\N	3
2695	Applied Solar Technologies	Off-grid Solar Power	\N	4
2696	Clovia	Private Label lingerie Ecommerce	\N	3
2697	Swiggy	Online Food Ordering	\N	49
2698	PayMango	Mobile Commerce Platform	\N	2
2699	Printland	Online Printing Services	\N	3
2700	Teritree	Digital Marketing Services	\N	49
2701	Guiddoo	Travel Guide Mobile App	\N	4
2702	Voonik	Fashion Ecommerce store	\N	49
2703	AdStringO	Mobile Compression Software	\N	4
2704	Faircent.com	Peer to Peer Lending platform	\N	2
2705	La Renon	Global Healthcare products	\N	54
2706	Homelane	Home Furnishing Solutions	\N	49
2707	iSTAR	Skill Training & Placement Platform	\N	49
2708	Shippr	Intra-City Logistics service	\N	49
2709	FoodAbhi	online tiffin service aggregator	\N	4
2710	Karma Recycling	Electronic Goods recycling service	\N	12
2711	CouponRaja	Online Coupon & comparison platform	\N	4
2712	Babychakra	Parents & Kids Online platform	\N	4
2713	Jiffstore	Online Grocery platform	\N	49
2714	MyDentist	Dental Clinic chain	\N	4
2715	Moovo	On-Demand Logistics Service	\N	3
2716	Fracktal Works	3D Printer Manufacturer	\N	49
2717	Hansa Customer Equity	IT / Customer Engagement Consulting	\N	4
2718	HealthifyMe	Health & Fitness App	\N	49
2719	CAKART.in	Online Education Marketplace	\N	49
2720	Housejoy	Home services marketplace	\N	49
2721	FundsIndia.com	Financial Services Platform	\N	5
2722	Cupick	Social Network for Artists	\N	49
2723	Tracxn	Startup funding platform	\N	49
2724	Holachef	Food Delivery Platform	\N	4
2725	elong	Data Driven recruitment recommendation	\N	49
2726	Ixigo	Travel Search Engine	\N	2
2727	SkillAngels	Brain Games Platform	\N	5
2728	Vidgyor	Video Advertisement Platform	\N	49
2729	Banihal	Algorithmic Match Making Platform	\N	107
2730	Goodservice	Mobile Chat based concierge service	\N	3
2731	Treebo	Online Budget Hotel Booking Service	\N	49
2732	EduKart	Online education marketplace	\N	3
2733	Healthians.com	Preventive healthcare services	\N	15
2734	LabInApp	Science Learning App	\N	49
2735	Syona Cosmetics	Beauty and Wellness platform	\N	5
2736	Sigrid Education	Online Education Platform	\N	7
2737	Indix	SaaS product intelligence platform	\N	\N
2738	The Porter	Logistics Tech	\N	4
2739	Retention.ai	App Analytics platform	\N	49
2740	Fusion Microfinance	Micro Finance Platform	\N	3
2741	Zinka	Freight logistics platform	\N	49
2742	CreditMantri	Credit Management Services	\N	5
2743	GetMyPeon	Hyperlocal Handyman Services	\N	4
2744	UrbanClap	Hyperlocal services marketplace	\N	3
2745	StayGlad	Beauty services Mobile Marketplace	\N	49
2746	AdWyze	Marketing / Advertising Automation platform	\N	49
2747	Zimmber	Hyperlocal Handyman Services	\N	4
2748	Buttercups	Online Lingerie platform	\N	49
2749	RailYatri	Railways Information Mobile app	\N	49
2750	aagaar.com	Hyperlocal grocery delivery	\N	2
2751	Flatchat	Flat rental Mobile App	\N	49
2752	MyCFO	Wealth Management Platform	\N	4
2753	Foodpanda	Online Food Delivery	\N	2
2754	Termsheet	Fund Raising Platform	\N	5
2755	Applicate	Workforce Management Software	\N	49
2756	World Art Community	Online Art Marketplace	\N	2
2757	SpoonJoy	Online Food Delivery	\N	49
2758	Seed Schools	Affordable Education	\N	15
2759	Ignis Careers	Career Development	\N	15
2760	Square Yards	Real Estate Advisory	\N	2
2761	Fintellix	Banking Analytics Platform	\N	49
2762	Customer360	Customer Engagement Platform	\N	4
2763	Delhivery	Ecommerce Logistics	\N	2
2764	Swiggy	Online Food Delivery	\N	49
2765	Uniphore	Speech Recognition Solutions	\N	5
2766	Box8	Online Food Delivery	\N	4
2767	Toppr	Online Education Platform	\N	4
2768	Vedantu	Online Education Platform	\N	49
2769	BuyHatke	Online Product Comparison	\N	49
2770	KleverKid	Online Education Platform	\N	3
2771	Uniken	Online Security Platform	\N	6
2772	GrandOpinion	Online Medical Diagnostic	\N	3
2773	HealthifyMe	Health & Fitness App	\N	49
2774	ZapStitch	Cloud Data Integration Platform	\N	49
2775	Wassup	Mobile Laundry Cleaning Service	\N	5
2776	Mobiefit	Mobile Fitness App	\N	56
2777	Plancess	Online Education Platform	\N	4
2778	WorkHorse	Service-On-Demand Mobile App	\N	4
2779	Innovaccer	Intelligent Data Analytics	\N	7
2780	MyCuteOffice	Online Office Rental	\N	4
2781	IndianRoots.com	Lifestyle Ecommerce Portal	\N	2
2782	RedPolka	Online Fashion Aggregator	\N	4
2783	Venturesity	Online Job skills Showcase	\N	49
2784	TheBetterIndia.com	Online News Media	\N	49
2785	Awaaz De	Enterprise Communication Platform	\N	54
2786	Chaayos	Offline Tea Chain	\N	3
2787	Akosha	Business Messaging App	\N	3
2788	Cooey	Health Mobile App	\N	49
2789	MeetUniv	Online Ed-Tech Platform	\N	7
2790	Inspirock	Online Travel Planning	\N	\N
2791	Crown-it	Hyperlocal Mobile Marketplace	\N	2
2792	Trucksfirst	Trucking Logistic Operations	\N	2
2793	Lookup	B2C Messaging App	\N	49
2794	SunTerrace	Rooftop Solar Plants	\N	3
2795	\\\\xc2\\\\xa0Nudgespot	Customer Engagement Platform	\N	49
2796	CarDekho	Online Car Portal	\N	33
2797	EveningFlavors	Online Table Reservation	\N	49
2798	Razorpay	Online Payment Gateway	\N	49
2799	ZenParent	Parents focused Web Content	\N	49
2800	Newgen Payments	Payments Solution Provider	\N	3
2801	UrbanPro	On-demand Service marketplace	\N	49
2802	Goodbox	On-Demand Business messaging	\N	49
2803	Renderlogy	Online Home D\\\\xc3\\\\xa9cor	\N	15
2804	Postman	API Workflow platform	\N	49
2805	Casa2inns	Affordable Hotel Booking Online	\N	3
2806	FleetRover	Logistics Intelligence	\N	56
2807	TheKarrier	Last Mile Logistics	\N	49
2808	Zoomcar	Self-driven Car rental	\N	49
2809	Truweight	Weight Management Service	\N	15
2810	Ather Energy	Electric Scooter Manufacturer	\N	49
2811	Swiggy	Online Food Delivery	\N	49
2812	Bluegape	Web Content Publishing	\N	2
2813	KeepTrax	Location Based App	\N	108
2814	InstaLively	Video Streaming	\N	3
2815	Pricejugaad	Price Comparison	\N	15
2816	Quikr	Online Classifieds	\N	4
2817	PressPlay	Travel Entertainment	\N	3
2818	LogiNext	Logistics Tech	\N	4
2819	FirstCry.com	eCommerce	\N	6
2820	MobiKwik	Digital / Mobile Wallet	\N	2
2821	Olacabs	Cab Aggregator	\N	49
2822	Gadgetwood	Device Repair Svcs	\N	3
2823	Bonhomia	Premium Beverages	\N	3
2824	Changer Mints	Digital / Mobile Wallet	\N	47
2825	Urban Ladder	Online Furnishing\\\\neCommerce	\N	49
2826	Purple Squirrel	Ed-Tech	\N	4
2827	Whatfix	Interactive\\\\xc2\\\\xa0 How-To Guides	\N	49
2828	iMMi Life	Mobile Health Tech	\N	5
2829	Zomato	Restaurant Reviews	\N	2
2830	ZopNow	Online Grocer	\N	49
2831	Nayi Disha	Ed-Tech	\N	3
2832	The Porter	Logistics Tech	\N	4
2833	Commeasure	Online Hotel Booking	\N	7
2834	Capricoast	Online Kitchen Furniture	\N	49
2835	LocalOye	Hyper-local Online Services	\N	4
2836	Grofers	Hyper-Local Online/Mobile Grocery	\N	2
2837	PepperTap	Hyper-Local Online/Mobile Grocery	\N	2
2838	PolicyBazaar	Online Policy Aggregator	\N	2
2839	UrbanClap	Hyperlocal Mobile Services Marketplace	\N	3
2840	Taskbob	OnDemand\\\\nMobile Handyman Services	\N	4
2841	Robosoft	Mobile App Development	\N	66
2842	Doormint	On-Demand Handyman Services	\N	4
2843	Vyomo	Beauty & Wellness Mobile App	\N	2
2844	Pastiwala	Material Collection & Recycling	\N	60
2845	1mg (Healthkartplus)	Online Pharmacy & Drug DB	\N	2
2846	Freshdesk	Online / Mobile Customer Support	\N	5
2847	Sulekha.com	Online Classifieds & Listings	\N	5
2848	FindYahan	Hyperlocal services marketplace	\N	3
2850	Avanti Learning	Private Coaching Centers	\N	3
2851	Simplilearn	Online Certification Courses	\N	49
2852	Craftstvilla	Ethnic Product eCommerce	\N	4
2853	HeadOut	Last Minute Travel Deals mobile marketplace	\N	83
2854	happay	usiness expense management	\N	49
2855	Jugnoo	Auto Rickshaw based Logistics	\N	44
2856	EazyDiner	Restaurant reservation app	\N	3
2857	Phone Warrior	Spam Call block App	\N	3
2858	Coverfox	Online Insurance Aggregator	\N	4
2859	Torqus	Restaurant Management Platform	\N	6
2860	Grab	Food Logistics & Delivery	\N	4
2861	LogicRoots	Interactive Educational Games	\N	33
2862	GIBBS	Clean Tech	\N	3
2863	Babajobs	Grey collar Job Board	\N	49
2864	Urban Ladder	Online Furniture ecommerce	\N	49
2865	Jay Robotix	Robotic Program learning	\N	15
2866	Naaptol.com	Tele-Shopping / eCommerce	\N	4
2867	ReGlobe	Used Gadgets Buy / Refurbishing	\N	2
2868	Icertis	Cloud Enterprise Software	\N	96
2869	Tracxn	Startup Analytics platform	\N	49
2870	Dazo	Mobile Food Ordering app	\N	49
2871	Tradelab	Financial Markets Software	\N	49
2872	PiQube	Hiring Analytics platform	\N	5
2873	Travel Triangle	Online Travel Marketplace	\N	7
2874	TrulyMadly.com	\N	\N	\N
2875	InstaLively	\N	\N	\N
2876	Vserv	\N	\N	\N
2877	Intruo.com	\N	\N	\N
2878	Niffler	\N	\N	\N
2879	CustomFurnish.com	\N	\N	\N
2880	MapMyGenome	\N	\N	\N
2881	Crowdfire (formerly Justunfollow)	\N	\N	\N
2882	Bite Club	\N	\N	\N
2883	Localbanya	\N	\N	\N
2884	Appedo	\N	\N	\N
2885	Fitraq.com	\N	\N	\N
2886	ChargeBee	\N	\N	\N
2887	Groupon India	\N	\N	\N
2888	Process 9	\N	\N	\N
2889	MoonFrog Labs	\N	\N	\N
2890	Foodpanda	\N	\N	\N
2891	Paytm	\N	\N	\N
2892	DiabetOmics	\N	\N	\N
2893	Qyk	\N	\N	\N
2894	Daily Rounds	\N	\N	\N
2895	Orobind	\N	\N	\N
2896	Routofy	\N	\N	\N
2897	Digital Gorkha	\N	\N	\N
2898	NestAway	\N	\N	\N
2899	The Better India	\N	\N	\N
2900	Meru Cabs	\N	\N	\N
2901	GolfLAN	\N	\N	\N
2902	Drivestream	\N	\N	\N
2903	wWhere	\N	\N	\N
2904	GoJavas	\N	\N	\N
2905	Tripoto	\N	\N	\N
2906	Graphic India	\N	\N	\N
2907	Harness Handitouch	\N	\N	\N
2908	Lets Corp	\N	\N	\N
2909	CollateBox	\N	\N	\N
2910	Mahindra First Choice	\N	\N	\N
2911	Round One	\N	\N	\N
2912	RazorPay	\N	\N	\N
2913	Mosambee	\N	\N	\N
2914	Furlenco	\N	\N	\N
2915	Cubito	\N	\N	\N
2916	Teabox	\N	\N	\N
2917	Artoo	\N	\N	\N
2918	Fxkart.com	\N	\N	\N
2919	Rozgar Mela	\N	\N	\N
2920	OYO Rooms	\N	\N	\N
2921	Roposo.com	\N	\N	\N
2922	Teewe	\N	\N	\N
2923	ePoise	\N	\N	\N
2924	Urjas	\N	\N	\N
2925	Chargein	\N	\N	\N
2926	Yogurt Labs	\N	\N	\N
2927	LimeRoad.com	\N	\N	\N
2928	Team Indus	\N	\N	\N
2929	Arohan Financial Services	\N	\N	\N
2930	BillDesk	\N	\N	\N
2931	Triphobo	\N	\N	\N
2932	Aryaka	\N	\N	\N
2933	Appsdaily	\N	\N	\N
2934	Faaya	\N	\N	\N
2935	InstaBounce	\N	\N	\N
2936	Chloroplast Foods	\N	\N	\N
2937	Dealwithus	\N	\N	\N
2938	CleverSharks	\N	\N	\N
2939	Leaf	\N	\N	\N
2940	SmartPocket	\N	\N	\N
2941	Yumist	\N	\N	\N
2942	NowFloats	\N	\N	\N
2943	FirstCry	\N	\N	\N
2944	HolaChef	\N	\N	\N
2945	Frsh.co.in	\N	\N	\N
2946	Manthan	\N	\N	\N
2947	Kobster.com	\N	\N	\N
2948	Culture Machine	\N	\N	\N
2949	Paytm	\N	\N	\N
2950	Aisle.co	\N	\N	\N
2951	FreeCharge	\N	\N	\N
2952	NewsHunt	\N	\N	\N
2953	MyNoticePeriod	\N	\N	\N
2954	CarDekho.com	\N	\N	\N
2955	Faaso\\\\xe2\\\\x80\\\\x99s	\N	\N	\N
2956	CarTrade.com	\N	\N	\N
2957	StoreKing	\N	\N	\N
2958	Capital Float	\N	\N	\N
2959	Nimble Wireless	\N	\N	\N
2960	Townscript	\N	\N	\N
2961	FindYahan	\N	\N	\N
2962	Stayzilla	\N	\N	\N
2963	Practo	\N	\N	\N
2964	CimplyFive	\N	\N	\N
2965	20Dresses	\N	\N	\N
2966	Itzcash	\N	\N	\N
2967	NewsInShorts	\N	\N	\N
2968	iTraveller.com	\N	\N	\N
2969	NextGen	\N	\N	\N
2970	Wooplr.com	\N	\N	\N
2971	Springleap	\N	\N	\N
2972	Klip.in	\N	\N	\N
2973	Renderlogy	\N	\N	\N
2974	Appbase	\N	\N	\N
2975	HomeLane	\N	\N	\N
2976	Trip38	\N	\N	\N
2977	Smartairtrip.com	\N	\N	\N
2978	NoBroker	\N	\N	\N
2979	Caravan Craft Retail	\N	\N	\N
2980	SquadRun	\N	\N	\N
2981	Clonect Solutions	\N	\N	\N
2982	TaxSutra	\N	\N	\N
2983	PepperTap	\N	\N	\N
2984	Sattviko	\N	\N	\N
2985	IndustryBuying	\N	\N	\N
2986	FreshWorld	\N	\N	\N
2987	TinyOwl	\N	\N	\N
2988	Momoe	\N	\N	\N
2989	Grofers	\N	\N	\N
2990	LensKart	\N	\N	\N
2991	VioletStreet	\N	\N	\N
2992	Lookup	\N	\N	\N
2993	#Fame	\N	\N	\N
2994	Gympik	\N	\N	\N
2995	Near.in	\N	\N	\N
2996	Purplle.com	\N	\N	\N
2997	NumberMall	\N	\N	\N
2998	Tookitaki	\N	\N	\N
2999	Frankly	\N	\N	\N
3000	Faircent	\N	\N	\N
3001	Nurturey	\N	\N	\N
3002	Bewakoof	\N	\N	\N
3003	Stridalyzer	\N	\N	\N
3004	Commonfloor	\N	\N	\N
3005	Sokrati	\N	\N	\N
3006	YepMe	\N	\N	\N
3007	TapCibo	\N	\N	\N
3008	Verayu	\N	\N	\N
3009	MyDreamStore	\N	\N	\N
3010	AppVirality	\N	\N	\N
3018	Hostel Dunia	\N	\N	\N
3019	Play your sport	\N	\N	\N
3020	Yo Grad	\N	\N	\N
3021	Enabli	\N	\N	\N
3022	CBS	\N	\N	\N
3023	Hopscotch	\N	\N	\N
3024	Amagi Media Labs	\N	\N	\N
3025	HealthyWorld.in	\N	\N	\N
3026	Simplilearn	\N	\N	\N
3027	MyDreamStore	\N	\N	\N
3028	Knit	\N	\N	\N
3029	Villgro	\N	\N	\N
3030	Corporate360	\N	\N	\N
3031	Freshmonk	\N	\N	\N
3032	Englishleap.com	\N	\N	\N
3033	Antuit	\N	\N	\N
3034	Caratlane.com	\N	\N	\N
3035	Aasaanjobs	\N	\N	\N
3036	Impartus	\N	\N	\N
3037	Thrill App	\N	\N	\N
3038	CarDekho.com	\N	\N	\N
3039	Grabhouse.com	\N	\N	\N
3040	Printvenue	\N	\N	\N
3041	Graphene	\N	\N	\N
3042	Mad Street Den	\N	\N	\N
3043	Simplotel	\N	\N	\N
3044	couponmachine.in	\N	\N	\N
\.


--
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);


--
-- Name: investidor investidor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investidor
    ADD CONSTRAINT investidor_pkey PRIMARY KEY (id);


--
-- Name: investimento investimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investimento
    ADD CONSTRAINT investimento_pkey PRIMARY KEY (id);


--
-- Name: startup startup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.startup
    ADD CONSTRAINT startup_pkey PRIMARY KEY (id);


--
-- Name: investimento investimento_investidor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investimento
    ADD CONSTRAINT investimento_investidor_id_fkey FOREIGN KEY (investidor_id) REFERENCES public.investidor(id);


--
-- Name: investimento investimento_startup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investimento
    ADD CONSTRAINT investimento_startup_id_fkey FOREIGN KEY (startup_id) REFERENCES public.startup(id);


--
-- Name: startup startup_cidade_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.startup
    ADD CONSTRAINT startup_cidade_id_fkey FOREIGN KEY (cidade_id) REFERENCES public.cidade(id);


--
-- PostgreSQL database dump complete
--

