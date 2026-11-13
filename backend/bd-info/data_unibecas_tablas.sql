--
-- PostgreSQL database dump
--

\restrict RBrETxqhcbL5rplfpD3u2FGNg3UO88TyVv8Z5qW2pTvCd1e7kS2OI83NtJepn7i

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-13 01:36:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4979 (class 0 OID 24676)
-- Dependencies: 220
-- Data for Name: becas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.becas (id_beca, nombre_beca, fecha_creacion_sys, vigencia_programa, descripcion_informacion, informacion_aplicar, modalidad, cobertura, id_universidad_acceso, estado, url_informacion, proveedor_beca) FROM stdin;
16	Becas Vamos Pa'Lante - UTB	2026-10-08 17:23:40.12655	Convocatoria Semestral	Fondo de becas de apoyo académico y permanencia universitaria impulsado por la UTB en alianza con la empresa privada para evitar la deserción de jóvenes con alto desempeño académico y vulnerabilidad económica.	Estudiantes de pregrado de la UTB en Cartagena que se encuentren en situaciones de dificultad socioeconómica sobreviniente y cuenten con un promedio académico destacado.	Pregrado	Financiación parcial o total (hasta el 100%) del valor de la matrícula del semestre respectivo y apoyos complementarios.	22	Activa	https://www.utb.edu.co/apoyo-financiero/becas/vamos-pa-lante	21
17	Escuela de Servicios y Cocina Para Todos - Fundación Promigas	2026-10-08 17:23:40.12655	Convocatoria Periódica	Programa de becas de formación técnica práctica para el trabajo en el sector gastronómico, turístico y hotelero de Cartagena liderado por Fundación Promigas y Surtigas.	Residentes en Cartagena mayores de 18 años, bachilleres de estratos 1 o 2, sin vínculo laboral actual o pertenecientes a población en condición de vulnerabilidad o migración.	Tecnica	100% del costo del programa de formación técnica laboral, materiales de práctica, vestuario de cocina/servicio y vinculación a prácticas en hoteles y restaurantes de la región.	22	Activa	https://fundacionpromigas.org.co/cocinaparatodos/	33
18	Fondo Comunidades Negras (FECEPN) - ICETEX	2026-10-08 17:23:40.12655	Convocatoria Anual	Fondo de créditos 100% condonables del Ministerio del Interior y el ICETEX dirigido a estudiantes afrocolombianos, raizales y palenqueros de Bolívar para realizar estudios de educación superior.	Estar registrado como integrante de comunidades negras, afrocolombianas, raizales o palenqueras, presentar un proyecto comunitario o de investigación avalado por una organización o consejo comunitario y estar admitido en una IES.	Pregrado	Condonación del 100% del costo de la matrícula académica y giro semestral de sostenimiento económico equivalente a 3 SMMLV.	23	Activa	https://web.icetex.gov.co/es/-/comunidades-negras	32
19	Fondo de Educación Superior para Víctimas del Conflicto Armado - ICETEX	2026-10-08 17:23:40.12655	Convocatoria Anual	Programa nacional que brinda financiación condonable a personas incluidas en el Registro Único de Víctimas (RUV) residentes en Bolívar para cursar estudios técnicos, tecnológicos o universitarios.	Estar figurando en el Registro Único de Víctimas (RUV), contar con admisión en una IES reconocida y formalizar la solicitud a través del portal oficial del ICETEX en las fechas estipuladas.	Pregrado	Financiación del costo de la matrícula hasta por 11 SMMLV por semestre y auxilio de sostenimiento equivalente a 1.5 SMMLV semestrales.	23	Activa	https://web.icetex.gov.co/es/-/victimas-del-conflicto-armado	32
20	Becas de Excelencia e Incentivos Académicos - Universidad de Cartagena	2026-10-08 17:23:40.12655	Convocatoria Semestral	Exenciones de pago de matrícula académica y auxilios de transporte/alimentación gestionados por la Vicerrectoría de Bienestar Universitario para estudiantes con rendimiento académico superior o de vulnerabilidad económica.	Ser estudiante regular de la Universidad de Cartagena, contar con el promedio acumulado más alto de la facultad o programa académico respectivo, o acreditar vulnerabilidad socioeconómica mediante estudio social.	Pregrado	Exención total o parcial (del 50% al 100%) del pago del valor de la matrícula financiera e inclusión en programas de comedor universitario.	21	Activa	https://www.unicartagena.edu.co/inicio/bienestar-universitario	20
13	Becas Lucho Bermúdez - Gobernación de Bolívar	2026-10-08 17:23:40.12655	Mañana	Programa de la Gobernación de Bolívar en convenio con la Institución Universitaria Bellas Artes y Ciencias de Bolívar (UNIBAC) orientada a la formación profesional y técnica de talentos en disciplinas artísticas y culturales.	Ser residente de cualquiera de los municipios del departamento de Bolívar, realizar la inscripción formal en UNIBAC y diligenciar el formulario de postulación de la Secretaría de Educación Departamental.	Pregrado	Cobertura del 100% del valor de la matrícula académica durante la totalidad de la carrera universitaria en UNIBAC.	28	Activa	https://www.bolivar.gov.co/web/seccion/becas-lucho-bermudez-junio-2025/	31
14	Becas Boomerang - Colectivo Traso	2026-10-08 17:23:40.12655	Convocatoria Anual	Iniciativa de formación superior y empleabilidad impulsada por el Colectivo Traso y empresas del sector industrial de Cartagena para el desarrollo de competencias laborales, bilingüismo y fortalecimiento socioemocional.	Jóvenes entre 16 y 21 años egresados de colegios oficiales de Cartagena, Turbaco o Turbana, residentes en viviendas de estrato 1 o 2. Registro e inscripción virtual en el portal oficial del programa.	Tecnologica	100% del costo de la matrícula tecnológica, formación intensiva en inglés, talleres de liderazgo, coaching psicosocial y auxilio de transporte o conectividad.	41	Vencida	https://colectivotraso.org/becas-boomerang/	39
21	Becas de Formación en Maestría y Doctorado - Regalías Bolívar	2026-10-08 17:23:40.12655	Convocatoria Periódica	Fondo condonable financiado con recursos del Sistema General de Regalías (SGR) de la Gobernación de Bolívar y MinCiencias para la formación de talento humano de alto nivel académico.	Profesionales nacidos o residentes en el departamento de Bolívar cuyo proyecto de investigación esté alineado con los focos estratégicos del territorio (agroindustria, logística, turismo, ambiente).	Posgrado	Financiación condonable del 100% de la matrícula de posgrado y estipendio mensual de sostenimiento para el estudiante.	24	Activa	https://minciencias.gov.co/convocatorias/formacion-y-vinculacion-de-capital-humano-de-alto-nivel	31
72	Teta estudios	2026-11-13 01:33:39.219021	80 años	aksjakjskjaskaskajkskjasjakjskajskajskajskjasjkahskjfhslkdfhklngcidggfsnkf	No sabemos	Tecnica	Cartagena	22	Suspendida	http://www.juan.com	28
71	Teta estudios	2026-10-31 16:30:46.306885	80 años	aksjakjskjaskaskajkskjasjakjskajskajskajskjasjkahskjfhslkdfhklngcidggfsnkf	No sabemos	Tecnica	Cartagena	22	Suspendida	http://localhost.com	28
\.


--
-- TOC entry 4981 (class 0 OID 24697)
-- Dependencies: 222
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carreras (id_carrera, codigo_snies_programa, nombre_programa, titulo_otorgado, nivel_formacion, numero_semestres, creditos_totales, periodicidad_admision, id_universidad_fk, tipo_acreditacion) FROM stdin;
1153	104396	INGENIERÍA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	155	Semestral	39	Registro Calificado
1154	108559	INGENIERÍA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	10	172	Semestral	39	Registro Calificado
1155	117816	Especialización en Prospectiva Estratégica	Especialista en Prospectiva Estratégica	Especialización	2	28	Semestral	39	Registro Calificado
1156	117909	Especialización en Contratación Estatal	Especialista en Contratación Estatal	Especialización	2	28	Semestral	39	Registro Calificado
5	53384	DOCTORADO EN CIENCIAS BIOMEDICAS	DOCTOR EN CIENCIAS BIOMEDICAS	Doctorado	8	90	Anual	21	Acreditacion de Alta Calidad
6	761	ESPECIALIZACION EN ESTOMATOLOGIA Y CIRUGIA ORAL	ESPECIALISTA EN ESTOMATOLOGIA Y CIRUGIA ORAL	Especialización	4	83	Anual	21	Registro Calificado
7	9367	ESPECIALIZACION EN ENDODONCIA	ESPECIALISTA EN ENDODONCIA	Especialización	4	71	Anual	21	Registro Calificado
8	7816	ESPECIALIZACION EN ORTODONCIA	ESPECIALISTA EN ORTODONCIA	Especialización	7	122	Anual	21	Registro Calificado
9	110296	DOCTORADO EN ADMINISTRACIÓN (PHD)	DOCTOR EN ADMINISTRACIÓN CON CERTIFICACIÓN DE ÉNFASIS EN: DESARROLLO EMPRESARIAL O ECONOMÍA EMPRESARIAL O MARKETING ESTRATÉGICO	Doctorado	8	82	Anual	21	Registro Calificado
10	110570	MAESTRÍA EN DESARROLLO TERRITORIAL Y GESTIÓN PÚBLICA	MAGÍSTER EN DESARROLLO TERRITORIAL Y GESTIÓN PÚBLICA	Maestría	4	43	Anual	21	Registro Calificado
11	91358	DOCTORADO EN CIENCIAS	DOCTOR EN CIENCIAS	Doctorado	8	100	Anual	21	Registro Calificado
12	116132	Doctorado en Innovación Educativa y Cultura Digital	Doctor en Innovación Educativa y Cultura Digital	Doctorado	6	80	Semestral	21	Registro Calificado
13	104821	MAESTRÍA EN GESTIÓN DE ORGANIZACIONES	MAGISTER EN GESTIÓN DE ORGANIZACIONES	Maestría	4	40	Anual	21	Registro Calificado
14	766	ESPECIALIZACION EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	30	Semestral	21	Registro Calificado
15	106290	ESPECIALIZACIÓN EN REVISORÍA FISCAL Y AUDITORIA INTERNACIONAL	ESPECIALISTA EN REVISORÍA FISCAL Y AUDITORIA INTERNACIONAL	Especialización	2	30	Anual	21	Registro Calificado
16	3325	ESPECIALIZACION EN GERENCIA EN SALUD	ESPECIALISTA EN GERENCIA EN SALUD	Especialización	2	30	Semestral	21	Registro Calificado
17	770	ESPECIALIZACION EN GESTION GERENCIAL	ESPECIALISTA EN GESTION GERENCIAL	Especialización	2	30	Semestral	21	Registro Calificado
18	10461	ESPECIALIZACION EN GESTION DE LA CALIDAD Y AUDITORIA EN SALUD	ESPECIALISTA EN GESTION DE LA CALIDAD Y AUDITORIA EN SALUD	Especialización	2	30	Semestral	21	Registro Calificado
19	774	MAESTRIA EN INMUNOLOGIA	MAGISTER EN INMUNOLOGIA	Maestría	4	65	Anual	21	Acreditacion de Alta Calidad
20	106137	ESPECIALIZACIÓN EN ENFERMERÍA NEONATAL	ESPECIALISTA EN ENFERMERÍA NEONATAL	Especialización	3	36	Semestral	21	Registro Calificado
21	106092	MAESTRÍA EN FAMILIAS Y GÉNERO	MAGISTER EN FAMILIAS Y GÉNERO	Maestría	4	55	Anual	21	Registro Calificado
22	108403	MAESTRIA EN ENFERMERÍA	MAGISTER EN ENFERMERÍA	Maestría	4	48	Anual	21	Acreditacion de Alta Calidad
23	109914	ESPECIALIZACION EN GERENCIA DE LA SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	29	Semestral	21	Registro Calificado
24	54615	MAESTRÍA EN MATEMÁTICAS	MAGÍSTER EN MATEMÁTICAS	Maestría	4	48	Anual	21	Registro Calificado
25	108009	MAESTRÍA EN RECURSOS DIGITALES APLICADOS A LA EDUCACIÓN	MAGÍSTER EN RECURSOS DIGITALES APLICADOS A LA EDUCACIÓN	Maestría	3	40	Semestral	21	Registro Calificado
26	107322	ESPECIALIZACIÓN EN SALUD FAMILIAR Y COMUNITARIA	ESPECIALISTA EN SALUD FAMILIAR Y COMUNITARIA	Especialización	2	30	Semestral	21	Registro Calificado
27	107207	MAESTRIA EN FARMACIA ASISTENCIAL	MAGISTER EN FARMACIA ASISTENCIAL	Maestría	4	53	Anual	21	Registro Calificado
28	53730	MAESTRIA EN CIENCIAS FARMACEUTICAS	MAGISTER EN CIENCIAS FARMACEUTICAS	Maestría	4	40	Anual	21	Registro Calificado
29	110737	ESPECIALIZACIÓN EN DIDÁCTICA Y TIC	ESPECIALISTA EN DIDÁCTICA Y TIC	Especialización	2	26	Semestral	21	Registro Calificado
30	104236	DOCTORADO EN INGENIERÍA	DOCTOR EN INGENIERÍA	Doctorado	8	112	Anual	21	Registro Calificado
31	737	MEDICINA	MEDICO	Pregrado Universitario	12	273	Semestral	21	Registro Calificado
32	107208	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO (A) EN EDUCACIÓN INFANTIL	Pregrado Universitario	10	170	Semestral	21	Registro Calificado
33	54490	Técnica Profesional en Procesos de Gestión Pública	TECNICO PROFESIONAL EN PROCESO DE GESTION PUBLICA	Técnico Profesional	4	60	Semestral	21	Registro Calificado
34	54489	TECNOLOGÍA EN GESTIÓN PÚBLICA	TECNOLOGO EN GESTION PUBLICA	Tecnólogo	6	90	Semestral	21	Registro Calificado
35	738	ODONTOLOGIA	ODONTOLOGO	Pregrado Universitario	10	182	Semestral	21	Acreditacion de Alta Calidad
36	19256	COMUNICACION SOCIAL	COMUNICADOR (A) SOCIAL	Pregrado Universitario	10	160	Semestral	21	Registro Calificado
37	20828	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	176	Semestral	21	Registro Calificado
38	103288	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS PETROQUÍMICOS	TÉCNICO PROFESIONAL EN OPERACIÓN DE PROCESOS PETROQUÍMICOS	Técnico Profesional	4	64	Semestral	21	Registro Calificado
39	747	INGENIERIA CIVIL	INGENIERO CIVIL	Pregrado Universitario	10	176	Semestral	21	Registro Calificado
40	742	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	162	Semestral	21	Registro Calificado
41	54454	TÉCNICO PROFESIONAL EN OPERACIÓN TURÍSTICA	TÉCNICO PROFESIONAL EN OPERACIÓN TURÍSTICA	Técnico Profesional	4	63	Semestral	21	Registro Calificado
42	736	ENFERMERIA	ENFERMERO(A)	Pregrado Universitario	10	160	Semestral	21	Acreditacion de Alta Calidad
43	2914	ADMINISTRACION INDUSTRIAL	ADMINISTRADOR(A) INDUSTRIAL	Pregrado Universitario	10	177	Semestral	21	Acreditacion de Alta Calidad
44	51611	INGENIERÍA QUÍMICA	INGENIERO QUÍMICO	Pregrado Universitario	10	176	Semestral	21	Acreditacion de Alta Calidad
45	105461	INGENIERIA DE SOFTWARE	INGENIERO (A) DE SOFTWARE	Pregrado Universitario	10	174	Semestral	21	Registro Calificado
46	740	DERECHO	ABOGADO(A)	Pregrado Universitario	10	160	Semestral	21	Registro Calificado
47	4208	INGENIERIA DE ALIMENTOS	INGENIERO DE ALIMENTOS	Pregrado Universitario	10	178	Semestral	21	Acreditacion de Alta Calidad
48	3137	QUIMICA	QUIMICO	Pregrado Universitario	10	177	Semestral	21	Acreditacion de Alta Calidad
49	745	HISTORIA	PROFESIONAL EN HISTORIA	Pregrado Universitario	8	141	Semestral	21	Registro Calificado
50	102148	PROGRAMA PROFESIONAL UNIVERSITARIO EN LENGUAS EXTRANJERAS	PROFESIONAL EN LENGUAS EXTRANJERAS CON ENFASIS EN INGLÉS Y FRANCES	Pregrado Universitario	8	132	Semestral	21	Acreditacion de Alta Calidad
51	90514	BIOLOGÍA	BIÓLOGO (A)	Pregrado Universitario	10	175	Semestral	21	Registro Calificado
52	90635	TECNOLOGIA EN METROLOGIA INDUSTRIAL	TECNOLOGO EN METROLOGIA INDUSTRIAL	Tecnólogo	6	107	Semestral	21	Registro Calificado
53	744	FILOSOFIA	FILOSOFO(A)	Pregrado Universitario	10	160	Semestral	21	Registro Calificado
54	102958	TECNOLOGIA EN PROCESOS INDUSTRIALES	TECNOLOGO EN PROCESOS INDUSTRIALES	Tecnólogo	6	90	Semestral	21	Registro Calificado
55	54455	TECNOLOGÍA EN GESTIÓN TURÍSTICA	TECNOLOGO EN GESTIÓN TURÍSTICA	Tecnólogo	6	96	Semestral	21	Registro Calificado
56	54488	ADMINISTRACION PUBLICA	ADMINISTRADOR PUBLICO	Pregrado Universitario	10	169	Semestral	21	Registro Calificado
57	9991	ADMINISTRACION DE SERVICIOS DE SALUD	ADMINISTRADOR DE SERVICIOS DE SALUD	Pregrado Universitario	10	166	Semestral	21	Registro Calificado
58	741	ECONOMIA	ECONOMISTA	Pregrado Universitario	9	168	Semestral	21	Acreditacion de Alta Calidad
59	746	LINGUISTICA Y LITERATURA	PROFESIONAL EN LINGUISTICA Y LITERATURA	Pregrado Universitario	8	138	Semestral	21	Registro Calificado
60	104820	LICENCIATURA EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS SOCIALES Y AMBIENTALES	LICENCIADO EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS SOCIALES Y AMBIENTALES	Pregrado Universitario	10	170	Semestral	21	Registro Calificado
61	106840	SEGURIDAD Y SALUD EN EL TRABAJO	PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	140	Semestral	21	Registro Calificado
62	19723	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	10	168	Semestral	21	Registro Calificado
63	105961	ADMINISTRACION DE EMPRESAS TURISTICAS Y HOTELERAS	ADMINISTRADOR DE EMPRESAS TURISTICAS Y HOTELERAS	Pregrado Universitario	10	169	Semestral	21	Registro Calificado
64	748	QUIMICA FARMACEUTICA	QUIMICO FARMACEUTICO	Pregrado Universitario	10	185	Semestral	21	Acreditacion de Alta Calidad
65	2995	MATEMATICAS	MATEMATICO	Pregrado Universitario	10	169	Semestral	21	Registro Calificado
66	54595	ADMINISTRACION FINANCIERA	PROFESIONAL EN ADMINISTRACION FINANCIERA	Pregrado Universitario	10	164	Semestral	21	Registro Calificado
67	54701	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	169	Semestral	21	Registro Calificado
68	1413	ESPECIALIZACION EN PSIQUIATRIA	ESPECIALISTA EN PSIQUIATRIA	Especialización	6	193	Anual	21	Registro Calificado
69	11860	ESPECIALIZACION EN DERECHO PENAL	ESPECIALISTA EN DERECHO PENAL	Especialización	2	30	Semestral	21	Registro Calificado
70	15343	ESPECIALIZACION EN ODONTOPEDIATRIA Y ORTOPEDIA MAXILAR	ESPECIALISTA EN ODONTOPEDIATRIA Y ORTOPEDIA MAXILAR	Especialización	5	88	Anual	21	Registro Calificado
71	2035	ESPECIALIZACION EN GERENCIA DE PROYECTOS DE CONSTRUCCION	ESPECIALISTA EN GERENCIA DE PROYECTOS DE CONSTRUCCION	Especialización	3	27	Semestral	21	Registro Calificado
72	749	ESPECIALIZACION EN CIRUGIA GENERAL	ESPECIALISTA EN CIRUGIA GENERAL	Especialización	8	267	Anual	21	Registro Calificado
73	754	ESPECIALIZACION EN OTORRINOLARINGOLOGIA	ESPECIALISTA EN OTORRINOLARINGOLOGIA	Especialización	8	262	Anual	21	Registro Calificado
74	750	ESPECIALIZACION EN MEDICINA INTERNA	ESPECIALISTA EN MEDICINA INTERNA	Especialización	6	208	Anual	21	Registro Calificado
75	7810	ESPECIALIZACION EN MATEMATICAS AVANZADAS	ESPECIALISTA EN MATEMATICAS AVANZADAS	Especialización	2	24	Semestral	21	Registro Calificado
76	51577	MAESTRÍA EN QUÍMICA	MAGÍSTER EN QUÍMICA	Maestría	4	40	Anual	21	Registro Calificado
77	17698	ESPECIALIZACION EN INGENIERIA DE VIAS TERRESTRES	ESPECIALISTA EN INGENIERÍA DE VÍAS TERRESTRES	Especialización	2	28	Semestral	21	Registro Calificado
78	759	ESPECIALIZACION EN UROLOGIA	ESPECIALISTA EN UROLOGIA	Especialización	8	248	Anual	21	Registro Calificado
79	90636	TÉCNICA PROFESIONAL EN PROCESOS METROLÓGICOS	TÉCNICO PROFESIONAL EN PROCESOS METROLÓGICOS	Técnico Profesional	4	64	Semestral	21	Registro Calificado
80	756	ESPECIALIZACION EN PEDIATRIA	ESPECIALISTA EN PEDIATRIA	Especialización	6	208	Anual	21	Registro Calificado
81	2710	ESPECIALIZACION EN GINECOLOGÍA Y OBSTETRICIA	ESPECIALISTA EN GINECOLOGÍA Y OBSTETRICIA	Especialización	6	191	Anual	21	Registro Calificado
82	775	MAESTRIA EN MICROBIOLOGIA	MAGISTER EN MICROBIOLOGIA	Maestría	4	62	Anual	21	Registro Calificado
83	776	MAESTRIA EN FARMACOLOGIA	MAGISTER EN FARMACOLOGIA	Maestría	4	50	Anual	21	Registro Calificado
84	10892	ESPECIALIZACION EN ESTRUCTURAS	ESPECIALISTA EN ESTRUCTURAS	Especialización	2	28	Anual	21	Registro Calificado
85	753	ESPECIALIZACION EN ORTOPEDIA Y TRAUMATOLOGIA	ESPECIALISTA EN ORTOPEDIA Y TRAUMATOLOGIA	Especialización	8	262	Anual	21	Registro Calificado
86	751	ESPECIALIZACION EN NEUROCIRUGIA	ESPECIALISTA EN NEUROCIRUGIA	Especialización	10	325	Anual	21	Registro Calificado
87	91076	DOCTORADO EN TOXICOLOGÍA AMBIENTAL	DOCTOR EN TOXICOLOGÍA AMBIENTAL	Doctorado	8	105	Anual	21	Registro Calificado
88	90905	MAESTRÍA EN BIOQUÍMICA	MAGISTER EN BIOQUÍMICA	Maestría	4	70	Anual	21	Registro Calificado
89	102460	MAESTRIA EN CONFLICTO SOCIAL Y CONSTRUCCION DE PAZ	MAGISTER EN CONFLICTO SOCIAL Y CONSTRUCCION DE PAZ	Maestría	4	53	Anual	21	Registro Calificado
90	103272	MAESTRÍA EN DERECHO	MAGISTER EN DERECHO	Maestría	4	50	Semestral	21	Registro Calificado
91	105853	ESPECIALIZACIÓN EN FÍSICA APLICADA Y COMPUTACIONAL	ESPECIALISTA EN FÍSICA APLICADA Y COMPUTACIONAL	Especialización	2	30	Semestral	21	Registro Calificado
92	105910	ESPECIALIZACIÓN EN MEDICINA CRÍTICA Y CUIDADO INTENSIVO	ESPECIALISTA EN MEDICINA CRÍTICA Y CUIDADO INTENSIVO	Especialización	4	142	Anual	21	Registro Calificado
93	106202	MAESTRÍA EN ENFERMERÍA EN SALUD MENTAL	MAGISTER EN ENFERMERÍA EN SALUD MENTAL	Maestría	4	59	Anual	21	Registro Calificado
94	103614	ESPECIALIZACION EN INGENIERIA DE AGUA POTABLE Y SANEAMIENTO BÁSICO	ESPECIALISTA EN INGENIERIA DE AGUA POTABLE Y SANEAMIENTO BÁSICO	Especialización	2	26	Semestral	21	Registro Calificado
321	101462	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	10	162	Semestral	25	Registro Calificado
95	104967	MAESTRÍA EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS EXACTAS, NATURALES Y DEL LENGUAJE	MAGÍSTER EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS EXACTAS, NATURALES Y DEL LENGUAJE	Maestría	4	50	Semestral	21	Registro Calificado
96	105976	MAESTRÍA EN INGENIERÍA DE ALIMENTOS	MAGISTER EN INGENIERÍA DE ALIMENTOS	Maestría	4	54	Anual	21	Registro Calificado
97	104196	MAESTRIA EN TOXICOLOGIA	MAGISTER EN TOXICOLOGIA	Maestría	4	72	Anual	21	Registro Calificado
98	105647	MAESTRÍA EN INGENIERÍA QUÍMICA	MAGISTER EN INGENIERÍA QUÍMICA	Maestría	4	54	Anual	21	Registro Calificado
99	118865	Maestría en Gestión Financiera	Magister en Gestión Financiera	Maestría	3	44	Anual	21	Registro Calificado
100	106883	MAESTRÍA EN HUMANIDADES CONTEMPORÁNEAS	MAGÍSTER EN HUMANIDADES CONTEMPORÁNEAS	Maestría	3	50	Semestral	21	Registro Calificado
101	119057	Tecnología en Gestión Ambiental	Tecnólogo en Gestión Ambiental	Tecnólogo	5	83	Semestral	21	Registro Calificado
102	119058	Tecnología en Gestión Contable	Tecnólogo en Gestión Contable	Tecnólogo	6	90	Semestral	21	Registro Calificado
103	119532	Maestría en Gerencia del Talento Humano	Magíster en Gerencia del Talento Humano	Maestría	3	40	Semestral	21	Registro Calificado
104	116434	Maestría en Lenguas Extranjeras Aplicadas	Magíster en Lenguas Extranjeras Aplicadas	Maestría	3	40	Semestral	21	Registro Calificado
105	116435	Maestría en Lenguas Extranjeras Aplicadas	Magíster en Lenguas Extranjeras Aplicadas	Maestría	3	40	Semestral	21	Registro Calificado
106	111515	ESPECIALIZACION EN ANESTESIOLOGIA	ESPECIALISTA EN ANESTESIOLOGIA	Especialización	6	204	Anual	21	Registro Calificado
107	106591	MAESTRÍA EN DERECHO PENAL	MAGISTER EN DERECHO PENAL	Maestría	4	60	Semestral	21	Registro Calificado
108	739	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	10	170	Semestral	21	Acreditacion de Alta Calidad
109	116022	MAESTRÍA EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS EXACTAS, NATURALES Y DEL LENGUAJE	MAGÍSTER EN EDUCACIÓN CON ÉNFASIS EN CIENCIAS EXACTAS, NATURALES Y DEL LENGUAJE	Maestría	4	50	Semestral	21	Registro Calificado
110	117424	Tecnología Agroindustrial	Tecnólogo Agroindustrial	Tecnólogo	6	97	Semestral	21	Registro Calificado
111	54945	MAESTRÍA EN INGENIERÍA AMBIENTAL	MAGISTER EN INGENIERÍA AMBIENTAL	Maestría	4	48	Anual	21	Registro Calificado
112	118707	Doctorado en Estudios del Desarrollo	Doctor en Estudios del Desarrollo	Doctorado	6	80	Anual	21	Registro Calificado
113	54682	DOCTORADO EN MEDICINA TROPICAL	DOCTOR EN MEDICINA TROPICAL	Doctorado	8	93	Semestral	21	Registro Calificado
114	111241	MAESTRÍA EN INGENIERÍA CIVIL	MAGISTER EN INGENIERÍA CIVIL	Maestría	4	52	Semestral	21	Registro Calificado
115	755	ESPECIALIZACION EN PATOLOGIA	ESPECIALISTA EN PATOLOGIA	Especialización	6	184	Anual	21	Registro Calificado
116	117352	Administración Agroindustrial	Administrador Agroindustrial	Pregrado Universitario	10	162	Semestral	21	Registro Calificado
117	107918	ESPECIALIZACION EN GASTROENTEROLOGIA	ESPECIALISTA EN GASTROENTEROLOGIA	Especialización	4	118	Anual	21	Registro Calificado
118	119305	MAESTRÍA EN GERENCIA E INNOVACIÓN EN TECNOLOGÍAS	MAGÍSTER EN GERENCIA E INNOVACIÓN EN TECNOLOGÍAS	Maestría	3	48	Semestral	21	Registro Calificado
119	117114	ESPECIALIZACIÓN EN DERECHOS HUMANOS	ESPECIALISTA EN DERECHOS HUMANOS	Especialización	2	23	Semestral	21	Registro Calificado
120	107231	ESPECIALIZACIÓN EN DERMATOLOGÍA	ESPECIALISTA EN DERMATOLOGÍA	Especialización	6	169	Anual	21	Registro Calificado
121	116248	DOCTORADO EN AMBIENTE Y DESARROLLO SOSTENIBLE	DOCTOR EN AMBIENTE Y DESARROLLO SOSTENIBLE	Doctorado	8	110	Anual	21	Registro Calificado
122	109195	MAESTRÍA EN GESTIÓN INTEGRAL DE LA SEGURIDAD Y SALUD EN EL TRABAJO	MAGÍSTER EN GESTIÓN INTEGRAL DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Maestría	4	46	Anual	21	Registro Calificado
123	118620	Maestría en Sistemas Integrados de Gestión	Magister en Sistemas Integrados de Gestión	Maestría	3	40	Semestral	21	Registro Calificado
124	109794	MAESTRÍA EN EDUCACIÓN AMBIENTAL Y DESARROLLO LOCAL	MAGÍSTER EN EDUCACIÓN AMBIENTAL Y DESARROLLO LOCAL	Maestría	4	50	Semestral	21	Registro Calificado
125	103445	ESPECIALIZACION EN RADIOLOGIA E IMÁGENES DIAGNÓSTICAS	ESPECIALISTA EN RADIOLOGIA E IMÁGENES DIAGNÓSTICAS	Especialización	8	225	Anual	21	Registro Calificado
126	54942	MAESTRÍA EN ADMINISTRACIÓN	MAGÍSTER EN ADMINISTRACIÓN	Maestría	4	47	Anual	22	Registro Calificado
127	116438	MAESTRÍA EN ADMINISTRACIÓN DE EMPRESAS-MBA	MAGÍSTER EN ADMINISTRACIÓN DE EMPRESAS-MBA	Maestría	3	44	Semestral	22	Registro Calificado
128	103259	MAESTRÍA EN GERENCIA DE PROYECTOS	MAGÍSTER EN GERENCIA DE PROYECTOS	Maestría	4	50	Semestral	22	Registro Calificado
129	109411	DOCTORADO EN DESARROLLO REGIONAL Y LOCAL	DOCTOR EN DESARROLLO REGIONAL Y LOCAL	Doctorado	8	93	Anual	22	Registro Calificado
130	53005	MAESTRÍA EN INGENIERÍA	MAGÍSTER EN INGENIERÍA (SE ESPECIFICARÁ EL ÉNFASIS ESCOGIDO POR EL ESTUDIANTE)	Maestría	4	45	Semestral	22	Acreditacion de Alta Calidad
131	101719	ESPECIALIZACIÓN EN GERENCIA TRIBUTARIA	ESPECIALISTA EN GERENCIA TRIBUTARIA	Especialización	2	25	Semestral	22	Registro Calificado
132	102167	ESPECIALIZACIÓN EN PLANEACIÓN ESTRATÉGICA Y PROSPECTIVA	ESPECIALISTA PLANEACIÓN ESTRATÉGICA Y PROSPECTIVA	Especialización	2	24	Semestral	22	Registro Calificado
133	105947	MAESTRÍA EN FINANZAS	MAGISTER EN FINANZAS	Maestría	4	47	Semestral	22	Registro Calificado
134	53749	ESPECIALIZACIÓN EN GERENCIA DE MANTENIMIENTO	ESPECIALISTA EN GERENCIA DE MANTENIMIENTO	Especialización	2	25	Semestral	22	Registro Calificado
135	116209	MAESTRÍA EN GERENCIA DE MANTENIMIENTO	MAGISTER EN GERENCIA DE MANTENIMIENTO	Maestría	4	48	Semestral	22	Registro Calificado
136	111221	ESPECIALIZACIÓN EN SISTEMAS ENERGÉTICOS SOSTENIBLES	ESPECIALISTA EN SISTEMAS ENERGÉTICOS SOSTENIBLES	Especialización	2	30	Semestral	22	Registro Calificado
137	54225	ESPECIALIZACIÓN EN AUTOMATIZACIÓN Y CONTROL DE PROCESOS INDUSTRIALES	ESPECIALISTA EN AUTOMATIZACIÓN Y CONTROL DE PROCESOS INDUSTRIALES	Especialización	2	26	Semestral	22	Registro Calificado
138	116287	Maestría en Management de la Transformación Digital	Magíster en Management de la Transformación Digital	Maestría	3	41	Semestral	22	Registro Calificado
139	54012	ESPECIALIZACION EN GERENCIA DEL TALENTO HUMANO	ESPECIALISTA EN GERENCIA DEL TALENTO HUMANO	Especialización	2	24	Semestral	22	Registro Calificado
140	116394	MAESTRÍA EN CIBERSEGURIDAD	MAGISTER EN CIBERSEGURIDAD	Maestría	3	43	Semestral	22	Registro Calificado
141	116839	MAESTRÍA EN INDUSTRIA 4.0 Y AUTOMATIZACIÓN INDUSTRIAL	Magister en Industria 4.0 y Automatización Industrial	Maestría	3	43	Semestral	22	Registro Calificado
142	20204	ESPECIALIZACION EN GERENCIA EMPRESARIAL	ESPECIALISTA EN GERENCIA EMPRESARIAL	Especialización	2	26	Semestral	22	Registro Calificado
143	20243	ESPECIALIZACION EN GERENCIA DE PRODUCION Y CALIDAD	ESPECIALISTA EN GERENCIA DE PRODUCCION Y CALIDAD	Especialización	2	28	Semestral	22	Registro Calificado
144	20208	ESPECIALIZACION EN GERENCIA DE MERCADEO	ESPECIALISTA EN GERENCIA DE MERCADEO	Especialización	2	28	Semestral	22	Registro Calificado
145	117268	Especialización en análisis y diseño estructural	Especialista en análisis y diseño estructural	Especialización	2	27	Semestral	22	Registro Calificado
146	110938	MAESTRÍA EN GESTIÓN HUMANA Y DESARROLLO ORGANIZACIONAL	MAGISTER EN GESTIÓN HUMANA Y DESARROLLO ORGANIZACIONAL	Maestría	3	40	Anual	22	Registro Calificado
147	54011	ESPECIALIZACIÓN EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	26	Semestral	22	Registro Calificado
148	20219	ESPECIALIZACION EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	24	Semestral	22	Registro Calificado
149	116207	Maestría en Derecho	Magíster en Derecho	Maestría	3	40	Semestral	22	Registro Calificado
150	116064	Maestría en Gerencia Tributaria	Magister en Gerencia Tributaria	Maestría	3	44	Semestral	22	Registro Calificado
151	51891	ESPECIALIZACION EN GESTION DE NEGOCIOS INTERNACIONALES	ESPECIALISTA EN GESTION DE NEGOCIOS INTERNACIONALES	Especialización	2	24	Semestral	22	Registro Calificado
152	111007	MAESTRÍA EN ESTADÍSTICA APLICADA Y CIENCIA DE DATOS	MAGISTER EN ESTADISTICA APLICADA Y CIENCIA DE DATOS	Maestría	4	45	Anual	22	Registro Calificado
153	101918	MAESTRÍA EN EDUCACIÓN	MAGISTER EN EDUCACIÓN	Maestría	4	43	Anual	22	Acreditacion de Alta Calidad
154	117035	Maestría en Enseñanza de las Matemáticas y Ciencias Naturales en entornos digitales	Magister en Enseñanza de las Matemáticas y Ciencias Naturales en entornos digitales	Maestría	3	42	Semestral	22	Registro Calificado
155	102031	ESPECIALIZACIÓN EN ESTADÍSTICA APLICADA	ESPECIALISTA EN ESTADÍSTICA APLICADA	Especialización	2	25	Anual	22	Registro Calificado
156	116286	Especialización en Gestión de Tecnologías Disruptivas en los Negocios	Especialista en Gestión de Tecnologías Disruptivas en los Negocios	Especialización	2	27	Semestral	22	Registro Calificado
157	118346	ESPECIALIZACIÓN EN ESTÁNDARES INTERNACIONALES DE CONTABILIDAD Y AUDITORÍA.	ESPECIALISTA EN ESTÁNDARES INTERNACIONALES DE CONTABILIDAD Y AUDITORÍA	Especialización	2	21	Semestral	22	Registro Calificado
158	116965	Maestría en Intervención Psicosocial	Magíster en Intervención Psicosocial	Maestría	3	42	Semestral	22	Registro Calificado
159	20215	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	9	154	Semestral	22	Acreditacion de Alta Calidad
160	117582	Especialización en Gestión Ambiental Sostenible	Especialista en Gestión Ambiental Sostenible	Especialización	2	21	Semestral	22	Registro Calificado
161	54213	MAESTRIA EN GESTION DE LA INNOVACION	MAGISTER EN GESTION DE LA INNOVACION	Maestría	4	58	Semestral	22	Registro Calificado
162	116250	Especialización en Geotecnia Vial y Pavimentos	Especialista en Geotecnia Vial y Pavimentos	Especialización	2	27	Semestral	22	Registro Calificado
163	116059	Especialización en Gerencia de la Seguridad y Salud en el Trabajo	Especialista en Gerencia de la Seguridad y Salud en el Trabajo	Especialización	2	30	Semestral	22	Registro Calificado
164	116066	ESPECIALIZACIÓN EN DERECHO COMERCIAL	ESPECIALISTA EN DERECHO COMERCIAL	Especialización	2	27	Semestral	22	Registro Calificado
165	116395	Maestría en Gestión del Patrimonio y Turismo Cultural	Magíster en Gestión del Patrimonio y Turismo Cultural	Maestría	3	42	Semestral	22	Registro Calificado
166	107292	ESPECIALIZACIÓN EN TELECOMUNICACIONES Y REDES	ESPECIALISTA EN TELECOMUNICACIONES Y REDES	Especialización	2	21	Semestral	22	Registro Calificado
167	116761	Especialización en Gerencia de Servicios de Salud	Especialista en Gerencia de Servicios de Salud	Especialización	2	27	Semestral	22	Registro Calificado
168	109410	MAESTRIA EN METODOS DE INVESTIGACION SOCIAL	MAGISTER EN MÉTODOS DE INVESTIGACIÓN SOCIAL	Maestría	3	45	Anual	22	Registro Calificado
169	116396	Especialización en Educación Mediada por las TIC	Especialista en Educación Mediada por las TIC	Especialización	2	30	Semestral	22	Registro Calificado
170	116065	Marketing y Transformación digital	Profesional en Marketing y Transformación Digital	Pregrado Universitario	8	133	Semestral	22	Registro Calificado
171	20222	COMUNICACION SOCIAL	COMUNICADOR SOCIAL	Pregrado Universitario	8	136	Semestral	22	Acreditacion de Alta Calidad
172	117294	Especialización en Contratación Estatal	Especialista en Contratación Estatal	Especialización	2	24	Semestral	22	Registro Calificado
173	20227	INGENIERIA CIVIL	INGENIERO CIVIL	Pregrado Universitario	10	159	Semestral	22	Acreditacion de Alta Calidad
174	109451	ARQUITECTURA	ARQUITECTO	Pregrado Universitario	10	154	Semestral	22	Registro Calificado
175	116288	Diseño	Diseñador(a)	Pregrado Universitario	9	146	Semestral	22	Registro Calificado
176	107299	INGENIERIA DE SISTEMAS Y COMPUTACIÓN	INGENIERO DE SISTEMAS Y COMPUTACIÓN	Pregrado Universitario	10	162	Semestral	22	Acreditacion de Alta Calidad
177	116063	CIENCIA DE DATOS	CIENTIFICO DE DATOS	Pregrado Universitario	8	122	Semestral	22	Registro Calificado
178	20226	FINANZAS Y NEGOCIOS INTERNACIONALES	PROFESIONAL EN FINANZAS Y NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	142	Semestral	22	Acreditacion de Alta Calidad
179	20209	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	153	Semestral	22	Acreditacion de Alta Calidad
180	116249	Especialización en Gestión Cultural Sostenible	Especialista en Gestión Cultural Sostenible	Especialización	2	27	Semestral	22	Registro Calificado
181	117293	Especialización en Contratación Estatal	Especialista en Contratación Estatal	Especialización	2	24	Semestral	22	Registro Calificado
182	116284	Especialización en Derecho del Trabajo y Relaciones Laborales	Especialista en Derecho del Trabajo y Relaciones Laborales	Especialización	2	27	Semestral	22	Registro Calificado
183	117374	Especialización en Gestión Territorial y Derecho Urbano	Especialista en Gestión Territorial y Derecho Urbano	Especialización	2	24	Semestral	22	Registro Calificado
184	117155	ESPECIALIZACION EN INGENIERÍA DE SOFTWARE	ESPECIALISTA EN INGENIERIA DE SOFTWARE	Especialización	2	27	Semestral	22	Registro Calificado
185	20514	INGENIERIA AMBIENTAL	INGENIERO AMBIENTAL	Pregrado Universitario	10	171	Semestral	22	Acreditacion de Alta Calidad
186	20218	INGENIERIA ELECTRICA	INGENIERO ELECTRICISTA	Pregrado Universitario	9	153	Semestral	22	Acreditacion de Alta Calidad
187	105968	INGENIERÍA QUÍMICA	INGENIERO QUIMICO	Pregrado Universitario	10	157	Semestral	22	Registro Calificado
188	20212	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	10	163	Semestral	22	Acreditacion de Alta Calidad
189	107161	INGENIERÍA BIOMÉDICA	INGENIERO BIOMÉDICO	Pregrado Universitario	10	169	Semestral	22	Registro Calificado
190	105768	INGENIERÍA NAVAL	INGENIERO NAVAL	Pregrado Universitario	10	168	Semestral	22	Registro Calificado
191	20223	INGENIERIA MECATRONICA	INGENIERO MECATRONICO	Pregrado Universitario	10	172	Semestral	22	Acreditacion de Alta Calidad
192	20216	INGENIERIA MECANICA	INGENIERO MECANICO	Pregrado Universitario	10	172	Semestral	22	Acreditacion de Alta Calidad
193	115951	Especialización en Gerencia de la Seguridad y Salud en el Trabajo	Especialista en Gerencia de la Seguridad y Salud en el Trabajo	Especialización	2	30	Semestral	22	Registro Calificado
194	20214	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	9	152	Semestral	22	Acreditacion de Alta Calidad
195	101524	DERECHO	ABOGADO(A)	Pregrado Universitario	9	155	Semestral	22	Registro Calificado
196	108089	ESPECIALIZACIÓN EN DERECHOS HUMANOS	ESPECIALISTA EN DERECHOS HUMANOS	Especialización	2	24	Semestral	22	Registro Calificado
197	51738	CIENCIA POLITICA Y RELACIONES INTERNACIONALES	POLITOLOGO	Pregrado Universitario	9	152	Semestral	22	Registro Calificado
198	116397	Especialización en Educación Mediada por las TIC	Especialista en Educación Mediada por las TIC	Especialización	2	30	Semestral	22	Registro Calificado
199	116498	Maestría en Educación Mediada por las TIC	Magíster en Educación Mediada por las TIC	Maestría	3	44	Semestral	22	Registro Calificado
200	20217	ECONOMIA	ECONOMISTA	Pregrado Universitario	8	134	Semestral	22	Acreditacion de Alta Calidad
201	20210	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	152	Semestral	22	Acreditacion de Alta Calidad
202	103911	CONTADURÍA PÚBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	152	Semestral	22	Registro Calificado
203	91252	MAESTRÍA EN DESARROLLO Y AMBIENTE	MAGÍSTER EN DESARROLLO Y AMBIENTE	Maestría	4	50	Semestral	22	Registro Calificado
204	91097	MAESTRÍA EN INGENIERÍA NAVAL Y OCEÁNICA	MAGÍSTER EN INGENIERÍA NAVAL Y OCEÁNICA	Maestría	4	48	Anual	22	Registro Calificado
205	20205	ESPECIALIZACION EN GERENCIA DE SERVICIOS DE SALUD	ESPECIALISTA EN GERENCIA DE SERVICIOS DE SALUD	Especialización	2	26	Semestral	22	Registro Calificado
206	53919	MAESTRÍA EN NEGOCIOS INTERNACIONALES E INTEGRACIÓN	MAGÍSTER EN NEGOCIOS INTERNACIONALES E INTEGRACIÓN	Maestría	4	45	Anual	22	Registro Calificado
207	53748	MAESTRÍA EN DESARROLLO Y CULTURA	MAGÍSTER EN DESARROLLO Y CULTURA	Maestría	4	53	Anual	22	Registro Calificado
208	105970	ESPECIALIZACIÓN EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	27	Semestral	22	Registro Calificado
209	105972	ESPECIALIZACIÓN EN PLANEACIÓN ESTRATÉGICA Y PROSPECTIVA	ESPECIALISTA EN PLANEACIÓN ESTRATÉGICA Y PROSPECTIVA	Especialización	2	24	Semestral	22	Registro Calificado
210	105971	MAESTRÍA EN MERCADEO	MAGISTER EN MERCADEO	Maestría	4	47	Semestral	22	Registro Calificado
211	106390	MAESTRÍA EN BIOINFORMÁTICA	MAGÍSTER EN BIOINFORMÁTICA	Maestría	4	45	Anual	22	Registro Calificado
212	119530	Especialización en Gestión Logística y Cadena de Suministro	Especialista en Gestión Logística y Cadena de Suministro	Especialización	2	24	Semestral	22	Registro Calificado
213	118466	Doctorado en Administración	Doctor (a) en Administración	Doctorado	8	80	Semestral	22	Registro Calificado
214	101955	ESPECIALIZACIÓN EN DIRECCIÓN DE INSTITUCIONES EDUCATIVAS	ESPECIALISTA EN DIRECCIÓN DE INSTITUCIONES EDUCATIVAS	Especialización	2	25	Anual	22	Registro Calificado
215	106491	MAESTRÍA EN ADMINISTRACIÓN	MAGISTER EN ADMINISTRACIÓN	Maestría	4	47	Semestral	22	Registro Calificado
216	115925	ESPECIALIZACIÓN EN DERECHOS HUMANOS	ESPECIALISTA EN DERECHOS HUMANOS	Especialización	2	24	Semestral	22	Registro Calificado
217	55062	MAESTRÍA EN LOGÍSTICA INTEGRAL	MAGÍSTER EN LOGÍSTICA INTEGRAL	Maestría	4	48	Anual	22	Registro Calificado
218	108252	TECNOLOGÍA EN LOGÍSTICA DE ALMACENAJE E INVENTARIOS	TECNÓLOGO EN LOGÍSTICA DE ALMACENAJE E INVENTARIOS	Tecnólogo	6	89	Semestral	22	Registro Calificado
219	90958	MAESTRÍA EN INGENIERÍA DE PRODUCCIÓN	MAGÍSTER EN INGENIERÍA DE PRODUCCIÓN	Maestría	4	48	Anual	22	Registro Calificado
220	111754	ESPECIALIZACIÓN EN RADIOLOGÍA E IMÁGENES DIAGNÓSTICAS	ESPECIALISTA EN EN RADIOLOGÍA E IMÁGENES DIAGNÓSTICAS	Especialización	8	251	Anual	23	Registro Calificado
221	111622	ESPECIALIZACION EN CIRUGIA PLÁSTICA RECONSTRUCTIVA Y ESTÉTICA	ESPECIALISTA EN CIRUGIA PLÁSTICA RECONSTRUCTIVA Y ESTÉTICA	Especialización	8	256	Anual	23	Registro Calificado
222	21446	ESPECIALIZACION EN OFTALMOLOGIA	ESPECIALISTA EN OFTALMOLOGIA	Especialización	6	182	Anual	23	Registro Calificado
223	21448	ESPECIALIZACION EN PEDIATRIA	ESPECIALISTA EN PEDIATRIA	Especialización	6	168	Anual	23	Registro Calificado
224	101683	ESPECIALIZACIÓN EN CIRUGÍA GENERAL	MEDICO ESPECIALISTA EN CIRUGÍA GENERAL	Especialización	8	225	Anual	23	Registro Calificado
225	21456	ESPECIALIZACION EN MEDICINA INTERNA	ESPECIALISTA EN MEDICINA INTERNA	Especialización	6	173	Anual	23	Registro Calificado
226	101840	ESPECIALIZACIÓN EN ANESTESIOLOGÍA	ESPECIALISTA EN ANESTESIOLOGÍA	Especialización	6	178	Anual	23	Registro Calificado
227	21447	ESPECIALIZACION EN GINECOLOGIA Y OBSTETRICIA	ESPECIALISTA EN GINECOLOGIA Y OBSTETRICIA	Especialización	6	164	Anual	23	Registro Calificado
228	101684	ESPECIALIZACIÓN EN NEUROLOGÍA CLÍNICA	MÉDICO ESPECIALISTA EN NEUROLOGÍA CLÍNICA	Especialización	8	219	Anual	23	Registro Calificado
322	101735	INGENIERIA DE PROCESOS	INGENIERO (A) DE PROCESOS	Pregrado Universitario	10	170	Semestral	25	Registro Calificado
229	111595	ESPECIALIZACIÓN EN MEDICINA CRÍTICA Y CUIDADO INTENSIVO	ESPECIALISTA EN MEDICINA CRÍTICA Y CUIDADO INTENSIVO	Especialización	8	293	Anual	23	Registro Calificado
230	107773	MAESTRÍA EN EPÍDEMIOLOGÍA	MAGISTER EN EPIDEMIOLOGÍA	Maestría	4	64	Semestral	23	Registro Calificado
231	110154	MAESTRÍA EN DERECHO PUBLICO	MAGISTER EN DERECHO PÚBLICO	Maestría	4	50	Anual	23	Registro Calificado
232	109632	MAESTRÍA EN SALUD PÚBLICA	MAGISTER EN SALUD PÚBLICA	Maestría	4	62	Anual	23	Registro Calificado
233	21454	MEDICINA	MEDICO (A)	Pregrado Universitario	12	241	Semestral	23	Acreditacion de Alta Calidad
234	110960	MAESTRÍA EN DERECHO DEL TRABAJO Y DE LA SEGURIDAD SOCIAL	MAGISTER EN DERECHO DEL TRABAJO Y DE LA SEGURIDAD SOCIAL	Maestría	4	50	Anual	23	Registro Calificado
235	101591	ESPECIALIZACION EN CONTRATACION ESTATAL	ESPECIALISTA EN CONTRATACION ESTATAL	Especialización	2	27	Anual	23	Registro Calificado
236	116784	MAESTRÍA EN ADMINISTRACIÓN - MBA	MAGISTER EN ADMINISTRACIÓN - MBA	Maestría	4	49	Semestral	23	Registro Calificado
237	107321	ESPECIALIZACIÓN EN GERENCIA FINANCIERA INTERNACIONAL	ESPECIALISTA EN GERENCIA FINANCIERA INTERNACIONAL	Especialización	2	26	Anual	23	Registro Calificado
238	107813	MAESTRÍA EN GESTIÓN DE LA CALIDAD DE LOS ALIMENTOS	MAGISTER EN GESTIÓN DE LA CALIDAD DE LOS ALIMENTOS	Maestría	4	48	Anual	23	Registro Calificado
239	105064	ESPECIALIZACION EN SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	35	Semestral	23	Registro Calificado
240	110337	ESPECIALIZACIÓN EN GESTIÓN TRIBUTARIA	ESPECIALISTA EN GESTIÓN TRIBUTARIA	Especialización	2	27	Anual	23	Registro Calificado
241	117596	MAESTRIA EN ESTADISTICA APLICADA	MAGISTER EN ESTADISTICA APLICADA	Maestría	4	48	Semestral	23	Registro Calificado
242	111546	ESPECIALIZACIÓN EN ENFERMERÍA MATERNO PERINATAL	ESPECIALISTA EN ENFERMERÍA MATERNO PERINATAL	Especialización	2	30	Semestral	23	Registro Calificado
243	104660	ESPECIALIZACIÓN EN PSICOLOGÍA CLÍNICA DEL NIÑO Y DEL ADOLESCENTE	ESPECIALISTA EN PSICOLOGÍA CLÍNICA DEL NIÑO Y DE ADOLESCENTE	Especialización	2	27	Semestral	23	Registro Calificado
244	21455	ODONTOLOGIA	ODONTOLOGO	Pregrado Universitario	10	180	Semestral	23	Acreditacion de Alta Calidad
245	106616	ESPECIALIZACIÓN EN DERECHO MÉDICO	ESPECIALISTA EN DERECHO MÉDICO	Especialización	2	25	Anual	23	Registro Calificado
246	108613	ESPECIALIZACIÓN EN CONTABILIDAD FINANCIERA INTERNACIONAL	ESPECIALISTA EN CONTABILIDAD FINANCIERA INTERNACIONAL	Especialización	2	27	Semestral	23	Registro Calificado
247	117177	ESPECIALIZACIÓN EN ENFERMERÍA EN URGENCIAS	ESPECIALISTA EN ENFERMERÍA EN URGENCIAS	Especialización	2	34	Semestral	23	Registro Calificado
248	101808	OPTOMETRÍA	OPTÓMETRA	Pregrado Universitario	10	184	Semestral	23	Registro Calificado
249	116772	MAESTRÍA EN CIENCIA DE DATOS	MAGISTER EN CIENCIA DE DATOS	Maestría	4	48	Semestral	23	Registro Calificado
250	117289	MAESTRÍA EN GERENCIA DE LA EDUCACIÓN	MAGISTER EN GERENCIA DE LA EDUCACIÓN	Maestría	3	36	Semestral	23	Registro Calificado
251	21450	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	10	173	Semestral	23	Registro Calificado
252	102602	BIOLOGIA MARINA	BIOLOGO MARINO	Pregrado Universitario	10	178	Semestral	23	Registro Calificado
253	51582	NUTRICI¿N Y DIET¿TICA	NUTRICIONISTA DIETISTA	Pregrado Universitario	10	180	Semestral	23	Acreditacion de Alta Calidad
254	109295	PROFESIONAL EN GASTRONOMÍA	PROFESIONAL EN GASTRONOMÍA	Pregrado Universitario	9	162	Semestral	23	Registro Calificado
255	108459	INGENIERÍA AGROINDUSTRIAL	INGENIERO AGROINDUSTRIAL	Pregrado Universitario	10	180	Semestral	23	Registro Calificado
256	53288	DERECHO	ABOGADO	Pregrado Universitario	9	168	Semestral	23	Registro Calificado
257	52470	ENFERMERIA	ENFERMERO (A)	Pregrado Universitario	9	166	Semestral	23	Acreditacion de Alta Calidad
258	111049	TECNOLOGÍA EN PRODUCCIÓN Y CREACIÓN DE MODA	TECNÓLOGO EN PRODUCCIÓN Y CREACIÓN DE MODA	Tecnólogo	6	103	Semestral	23	Registro Calificado
259	111520	FISIOTERAPIA	FISIOTERAPEUTA	Pregrado Universitario	10	172	Semestral	23	Registro Calificado
260	110336	ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR DE EMPRESAS TURÍSTICA Y HOTELERAS	Pregrado Universitario	9	162	Semestral	23	Registro Calificado
261	117849	ESPECIALIZACIÓN EN INNOVACIÓN EDUCATIVA Y TECNOLOGÍAS	ESPECIALISTA EN INNOVACIÓN EDUCATIVA Y TECNOLOGÍAS	Especialización	2	28	Semestral	23	Registro Calificado
262	109096	INGENIERÍA CIVIL (POR CICLOS PROPEDEÚTICOS)	INGENIERO CIVIL	Pregrado Universitario	9	160	Semestral	23	Registro Calificado
263	53936	ADMINISTRACIÓN DE NEGOCIOS INTERNACIONALES	ADMINISTRADOR DE NEGOCIOS INTERNACIONALES	Pregrado Universitario	8	144	Semestral	23	Acreditacion de Alta Calidad
264	116231	DISEÑO INDUSTRIAL	DISEÑADOR (A) INDUSTRIAL	Pregrado Universitario	8	135	Semestral	23	Registro Calificado
265	53689	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	158	Semestral	23	Acreditacion de Alta Calidad
266	108807	TECNOLOGÍA EN PROCESOS AGROINDUSTRIALES	TECNÓLOGO EN PROCESOS AGROINDUSTRIALES	Tecnólogo	6	108	Semestral	23	Registro Calificado
267	21460	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	9	161	Semestral	23	Acreditacion de Alta Calidad
268	102315	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	10	170	Semestral	23	Registro Calificado
269	109625	TECNOLOGÍA EN GESTIÓN GASTRONÓMICA	TECNÓLOGO EN GESTIÓN GASTRONÓMICA	Tecnólogo	6	108	Semestral	23	Registro Calificado
270	91312	TECNOLOGÍA EN GESTIÓN DE SISTEMAS DE INFORMACIÓN Y REDES DE COMPUTO	TECNÓLOGO EN GESTIÓN DE SISTEMAS DE INFORMACIÓN Y REDES DE COMPUTO	Tecnólogo	5	89	Semestral	23	Acreditacion de Alta Calidad
271	109142	TECNOLOGÍA EN GESTIÓN DE LA CONSTRUCCIÓN	TECNÓLOGO EN GESTIÓN DE LA CONSTRUCCIÓN	Tecnólogo	6	107	Semestral	23	Registro Calificado
272	102317	TECNOLOGIA EN PRODUCCION INDUSTRIAL	TECNOLOGO EN PRODUCCION INDUSTRIAL	Tecnólogo	6	108	Semestral	23	Registro Calificado
273	102321	TECNICA PROFESIONAL EN LOGISTICA DE PRODUCCIÓN	TECNIC0 PROFESIONAL EN LOGISTICA DE PRODUCCIÓN	Técnico Profesional	4	65	Semestral	23	Registro Calificado
274	110957	TECNOLOGÍA EN MANTENIMIENTO ELÉCTRICO	TECNÓLOGO EN MANTENIMIENTO ELÉCTRICO	Tecnólogo	6	107	Semestral	23	Registro Calificado
540	4092	ARQUITECTURA	ARQUITECTO	Pregrado Universitario	10	172	Semestral	30	Registro Calificado
275	110959	TECNOLOGÍA EN MANTENIMIENTO MECÁNICO	TECNÓLOGO EN MANTENIMIENTO MECÁNICO	Tecnólogo	6	107	Semestral	23	Registro Calificado
276	110958	TECNOLOGÍA EN MANTENIMIENTO ELECTRÓNICO	TECNOLÓGO EN MANTENIMIENTO ELECTRÓNICO	Tecnólogo	6	107	Semestral	23	Registro Calificado
277	105613	ESPECIALIZACIÓN EN RESPONSABILIDAD CONTRACTUAL Y EXTRACONTRACTUAL DEL ESTADO	ESPECIALISTA EN RESPONSABILIDAD CONTRACTUAL Y EXTRANCONTRACTUAL DEL ESTADO	Especialización	2	28	Semestral	23	Registro Calificado
278	118888	ESPECIALIZACION EN PERIODONCIA	ESPECIALISTA EN PERIODONCIA	Especialización	5	88	Semestral	23	Registro Calificado
279	118763	Especialización en Rehabilitación Oral	Especialista en Rehabilitación Oral	Especialización	5	96	Semestral	23	Registro Calificado
280	115811	DERECHO	ABOGADO	Pregrado Universitario	9	168	Semestral	23	Registro Calificado
281	6575	MEDICINA	MEDICO	Pregrado Universitario	12	283	Semestral	24	Registro Calificado
282	7400	ODONTOLOGIA	ODONTOLOGO	Pregrado Universitario	10	160	Semestral	24	Registro Calificado
283	105893	ESPECIALIZACIÓN EN EDUCACIÓN Y DIVERSIDAD	ESPECIALISTA EN EDUCACIÓN Y DIVERSIDAD	Especialización	2	30	Semestral	24	Registro Calificado
284	6664	INSTRUMENTACION QUIRURGICA	PROFESIONAL EN INSTRUMENTACION QUIRURGICA	Pregrado Universitario	8	145	Semestral	24	Registro Calificado
285	4442	ENFERMERIA	ENFERMERA (O)	Pregrado Universitario	8	160	Semestral	24	Registro Calificado
286	90711	TRABAJO SOCIAL	TRABAJADOR (A) SOCIAL	Pregrado Universitario	9	146	Semestral	24	Registro Calificado
287	102537	TRABAJO SOCIAL	TRABAJADOR(A) SOCIAL	Pregrado Universitario	8	147	Semestral	24	Registro Calificado
288	2723	DERECHO	ABOGADO(A)	Pregrado Universitario	10	176	Semestral	24	Registro Calificado
289	4160	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	8	160	Semestral	24	Registro Calificado
290	12886	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	153	Semestral	24	Registro Calificado
291	4159	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	9	155	Semestral	24	Registro Calificado
292	106164	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EDUCACIÓN INFANTIL	Pregrado Universitario	9	158	Semestral	24	Acreditacion de Alta Calidad
293	103390	ENFERMERIA	ENFERMERO(A)	Pregrado Universitario	8	164	Semestral	24	Registro Calificado
294	11460	DERECHO	ABOGADO (A)	Pregrado Universitario	10	170	Semestral	24	Registro Calificado
295	52902	TECNOLOGIA EN ATENCION PREHOSPITALARIA	TECNOLOGO EN ATENCION PREHOSPITALARIA	Tecnólogo	6	104	Semestral	24	Registro Calificado
296	107443	TECNÓLOGIA EN DESARROLLLO DE SISTEMAS DE INFORMACIÓN Y DE SOFTWARE	TECNÓLOGO EN DESARROLLLO DE SISTEMAS DE INFORMACIÓN Y DE SOFTWARE	Tecnólogo	6	95	Semestral	24	Registro Calificado
297	102246	TECNOLOGIA EN MECÁNICA DENTAL	TECNOLOGO EN MECANICA DENTAL	Tecnólogo	6	92	Semestral	24	Registro Calificado
298	52809	TECNOLOGíA EN MECáNICA DENTAL	TECNOLOGO EN MECáNICA DENTAL	Tecnólogo	6	101	Semestral	24	Registro Calificado
299	52950	TECNOLOGÍA EN ESTÉTICA Y COSMETOLOGÍA	TECNOLOGO EN ESTÉTICA Y COSMETOLOGÍA	Tecnólogo	6	104	Semestral	24	Registro Calificado
300	119061	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	28	Semestral	24	Registro Calificado
301	119062	Especialización en Auditoria en Servicios de Salud	Especialista en Auditoria en Servicios de Salud	Especialización	2	32	Semestral	24	Registro Calificado
302	119278	Especialización en Gerencia del Talento Humano	Especialista en Gerencia del Talento Humano	Especialización	2	27	Semestral	24	Registro Calificado
303	104628	INSTRUMENTACIÓN QUIRÚRGICA	INSTRUMENTADOR (A) QUIRÚRGICO (A)	Pregrado Universitario	8	145	Semestral	24	Registro Calificado
304	119078	Especialización en Derecho Administrativo y de la Gestión Pública	Especialista en Derecho Administrativo y de la Gestión Pública	Especialización	2	29	Semestral	24	Registro Calificado
305	118994	Especialización en Analítica de Datos	Especialista en Analítica de Datos	Especialización	2	29	Semestral	24	Registro Calificado
306	118632	ENFERMERÍA	Enfermero(a)	Pregrado Universitario	8	160	Semestral	24	Registro Calificado
307	118179	TECNOLOGÍA EN GESTIÓN CONTABLE Y FINANCIERA	TECNÓLOGO EN GESTIÓN CONTABLE Y FINANCIERA	Tecnólogo	6	108	Semestral	24	Registro Calificado
308	118775	Especialización en Intervención Social y Desarrollo Local	Especialista en Intervención Social y Desarrollo Local	Especialización	2	27	Semestral	24	Registro Calificado
309	119679	BACTERIOLOGÍA Y LABORATORIO CLÍNICO	BACTERIOLOGO (A) Y LABORATORISTA CLÍNICO	Pregrado Universitario	9	162	Semestral	24	Registro Calificado
310	102127	ESPECIALIZACIÓN EN GESTIÓN INTEGRAL EN HSEQ	ESPECIALISTA EN GESTIÓN INTEGRAL EN HSEQ	Especialización	2	29	Semestral	25	Registro Calificado
311	116681	Especialización en Alta Gerencia	Especialista en Alta Gerencia	Especialización	2	30	Semestral	25	Registro Calificado
312	116683	Especialización en Derecho Administrativo	Especialista en Derecho Administrativo	Especialización	2	26	Semestral	25	Registro Calificado
313	104179	ESPECIALIZACIÓN EN GESTIÓN ESTRATÉGICA DEL TALENTO HUMANO	ESPECIALISTA EN GESTIÓN ESTRATÉGICA DEL TALENTO HUMANO	Especialización	2	27	Semestral	25	Registro Calificado
314	54573	ESPECIALIZACION EN GESTION TRIBUTARIA	ESPECIALISTA EN GESTION TRIBUTARIA	Especialización	2	23	Semestral	25	Registro Calificado
315	104180	ESPECIALIZACIÓN EN LOGÍSTICA Y DISTRIBUCIÓN FÍSICA INTERNACIONAL	ESPECIALISTA EN LOGÍSTICA Y DISTRIBUCIÓN FÍSICA INTERNACIONAL	Especialización	2	26	Semestral	25	Registro Calificado
316	102983	ESPECIALIZACIÓN EN GERENCIA ESTRATÉGICA DE MARKETING	ESPECIALISTA EN GERENCIA ESTRATÉGICA DE MARKETING	Especialización	2	30	Semestral	25	Registro Calificado
317	117873	Especialización en Analítica de Datos e Información	Especialista en Analítica de Datos e Información	Especialización	2	29	Semestral	25	Registro Calificado
318	90947	ESPECIALIZACIÓN EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	28	Semestral	25	Registro Calificado
319	117197	Especialización en Contratación Estatal	Especialista en Contratación Estatal	Especialización	2	27	Semestral	25	Registro Calificado
320	102829	ESPECIALIZACIÓN EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	29	Semestral	25	Registro Calificado
323	52990	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	171	Semestral	25	Registro Calificado
324	90935	INGENIERIA AMBIENTAL	INGENIERO AMBIENTAL	Pregrado Universitario	10	169	Semestral	25	Registro Calificado
325	53709	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	169	Semestral	25	Registro Calificado
326	53040	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	154	Semestral	25	Registro Calificado
327	52706	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	10	168	Semestral	25	Registro Calificado
328	104856	DERECHO	ABOGADO (A)	Pregrado Universitario	10	173	Semestral	25	Registro Calificado
329	108700	INGENIERÍA CIVIL	INGENIERO CIVIL	Pregrado Universitario	10	166	Semestral	25	Registro Calificado
330	101543	INGENIERÍA ELECTRÓNICA	INGENIERO ELECTRÓNICO	Pregrado Universitario	10	175	Semestral	25	Registro Calificado
331	116682	Negocios Internacionales	Profesional en Negocios Internacionales	Pregrado Universitario	9	155	Semestral	25	Registro Calificado
332	109353	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	9	145	Semestral	25	Registro Calificado
333	107431	TRABAJO SOCIAL	TRABAJADOR/A SOCIAL	Pregrado Universitario	9	150	Semestral	25	Registro Calificado
334	111467	TECNOLOGÍA EN GESTIÓN DE REDES DE COMPUTADORES Y SEGURIDAD INFORMÁTICA	TECNÓLOGO/A EN GESTIÓN DE REDES DE COMPUTADORES Y SEGURIDAD INFORMÁTICA	Tecnólogo	6	99	Semestral	25	Registro Calificado
335	103775	TECNOLOGIA EN GESTIÓN AMBIENTAL INDUSTRIAL	TECNOLOGO EN GESTIÓN AMBIENTAL INDUSTRIAL	Tecnólogo	6	105	Semestral	25	Registro Calificado
336	103229	TECNOLOGIA EN DESARROLLO DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	6	105	Semestral	25	Registro Calificado
337	102603	TECNOLOGIA EN GESTION DE NEGOCIOS INTERNACIONALES	TECNOLOGO EN GESTION DE NEGOCIOS INTERNACIONALES	Tecnólogo	6	96	Semestral	25	Registro Calificado
338	19564	TECNOLOGIA EN CONTROL DE CALIDAD	TECNOLOGO EN CONTROL DE CALIDAD	Tecnólogo	6	107	Semestral	25	Acreditacion de Alta Calidad
339	102094	TECNOLOGÍA EN GESTIÓN TURÍSTICA Y HOTELERA	TECNÓLOGO EN GESTIÓN TURÍSTICA Y HOTELERA	Tecnólogo	6	110	Semestral	25	Registro Calificado
340	53259	TECNOLOGIA EN SEGURIDAD E HIGIENE OCUPACIONAL	TECNOLOGO EN SEGURIDAD E HIGIENE OCUPACIONAL	Tecnólogo	6	105	Semestral	25	Acreditacion de Alta Calidad
341	102609	TECNOLOGIA EN GESTION FINANCIERA	TECNOLOGO EN GESTION FINANCIERA	Tecnólogo	6	97	Semestral	25	Registro Calificado
342	102604	TECNOLOGIA EN GESTION LOGISTICA Y PORTUARIA	TECNOLOGO EN GESTION LOGISTICA Y PORTUARIA	Tecnólogo	6	97	Semestral	25	Registro Calificado
343	116686	Tecnología en Promoción Social	Tecnólogo (a) en Promoción Social	Tecnólogo	6	103	Semestral	25	Registro Calificado
344	101734	TECNOLOGIA EN OPERACIÓN DE PLANTAS Y PROCESOS INDUSTRIALES	TECNOLOGO EN OPERACIÓN DE PLANTAS Y PROCESOS INDUSTRIALES	Tecnólogo	6	104	Semestral	25	Registro Calificado
345	118136	Tecnología en Gestión Talento Humano	Tecnólogo en Gestión del Talento Humano	Tecnólogo	6	100	Semestral	25	Registro Calificado
346	111363	TECNOLOGIA EN GESTIÓN CONTABLE	TECNOLOGO EN GESTIÓN CONTABLE	Tecnólogo	6	101	Semestral	25	Registro Calificado
347	117225	TECNOLOGÍA EN CONSTRUCCIONES CIVILES	Tecnológo(a) en Construcciones Civiles	Tecnólogo	6	105	Semestral	25	Registro Calificado
348	116684	Licenciatura en Educación Infantil	Licenciado (a) en Educación Infantil	Pregrado Universitario	10	166	Semestral	25	Registro Calificado
349	19563	TECNOLOGIA EN PRODUCCION INDUSTRIAL	TECNOLOGO EN PRODUCCION INDUSTRIAL	Tecnólogo	6	101	Semestral	25	Acreditacion de Alta Calidad
350	54822	ESPECIALIZACION EN INGENIERIA DE SOFTWARE	ESPECIALISTA EN INGENIERIA DE SOFTWARE	Especialización	2	23	Semestral	25	Registro Calificado
351	105102	TÉCNICA PROFESIONAL EN ANÁLISIS DE MEDICIONES DE LA PRODUCCIÓN MINERO ENERGÉTICA	TÉCNICO PROFESIONAL EN ANÁLISIS DE MEDICIONES DE LA PRODUCCIÓN MINERO ENERGÉTICA	Técnico Profesional	6	64	Semestral	25	Registro Calificado
352	105551	ESPECIALIZACIÓN EN PSICOLOGÍA SOCIAL APLICADA	ESPECIALISTA EN PSICOLOGÍA SOCIAL APLICADA	Especialización	2	24	Semestral	25	Registro Calificado
353	106046	ESPECIALIZACIÓN TECNOLÓGICA EN SISTEMAS INTEGRADOS DE GESTIÓN EN HSEQ	ESPECIALISTA TECNOLÓGICO EN SISTEMAS INTEGRADOS DE GESTIÓN EN HSEQ	Especialización	2	22	Semestral	25	Registro Calificado
354	105104	TECNOLOGÍA EN GESTIÓN DE RECURSOS MINERO ENERGÉTICOS	TECNÓLOGO EN GESTIÓN DE RECURSOS MINERO ENERGÉTICOS	Tecnólogo	6	96	Semestral	25	Registro Calificado
355	103238	ESPECIALIZACION EN GERENCIA AMBIENTAL	ESPECIALISTA EN GERENCIA AMBIENTAL	Especialización	2	28	Semestral	25	Registro Calificado
356	105103	TÉCNICA PROFESIONAL EN ANÁLISIS DE MEDICIONES DE LA PRODUCCIÓN MINERO ENERGÉTICA	TÉCNICO PROFESIONAL EN ANÁLISIS DE MEDICIONES DE LA PRODUCCIÓN MINERO ENERGÉTICA	Técnico Profesional	6	64	Semestral	25	Registro Calificado
357	104188	TECNOLOGÍA EN INSTRUMENTACIÓN INDUSTRIAL	TECNOLOGO EN INSTRUMENTACIÓN INDUSTRIAL	Tecnólogo	6	98	Semestral	25	Registro Calificado
358	104108	ESPECIALIZACIÓN EN REDES DE COMPUTADORES	ESPECIALISTA EN REDES DE COMPUTADORES	Especialización	2	30	Semestral	25	Registro Calificado
359	118613	TECNOLOGIA EN AUTOMATIZACION ELECTRONICA INDUSTRIAL	Tecnólogo/a en Automatización Electrónica Industrial	Tecnólogo	6	104	Semestral	25	Registro Calificado
360	119236	INGENIERIA QUIMICA	INGENIERO(A) QUIMICO(A)	Pregrado Universitario	10	170	Semestral	25	Registro Calificado
361	54460	ESPECIALIZACION EN GERENCIA INTEGRAL DE LA CALIDAD	ESPECIALISTA EN GERENCIA INTEGRAL DE LA CALIDAD	Especialización	2	23	Semestral	25	Registro Calificado
362	111793	TECNOLOGÍA EN GESTIÓN DE MARKETING	TECNOLOGO EN GESTIÓN DE MARKETING	Tecnólogo	6	100	Semestral	25	Registro Calificado
363	119403	Tecnología en Gestión Integrada de la Calidad, Seguridad Industrial, Salud Ocupacional y Ambiente	Tecnólogo (a) en Gestión Integrada de la Calidad, Seguridad Industrial, Salud Ocupacional y Ambiente	Tecnólogo	6	105	Semestral	25	Registro Calificado
364	116943	MAESTRIA EN SISTEMAS INTEGRADOS DE GESTIÓN	MAGISTER EN SISTEMAS INTEGRADOS DE GESTIÓN	Maestría	4	43	Semestral	26	Registro Calificado
365	116298	ESPECIALIZACION EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	27	Semestral	26	Registro Calificado
631	104721	ECONOMÍA	ECONOMISTA	Pregrado Universitario	9	144	Semestral	34	Registro Calificado
366	117375	MAESTRIA EN GESTIÓN LOGÍSTICA Y PORTUARIA	MAGISTER EN GESTIÓN LOGÍSTICA Y PORTUARIA	Maestría	4	45	Semestral	26	Registro Calificado
367	116299	ESPECIALIZACION EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	28	Semestral	26	Registro Calificado
368	118268	ESPECIALIZACIÓN EN GESTIÓN DEL TURISMO SOSTENIBLE	ESPECIALISTA EN GESTIÓN DEL TURISMO SOSTENIBLE	Especialización	2	26	Semestral	26	Registro Calificado
369	116755	ESPECIALIZACION EN GESTION DE LA CALIDAD	ESPECIALISTA EN GESTION DE LA CALIDAD	Especialización	2	26	Semestral	26	Registro Calificado
370	116145	ESPECIALIZACION EN DERECHO ADMINISTRATIVO Y DE LO CONTENCIOSO	ESPECIALISTA EN DERECHO ADMINISTRATIVO Y DE LO CONTENCIOSO	Especialización	2	28	Semestral	26	Registro Calificado
371	116147	Especializacion en Derecho Comercial	Especialista en Derecho Comercial	Especialización	2	28	Semestral	26	Registro Calificado
372	117147	ESPECIALIZACIÓN EN GESTIÓN AMBIENTAL	ESPECIALISTA EN GESTIÓN AMBIENTAL	Especialización	2	26	Semestral	26	Registro Calificado
373	118095	ESPECIALIZACIÓN EN GESTIÓN DE LA INNOVACIÓN TECNOLÓGICA	ESPECIALISTA EN GESTIÓN DE LA INNOVACIÓN TECNOLÓGICA	Especialización	2	28	Semestral	26	Registro Calificado
374	117577	Especialización en Derecho Marítimo y Aduanero	Especialista en Derecho Marítimo y Aduanero	Especialización	2	30	Semestral	26	Registro Calificado
375	110756	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
376	111240	ADMINISTRACION DE NEGOCIOS INTERNACIONALES	ADMINISTRADOR DE NEGOCIOS INTERNACIONALES	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
377	116208	ADMINISTRACION EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
378	110357	ADMINISTRACION EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
379	109826	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	10	170	Semestral	26	Registro Calificado
380	109827	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	10	170	Semestral	26	Registro Calificado
381	109823	ADMINISTRACIÓN DE NEGOCIOS INTERNACIONALES	ADMINISTRADOR DE NEGOCIOS INTERNACIONALES	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
382	111243	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
383	110279	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	170	Semestral	26	Registro Calificado
384	109242	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	8	144	Semestral	26	Registro Calificado
385	109825	DERECHO	ABOGADO	Pregrado Universitario	10	170	Semestral	26	Registro Calificado
386	118028	ESPECIALIZACIÓN EN ANALÍTICA DE DATOS	ESPECIALISTA EN ANALÍTICA DE DATOS	Especialización	2	26	Semestral	26	Registro Calificado
387	110863	TECNOLOGÍA EN GESTIÓN NAVIERA Y PORTUARIA	TECNÓLOGO EN GESTIÓN NAVIERA Y PORTUARIA	Tecnólogo	6	108	Semestral	26	Registro Calificado
388	102152	TECNOLOGIA EN GESTIÓN GASTRONOMICA	TECNOLOGO EN GESTIÓN GASTRONOMICA	Tecnólogo	6	96	Semestral	26	Registro Calificado
389	110270	TECNOLOGÍA EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNÓLOGO EN SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	108	Semestral	26	Registro Calificado
390	90433	TECNOLOGIA EN CONTROL DE PROCESOS INDUSTRIALES	TECNOLOGO EN CONTROL DE PROCESOS INDUSTRIALES	Tecnólogo	6	108	Semestral	26	Registro Calificado
391	2588	TECNOLOGIA EN SISTEMAS	TECNOLOGO EN SISTEMAS	Tecnólogo	6	84	Semestral	26	Acreditacion de Alta Calidad
392	110152	TECNOLOGIA EN GESTION HOTELERA Y SERVICIOS TURISTICOS	TECNOLOGO EN GESTION HOTELERA Y SERVICIOS TURISTICOS	Tecnólogo	6	108	Semestral	26	Registro Calificado
393	101346	TECNOLOGIA EN GESTION DEL TALENTO HUMANO	TECNOLOGO EN GESTION DEL TALENTO HUMANO	Tecnólogo	6	108	Semestral	26	Registro Calificado
394	10329	TECNOLOGIA EN ELECTRONICA Y TELECOMUNICACIONES	TECNOLOGO EN ELECTRONICA Y TELECOMUNICACIONES	Tecnólogo	6	89	Semestral	26	Acreditacion de Alta Calidad
395	116146	TECNOLOGIA EN ELECTRICIDAD INDUSTRIAL	TECNOLOGO EN ELECTRICIDAD INDUSTRIAL	Tecnólogo	6	108	Semestral	26	Registro Calificado
396	2145	TECNOLOGIA EN GESTION NAVIERA Y PORTUARIA	TECNOLOGO EN GESTION NAVIERA Y PORTUARIA	Tecnólogo	6	96	Semestral	26	Acreditacion de Alta Calidad
397	109824	TECNOLOGIA EN CRIMINALISTICA Y GESTION JUDICIAL	TECNOLOGO EN CRIMINALISTICA Y GESTION JUDIICIAL	Tecnólogo	6	108	Semestral	26	Registro Calificado
398	116148	TECNOLOGIA EN GESTION ADMINISTRATIVA Y FINANCIERA	TECNOLOGO EN GESTION ADMINISTRATIVA Y FINANCIERA	Tecnólogo	6	108	Semestral	26	Registro Calificado
399	103295	TECNOLOGÍA EN CONSTRUCCIÓN DE OBRAS CIVILES	TECNOLOGO EN CONSTRUCCIÓN DE OBRAS CIVILES	Tecnólogo	6	96	Semestral	26	Registro Calificado
400	2586	TECNOLOGIA EN CONTABILIDAD SISTEMATIZADA	TECNOLOGO EN CONTABILIDAD SISTEMATIZADA	Tecnólogo	6	96	Semestral	26	Acreditacion de Alta Calidad
401	104156	TECNOLOGIA EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNOLOGO(A) EN SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	108	Semestral	26	Registro Calificado
402	7565	TECNICA PROFESIONAL EN COMPUTACION	TECNICO PROFESIONAL EN COMPUTACION	Técnico Profesional	4	51	Semestral	26	Acreditacion de Alta Calidad
403	90435	TECNICA PROFESIONAL EN INSTRUMENTACION INDUSTRIAL	TECNICO PROFESIONAL EN INSTRUMENTACION INDUSTRIAL	Técnico Profesional	4	72	Semestral	26	Registro Calificado
404	109857	TECNICA PROFESIONAL EN OPERACIONES LOGISTICAS Y PORTUARIAS	TECNICO PROFESIONAL EN OPERACIONES LOGISTICAS Y PORTUARIAS	Técnico Profesional	4	72	Semestral	26	Registro Calificado
405	109856	TECNICA PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNICO PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	Técnico Profesional	4	72	Semestral	26	Registro Calificado
406	52963	TECNOLOGIA EN GESTION NAVIERA Y PORTUARIA	TECNOLOGO EN AGESTION NAVIERA Y PORTUARIA	Tecnólogo	6	96	Semestral	26	Acreditacion de Alta Calidad
407	52962	TECNOLOGIA EN CONTABILIDAD SISTEMATIZADA	TECNOLOGO EN CONTABILIDAD SISTEMATIZADA	Tecnólogo	6	96	Semestral	26	Registro Calificado
408	117139	TECNOLOGIA EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNOLOGO EN SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	108	Semestral	26	Registro Calificado
409	102013	TECNOLOGÍA EN ELECTRICIDAD INDUSTRIAL	TECNÓLOGO EN ELECTRICIDAD INDUSTRIAL	Tecnólogo	6	94	Semestral	26	Registro Calificado
410	102612	TECNOLOGÍA EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	TECNOLOGO EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	Tecnólogo	6	96	Semestral	26	Registro Calificado
411	102318	TECNOLOGÍA EN ELECTRICIDAD INDUSTRIAL	TECNÓLOGO EN ELECTRICIDAD INDUSTRIAL	Tecnólogo	6	94	Semestral	26	Registro Calificado
412	102012	TECNOLOGÍA EN GESTIÓN DE LA PRODUCCIÓN INDUSTRIAL	TECNOLOGO EN GESTIÓN DE LA PRODUCCIÓN INDUSTRIAL	Tecnólogo	6	96	Semestral	26	Registro Calificado
413	102304	TECNOLOGIA EN GESTION FINANCIERA	TECNOLOGO EN GESTION FINANCIERA	Tecnólogo	6	96	Semestral	26	Registro Calificado
414	90998	TECNOLOGÍA EN ELECTRONICA Y TELECOMUNICACIONES	TECNOLOGO EN ELECTRÓNICA Y TELECOMUNICACIONES	Tecnólogo	6	89	Semestral	26	Registro Calificado
415	102608	TECNOLOGÍA EN GESTIÓN DE LA PRODUCCIÓN INDUSTRIAL	TECNOLOGO EN GESTIÓN DE LA PRODUCCIÓN INDUSTRIAL	Tecnólogo	6	96	Semestral	26	Registro Calificado
416	102243	TECNOLOGÍA EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL	TECNOLOGO EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL	Tecnólogo	6	98	Semestral	26	Registro Calificado
417	102164	TECNICA PROFESIONAL EN COCINA	TECNICO PROFESIONAL EN COCINA	Técnico Profesional	4	64	Semestral	26	Registro Calificado
418	91243	TECNOLOGIA EN GESTION FINANCIERA	TECNOLOGO EN GESTION FINANCIERA	Tecnólogo	6	96	Semestral	26	Registro Calificado
419	102308	TECNOLOGÍA EN GESTION LOGISTICA EN COMPRAS E INVENTARIOS	TECNOLOGO EN GESTION LOGISTICA EN COMPRAS E INVENTARIOS	Tecnólogo	6	96	Semestral	26	Registro Calificado
420	90923	TÉCNICA PROFESIONAL EN OPERACIÓN DE PLANTAS PETROQUÍMICAS	TÉCNICO PROFESIONAL EN OPERACIÓN DE PLANTAS PETROQUÍMICAS	Técnico Profesional	4	63	Semestral	26	Acreditacion de Alta Calidad
421	102307	TECNOLOGÍA EN GESTION DE RIESGOS Y SEGUROS	TECNOLOGO EN GESTION DE RIESGOS Y SEGUROS	Tecnólogo	6	96	Semestral	26	Registro Calificado
422	102629	TECNOLOGÍA EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	TECNOLOGO EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	Tecnólogo	6	96	Semestral	26	Registro Calificado
423	102007	TECNOLOGIA EN GESTIÓN DEL TALENTO HUMANO	TECNOLOGO EN GESTIÓN DEL TALENTO HUMANO	Tecnólogo	6	96	Semestral	26	Registro Calificado
424	101935	ESPECIALIZACION TECNOLOGICA EN SEGURIDAD PORTUARIA	ESPECIALISTA EN SEGURIDAD PORTUARIA	Especialización	2	27	Semestral	26	Registro Calificado
425	102273	TECNOLOGÍA EN ASUNTOS DE GOBIERNO Y EJECUCIÓN DE PROYECTOS	TECNOLOGO EN ASUNTOS DE GOBIERNO Y EJECUCIÓN DE PROYECTOS	Tecnólogo	6	96	Semestral	26	Registro Calificado
426	102593	TECNOLOGÍA EN ELECTROMECÁNICA	TECNÓLOGO EN ELECTROMECÁNICA	Tecnólogo	6	98	Semestral	26	Registro Calificado
427	5651	TECNOLOGIA EN ELECTRONICA Y CONTROLES INDUSTRIALES	TECNOLOGO EN ELECTRONICA Y CONTROLES INDUSTRIALES	Tecnólogo	6	96	Semestral	26	Registro Calificado
428	90434	TÉCNICA PROFESIONAL EN ELECTROMECÁNICA	TÉCNICO PROFESIONAL EN ELECTROMECÁNICA	Técnico Profesional	4	63	Semestral	26	Registro Calificado
429	54599	TÉCNICA PROFESIONAL EN CRIMINALÍSTICA (CICLO PROPEDÉUTICO)	TÉCNICO PROFESIONAL EN CRIMINALÍSTICA	Técnico Profesional	4	65	Semestral	26	Registro Calificado
430	5645	TECNOLOGIA EN GESTION NAVIERA Y PORTUARIA	TECNOLOGO EN ADMINISTRACION NAVIERA Y PORTUARIA	Tecnólogo	6	96	Semestral	26	Registro Calificado
431	54598	TECNOLOGÍA EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL (CICLO PROPEDÉUTICO)	TECNÓLOGO EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL	Tecnólogo	6	96	Semestral	26	Registro Calificado
432	102038	TECNOLOGÍA EN GESTIÓN NAVIERA Y PORTUARIA	TECNOLOGO EN GESTIÓN NAVIERA Y PORTUARIA	Tecnólogo	5	78	Semestral	26	Registro Calificado
433	54566	TÉCNICA PROFESIONAL EN ELECTRICIDAD INDUSTRIAL	TÉCNICO PROFESIONAL EN ELECTRICIDAD INDUSTRIAL	Técnico Profesional	4	63	Semestral	26	Registro Calificado
434	54565	TECNICA PROFESIONAL EN ELECTRONICA	TECNICO PROFESIONAL EN ELECTRONICA	Técnico Profesional	4	63	Semestral	26	Registro Calificado
435	53546	TECNOLOGIA EN GESTION FINANCIERA	TECNOLOGO EN GESTION FINANCIERA	Tecnólogo	6	91	Semestral	26	Registro Calificado
436	102280	TECNOLOGÍA EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	TECNOLOGO EN GESTIÓN DE EMPRESAS AGROINDUSTRIALES	Tecnólogo	6	96	Semestral	26	Registro Calificado
437	102310	TECNICA PROFESIONAL EN MESA Y BAR	TECNICO PROFESIONAL EN MESA Y BAR	Técnico Profesional	4	64	Semestral	26	Registro Calificado
438	103159	TECNOLOGÍA EN ELECTRÓNICA INDUSTRIAL	TECNOLOGO EN ELECTRÓNICA INDUSTRIAL	Tecnólogo	6	90	Semestral	26	Registro Calificado
439	103291	TÉCNICA PROFESIONAL EN MANTENIMIENTO DE COMPUTADORES Y REDES	TÉCNICO PROFESIONAL EN MANTENIMIENTO DE COMPUTADORES Y REDES	Técnico Profesional	4	64	Semestral	26	Registro Calificado
440	101921	TECNOLOGÍA EN GESTIÓN DE IMPORTACIONES Y EXPORTACIONES	TECNOLOGO EN GESTIÓN DE IMPORTACIONES Y EXPORTACIONES	Tecnólogo	6	96	Semestral	26	Registro Calificado
441	103157	TÉCNOLOGÍA EN DESARROLLO DE SOFTWARE	TÉCNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	6	99	Semestral	26	Registro Calificado
442	103158	TÉCNICA PROFESIONAL EN MANTENIMIENTO ELECTRÓNICO	TÉCNICO PROFESIONAL EN MANTENIMIENTO ELECTRÓNICO	Técnico Profesional	4	56	Semestral	26	Registro Calificado
443	103550	TECNOLOGIA EN GESTION LOGISTICA Y PORTUARIA	TECNOLOGO EN GESTION LOGISTICA Y PORTUARIA	Tecnólogo	6	96	Semestral	26	Registro Calificado
444	103426	TÉCNICA PROFESIONAL EN SEGURIDAD INDUSTRIAL	TÉCNICO PROFESIONAL EN SEGURIDAD INDUSTRIAL	Técnico Profesional	4	64	Semestral	26	Registro Calificado
445	103225	TECNICA PROFESIONAL EN OPERACIONES AGROINDUSTRIALES	TECNICO PROFESIONAL EN OPERACIONES AGROINDUSTRIALES	Técnico Profesional	4	64	Semestral	26	Registro Calificado
446	103017	TECNOLOGIA EN MARKETINKG DE SERVICIOS TURISTICOS	TECNOLOGO EN MARKETING DE SERVICIOS TURISTICOS	Tecnólogo	6	96	Semestral	26	Registro Calificado
447	103290	TECNOLOGÍA EN SISTEMAS DE INFORMACIÓN	TECNOLOGO EN SISTEMAS DE INFORMACIÓN	Tecnólogo	6	99	Semestral	26	Registro Calificado
448	103584	TECNOLOGÍA EN CONSTRUCCIÓN DE CIUDADANÍA	TECNOLOGO EN CONSTRUCCIÓN DE CIUDADANÍA	Tecnólogo	6	96	Semestral	26	Registro Calificado
449	103791	TECNOLOGIA EN OPERACIONES TURISTICAS	TECNOLOGO EN OPERACIONES TURISTICAS	Tecnólogo	6	96	Semestral	26	Registro Calificado
450	103810	TECNOLOGIA EN DIGITALIZACIÓN DE MEDIOS	TECNOLOGO EN DIGITALIZACIÓN DE MEDIOS	Tecnólogo	6	93	Semestral	26	Registro Calificado
451	103547	TECNOLOGÍA EN GESTIÓN DE LA SEGURIDAD EN EL TRABAJO	TECNOLOGO EN GESTIÓN DE LA SEGURIDAD EN EL TRABAJO	Tecnólogo	6	96	Semestral	26	Registro Calificado
452	103223	TECNOLOGIA EN GESTION DE EMPRESAS AGROINDUSTRIALES	TECNOLOGO EN GESTION DE EMPRESAS AGROINDUSTRIALES	Tecnólogo	6	96	Semestral	26	Registro Calificado
453	103414	TÉCNICA PROFESIONAL EN PRODUCCIÓN AGROPECUARIA	TÉCNICO PROFESIONAL EN PRODUCCIÓN AGROPECUARIA	Técnico Profesional	4	64	Semestral	26	Registro Calificado
454	103415	TECNOLOGÍA EN GESTIÓN AGROPECUARIA	TECNOLOGO EN GESTIÓN AGROPECUARIA	Tecnólogo	6	96	Semestral	26	Registro Calificado
455	103294	TECNOLOGÍA EN CONSTRUCCIÓN DE OBRAS CIVILES	TECNOLOGO EN CONSTRUCCIÓN DE OBRAS CIVILES	Tecnólogo	6	96	Semestral	26	Registro Calificado
456	103222	ESPECIALIZACION TECNOLOGICA EN FORMULACIÓN Y GESTIÓN DE PROYECTOS	ESPECIALISTA TECNOLOGO EN FORMULACIÓN Y GESTIÓN DE PROYECTOS	Especialización	2	26	Semestral	26	Registro Calificado
457	103425	TECNICA PROFESIONAL EN OPERACIONES LOGISTICAS Y PORTUARIA	TECNICO PROFESIONAL EN OPERACIONES LOGISTICAS Y PORTUARIA	Técnico Profesional	4	64	Semestral	26	Registro Calificado
458	103289	ESPECIALIZACION TECNOLOGICA EN GESTIÓN AMBIENTAL	ESPECIALISTA TECNOLOGICO EN GESTIÓN AMBIENTAL	Especialización	2	26	Semestral	26	Registro Calificado
459	118577	LICENCIATURA EN MATEMÁTICAS	LICENCIADO EN MATEMÁTICAS	Pregrado Universitario	9	149	Semestral	26	Registro Calificado
460	102014	TECNOLOGÍA EN CONSTRUCCIÓN DE OBRAS CIVILES	TECNOLOGO EN CONSTRUCCIÓN DE OBRAS CIVILES	Tecnólogo	6	96	Semestral	26	Registro Calificado
461	108077	TECNOLOGIA EN SISTEMAS INTEGRADOS DE GESTION HSEQ	TECNÓLOGO EN SISTEMAS INTEGRADOS DE GESTION HSEQ	Tecnólogo	6	96	Semestral	26	Registro Calificado
462	107991	TECNOLOGIA EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNOLOGO ES SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	96	Semestral	26	Registro Calificado
463	102011	TECNOLOGIA EN SISTEMAS INTEGRADOS DE GESTIÓN	TECNOLOGO EN SISTEMAS INTEGRADOS DE GESTIÓN	Tecnólogo	6	96	Semestral	26	Registro Calificado
464	108765	TECNOLOGIA EN SEGURIDAD Y SALUDO EN EL TRABAJO	TECNOLOGO EN SEGURIDAD Y SALUDO EN EL TRABAJO	Tecnólogo	6	96	Semestral	26	Registro Calificado
465	108764	TECNOLOGIA EN SEGURIDAD Y SALUD EN EL TRABAJO	TECNOLOGO EN SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	96	Semestral	26	Registro Calificado
466	2584	TECNOLOGÍA EN GESTIÓN DE LA PRODUCCION INDUSTRIAL	TECNOLOGO EN GESTIÓN DE LA PRODUCCION INDUSTRIAL	Tecnólogo	6	96	Semestral	26	Acreditacion de Alta Calidad
467	103427	ESPECIALIZACION TECNOLÓGICA EN GESTION AGROINDUSTRIAL	ESPECIALISTA TECNÓLOGO EN GESTION AGROINDUSTRIAL	Especialización	2	26	Semestral	26	Registro Calificado
468	102328	TECNOLOGÍA EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL	TECNOLOGO EN CRIMINALÍSTICA E INVESTIGACIÓN JUDICIAL	Tecnólogo	6	98	Semestral	26	Registro Calificado
469	103156	TÉCNICA PROFESIONAL EN MANTENIMIENTO DE COMPUTADORES E INSTALACIÓN Y CONFIGURACIÓN DE REDES LAN	TÉCNICO PROFESIONAL EN MANTENIMIENTO DE COMPUTADORES E INSTALACIÓN Y CONFIGURACIÓN DE REDES LAN	Técnico Profesional	4	64	Semestral	26	Registro Calificado
470	117196	Gastronomía	Gastronomo	Pregrado Universitario	9	142	Semestral	27	Registro Calificado
471	116699	TECNOLOGÍA EN GESTION GASTRONÓMICA	TECNOLOGO EN GESTION GASTRONÓMICA	Tecnólogo	6	98	Semestral	27	Registro Calificado
472	117204	ESPECIALIZACIÓN EN GERENCIA DEL TALENTO HUMANO Y DESARROLLO ORGANIZACIONAL	ESPECIALISTA EN GERENCIA DEL TALENTO HUMANO Y DESARROLLO ORGANIZACIONAL	Especialización	2	24	Semestral	27	Registro Calificado
473	116862	ESPECIALIZACIÓN EN GESTIÓN DE OPERACIONES PORTUARIAS	ESPECIALISTA EN GESTIÓN DE OPERACIONES PORTUARIAS	Especialización	2	24	Semestral	27	Registro Calificado
474	117407	Especialización en Conservación y Restauración del Patrimonio Arquitectónico.	Especialista en Conservación y Restauración del Patrimonio Arquitectónico.	Especialización	2	24	Semestral	27	Registro Calificado
475	117214	TECNOLOGÍA EN MANTENIMIENTO ELECTROMECÁNICO	TECNÓLOGO EN MANTENIMIENTO ELECTROMECÁNICO	Tecnólogo	6	108	Semestral	27	Registro Calificado
476	117153	TECNOLOGIA EN DIRECCIÓN COMERCIAL	TECNOLOGO EN DIRECCIÓN COMERCIAL	Tecnólogo	5	85	Semestral	27	Registro Calificado
477	90835	TECNOLOGÍA EN GESTIÓN LOGÍSTICA PORTUARIA Y ADUANERA	TECNÓLOGO EN GESTIÓN LOGÍSTICA PORTUARIA Y ADUANERA	Tecnólogo	7	100	Semestral	27	Registro Calificado
478	2065	TECNOLOGIA EN PROMOCION SOCIAL	TECNOLOGO EN PROMOCION SOCIAL	Tecnólogo	6	90	Semestral	27	Registro Calificado
479	2069	TECNOLOGIA EN DELINEANTE DE ARQUITECTURA E INGENIERIA	TECNOLOGO EN DELINEANTE DE ARQUITECTURA E INGENIERIA	Tecnólogo	6	107	Semestral	27	Registro Calificado
480	105317	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	4	75	Semestral	27	Registro Calificado
481	90836	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS ADUANEROS	TÉCNICO PROFESIONAL EN OPERACIÓN DE PROCESOS ADUANEROS	Técnico Profesional	4	58	Semestral	27	Registro Calificado
482	105318	TECNOLOGIA EN GESTIÓN EMPRESARIAL	TECNOLOGO EN GESTIÓN EMPRESARIAL	Tecnólogo	6	109	Semestral	27	Registro Calificado
483	105387	TECNOLOGÍA EN GESTION DEL MANTENIMIENTO ELECTROMECÁNICO	TECNÓLOGO EN GESTION DEL MANTENIMIENTO ELECTROMECÁNICO	Tecnólogo	6	113	Semestral	27	Registro Calificado
484	116701	DERECHO	ABOGADO(A)	Pregrado Universitario	10	165	Semestral	27	Registro Calificado
485	116700	INGENIERÍA INFORMATICA	Ingeniero (A) Informático	Pregrado Universitario	9	154	Semestral	27	Registro Calificado
486	117360	SEGURIDAD Y SALUD EN EL TRABAJO	SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	134	Semestral	27	Registro Calificado
487	116614	Arquitectura	Arquitecto	Pregrado Universitario	10	169	Semestral	27	Registro Calificado
488	106042	ADMINISTRACIÓN TURÍSTICA	ADMINISTRADOR TURÍSTICO	Pregrado Universitario	10	172	Semestral	27	Registro Calificado
489	90834	ADMINISTRACIÓN DE COMERCIO EXTERIOR	ADMINISTRADOR DE COMERCIO EXTERIOR	Pregrado Universitario	10	137	Semestral	27	Registro Calificado
490	116973	INGENIERÍA MECÁNICA	INGENIERO (A) MECANICO (A)	Pregrado Universitario	10	163	Semestral	27	Registro Calificado
491	118062	TURISMO Y NEGOCIOS INTERNACIONALES	PROFESIONAL EN TURISMO Y NEGOCIOS INTERNACIONALES	Pregrado Universitario	8	140	Semestral	27	Registro Calificado
492	117283	Administración de Empresas	Administrador de Empresas	Pregrado Universitario	8	134	Semestral	27	Registro Calificado
493	105319	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	171	Semestral	27	Registro Calificado
767	12960	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	10	143	Semestral	36	Registro Calificado
494	116990	LICENCIATURA EDUCACIÓN INFANTIL	LICENCIADO (A) EN EDUCACIÓN INFANTIL	Pregrado Universitario	9	144	Semestral	27	Registro Calificado
495	54759	TECNOLOGÍA EN GESTIÓN TURÍSTICA	TECNÓLOGO EN GESTIÓN TURÍSTICA	Tecnólogo	7	122	Semestral	27	Registro Calificado
496	116702	Tecnología en Gestión Empresarial	Tecnólogo en Gestión Empresarial	Tecnólogo	6	100	Semestral	27	Registro Calificado
497	2068	TECNOLOGIA EN TURISMO E IDIOMAS	TECNOLOGO EN TURISMO E IDIOMAS	Tecnólogo	6	101	Semestral	27	Acreditacion de Alta Calidad
498	117422	TECNOLOGÍA SEGURIDAD Y SALUD EN EL TRABAJO	TECNÓLOGO SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	100	Semestral	27	Registro Calificado
499	105386	TÉCNICA PROFESIONAL EN MANTENMIENTO ELECTROMECÁNICO	TÉCNICO PROFESIONAL EN MANTENIMIENTO ELECTROMECÁNICO	Técnico Profesional	4	75	Semestral	27	Registro Calificado
500	54758	TECNICA PROFESIONAL EN OPERACIÓN TURÍSTICA	TÉCNICO PROFESIONAL EN OPERACIÓN TURÍSTICA	Técnico Profesional	4	68	Semestral	27	Registro Calificado
501	115955	TECNOLOGIA EN TURISMO E IDIOMAS	TECNOLOGO EN TURISMO E IDIOMAS	Tecnólogo	6	101	Semestral	27	Acreditacion de Alta Calidad
502	115982	TECNOLOGIA EN PROMOCION SOCIAL	TECNOLOGO EN PROMOCION SOCIAL	Tecnólogo	6	90	Semestral	27	Registro Calificado
503	118711	Trabajo Social	Trabajador (a) Social	Pregrado Universitario	9	138	Semestral	27	Registro Calificado
504	53197	DISEÑO GRAFICO	DISEÑADOR GRAFICO	Pregrado Universitario	8	144	Semestral	28	Registro Calificado
505	104639	DISEÑO INDUSTRIAL	DISEÑADOR INDUSTRIAL	Pregrado Universitario	8	141	Semestral	28	Registro Calificado
506	11918	ARTES ESCENICAS	MAESTRO EN ARTES ESCENICAS	Pregrado Universitario	8	144	Semestral	28	Registro Calificado
507	104638	COMUNICACIÓN AUDIOVISUAL	COMUNICADOR AUDIOVISUAL	Pregrado Universitario	8	136	Semestral	28	Registro Calificado
508	11916	ARTES PLASTICAS	MAESTRO EN ARTES PLASTICAS	Pregrado Universitario	8	140	Semestral	28	Registro Calificado
509	11917	MUSICA	MAESTRO EN MUSICA	Pregrado Universitario	10	164	Semestral	28	Acreditacion de Alta Calidad
510	52519	PUBLICIDAD	PUBLICISTA	Pregrado Universitario	8	135	Semestral	29	Registro Calificado
511	2618	COMUNICACION SOCIAL Y PERIODISMO	COMUNICADOR SOCIAL Y PERIODISMO	Pregrado Universitario	8	136	Semestral	29	Acreditacion de Alta Calidad
512	343	DISEÑO GRAFICO	DISEÑADOR GRAFICO	Pregrado Universitario	8	136	Semestral	29	Registro Calificado
513	1166	ARQUITECTURA	ARQUITECTO	Pregrado Universitario	10	163	Semestral	29	Registro Calificado
514	14877	TECNOLOGIA EN PRODUCCION DE RADIO Y TELEVISION	TECNOLOGO EN PRODUCCION DE RADIO Y TELEVISION	Tecnólogo	6	104	Semestral	29	Registro Calificado
515	106008	MAESTRIA EN SEGURIDAD Y SALUD EN EL TRABAJO	MAGISTER EN SEGURIDAD Y SALUD EN EL TRABAJO	Maestría	4	52	Anual	30	Registro Calificado
516	54689	ESPECIALIZACION EN PSICOLOGIA CLINICA	ESPECIALISTA EN PSICOLOGIA CLINICA	Especialización	2	27	Semestral	30	Registro Calificado
517	53783	ESPECIALIZACIÓN EN LOGISTICA DEL COMERCIO INTERNACIONAL	ESPECIALISTA EN LOGÍSTICA DEL COMERCIO INTERNACIONAL	Especialización	2	30	Semestral	30	Registro Calificado
518	104718	ESPECIALIZACION EN INGENIERIA DE PROCESOS DE REFINACION DE PETROLEO Y PETROQUIMICOS BASICOS	ESPECIALISTA EN INGENIERIA DE PROCESOS DE REFINACION DE PETROLEO Y PETROQUIMICOS BASICOS	Especialización	2	32	Semestral	30	Registro Calificado
519	118251	MAESTRIA EN DERECHO	MAGISTER EN DERECHO	Maestría	3	42	Semestral	30	Registro Calificado
520	116997	MAESTRIA EN PSICOPATOLOGIA CLINICA Y FORENSE CON ENFASIS EN INTERVENCION CON VICTIMAS	MAGISTER EN PSICOPATOLOGIA CLINICA Y FORENSE CON ENFASIS EN INTERVENCION CON VICTIMAS	Maestría	4	52	Semestral	30	Registro Calificado
521	103022	MAESTRIA EN CIENCIAS DE LA EDUCACIÓN	MAGISTER EN CIENCIAS DE LA EDUCACIÓN	Maestría	4	45	Semestral	30	Registro Calificado
522	109256	ESPECIALIZACION EN DERECHO LABORAL Y DE LA SEGURIDAD SOCIAL	ESPECIALISTA EN DERECHO LABORAL Y DE LA SEGURIDAD SOCIAL	Especialización	2	26	Semestral	30	Registro Calificado
523	108475	MAESTRÍA EN INGENIERÍA DE PROCESOS	MAGISTER EN INGENIERÍA DE PROCESOS	Maestría	4	50	Semestral	30	Registro Calificado
524	101310	MAESTRÍA EN COOPERACIÓN INTERNACIONAL PARA EL DESARROLLO	MAGISTER EN COOPERACIÓN INTERNACIONAL PARA EL DESARROLLO	Maestría	4	57	Anual	30	Registro Calificado
525	111558	MAESTRÍA EN TERAPIA MANUAL ORTOPÉDICA	MAGISTER EN TERAPIA MANUAL ORTOPÉDICA	Maestría	4	54	Anual	30	Registro Calificado
526	105942	ESPECIALIZACION EN PEDAGOGIA Y DOCENCIA UNIVERSITARIA	ESPECIALISTA EN PEDAGOGIA Y DOCENCIA UNIVERSITARIA	Especialización	2	28	Semestral	30	Registro Calificado
527	90643	MAESTRÍA EN BIOQUÍMICA CLÍNICA	MAGÍSTER EN BIOQUÍMICA CLÍNICA	Maestría	4	57	Semestral	30	Registro Calificado
528	104691	ESPECIALIZACION EN TEORIA Y METODOLOGIA DEL ENTRENAMIENTO DEPORTIVO	ESPECIALISTA EN TEORIA Y METODOLOGIA DEL ENTRENAMIENTO DEPORTIVO	Especialización	2	27	Semestral	30	Registro Calificado
529	110905	MAESTRÍA EN CIENCIAS DEL DEPORTE	MAGISTER EN CIENCIAS DEL DEPORTE	Maestría	4	47	Semestral	30	Registro Calificado
530	105981	ESPECIALIZACION EN PSICOLOGIA DE LA EDUCACION	ESPECIALISTA EN PSICOLOGIA DE LA EDUCACION	Especialización	2	27	Semestral	30	Registro Calificado
531	108424	ESPECIALIZACIÓN EN DERECHO INTERNACIONAL DE LOS DERECHOS HUMANOS Y CULTURA DE PAZ	ESPECIALISTA EN DERECHO INTERNACIONAL DE LOS DERECHOS HUMANOS Y CULTURA DE PAZ	Especialización	2	28	Semestral	30	Registro Calificado
532	118099	MAESTRÍA EN DIDÁCTICA DEL INGLÉS	MAGÍSTER EN DIDÁCTICA DEL INGLÉS	Maestría	4	55	Semestral	30	Registro Calificado
533	19741	LICENCIATURA EN LENGUAS MODERNAS CON ENFASIS EN INGLES Y FRANCES	LICENCIADO EN LENGUAS MODERNAS CON ENFASIS EN INGLES Y FRANCES	Pregrado Universitario	10	180	Semestral	30	Acreditacion de Alta Calidad
534	54016	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	10	167	Semestral	30	Registro Calificado
535	107716	INGENIERÍA INDUSTRIAL	INGENIERO(A) INDUSTRIAL	Pregrado Universitario	9	152	Semestral	30	Registro Calificado
536	1415	INGENIERIA QUIMICA	INGENIERO QUIMICO	Pregrado Universitario	10	170	Anual	30	Registro Calificado
537	54123	FONOAUDIOLOGIA	FONOAUDIOLOGO	Pregrado Universitario	8	144	Semestral	30	Registro Calificado
538	2525	DERECHO	ABOGADO	Pregrado Universitario	10	170	Semestral	30	Registro Calificado
539	6660	FISIOTERAPIA	FISIOTERAPEUTA	Pregrado Universitario	9	162	Semestral	30	Registro Calificado
541	105417	ADMINISTRACION DEL COMERCIO INTERNACIONAL	ADMINISTRADOR DEL COMERCIO INTERNACIONAL	Pregrado Universitario	9	160	Semestral	30	Registro Calificado
542	108425	GOBIERNO Y RELACIONES INTERNACIONALES	PROFESIONAL EN GOBIERNO Y RELACIONES INTERNACIONALES	Pregrado Universitario	9	161	Semestral	30	Registro Calificado
543	2526	ADMINISTRACION DE NEGOCIOS	ADMINISTRADOR DE NEGOCIOS	Pregrado Universitario	9	155	Semestral	30	Registro Calificado
544	52145	LICENCIATURA EN EDUCACION FISICA, RECREACION Y DEPORTES	LICENCIADO EN EDUCACION FISICA, RECREACION Y DEPORTES	Pregrado Universitario	10	175	Semestral	30	Acreditacion de Alta Calidad
545	108668	INGENIERÍA AGROINDUSTRIAL	INGENIERO(A) AGROINDUSTRIAL	Pregrado Universitario	9	155	Semestral	30	Registro Calificado
546	104717	INGENIERIA MULTIMEDIA	INGENIERO MULTIMEDIA	Pregrado Universitario	10	172	Semestral	30	Registro Calificado
547	3252	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	157	Semestral	30	Registro Calificado
548	108308	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EDUCACIÓN INFANTIL	Pregrado Universitario	9	160	Semestral	30	Registro Calificado
549	101969	MAESTRIA EN BIOQUIMICA CLINICA	MAGISTER EN BIOQUIMICA CLINICA	Maestría	4	57	Anual	30	Registro Calificado
550	53781	ESPECIALIZACIÓN EN GERENCIA FINANCIERA APLICADA AL MERCADO DE CAPITALES	ESPECIALISTA EN GERENCIA FINANCIERA APLICADA AL MERCADO DE CAPITALES	Especialización	2	30	Semestral	30	Registro Calificado
551	13476	ESPECIALIZACION EN COOPERACION INTERNACIONAL PARA EL DESARROLLO	ESPECIALISTA EN COOPERACION INTERNACIONAL PARA EL DESARROLLO	Especialización	2	32	Semestral	30	Registro Calificado
552	53625	ESPECIALIZACION EN DERECHO MARITIMO Y PORTUARIO	ESPECIALISTA EN DERECHO MARITIMO Y PORTUARIO	Especialización	2	27	Semestral	30	Registro Calificado
553	106275	MAESTRIA EN PSICOPATOLOGIA CLINICA Y FORENSE CON ENFASIS EN INTERVENCION CON VICTIMAS	MAGISTER EN PSICOPATOLOGIA CLINICA Y FORENSE CON ENFASIS EN INTERVENCION CON VICTIMAS	Maestría	4	52	Anual	30	Registro Calificado
554	104599	MAESTRIA EN MICROBIOLOGIA CLINICA	MAGISTER EN MICROBIOLOGIA CLINICA	Maestría	4	54	Anual	30	Registro Calificado
555	105941	ESPECIALIZACION EN DIDACTICA PARA LECTURAS Y ESCRITURAS CON ENFASIS EN LITERATURA	ESPECIALISTA EN DIDACTICA PARA LECTURAS Y ESCRITURAS CON ENFASIS EN LITERATURA	Especialización	2	30	Semestral	30	Registro Calificado
556	119703	MAESTRÍA EN COOPERACIÓN INTERNACIONAL PARA EL DESARROLLO	MAGISTER EN COOPERACIÓN INTERNACIONAL PARA EL DESARROLLO	Maestría	4	57	Semestral	30	Registro Calificado
557	111794	BACTERIOLOGÍA Y LABORATORIO CLÍNICO	BACTERIÓLOGO (A) Y LABORATORISTA CLÍNICO (A)	Pregrado Universitario	10	176	Semestral	30	Registro Calificado
558	101937	DERECHO	ABOGADO	Pregrado Universitario	10	170	Semestral	31	Registro Calificado
559	8370	TECNICA PROFESIONAL EN ADMINISTRACION DE EMPRESAS	TECNICO PROFESIONAL EN ADMINISTRACION DE EMPRESAS	Técnico Profesional	6	87	Semestral	31	Registro Calificado
560	117507	Especialización en Derecho Contencioso Administrativo	Especialista en Derecho Contencioso Administrativo	Especialización	2	30	Semestral	32	Registro Calificado
561	102147	ESPECIALIZACIÓN EN ENSEÑANZA DEL IDIOMA INGLÉS	ESPECIALISTA EN ENSEÑANZA DEL IDIOMA INGLÉS	Especialización	2	28	Anual	32	Registro Calificado
562	117878	ESPECIALIZACIÓN EN GESTIÓN INTEGRAL DE EVENTOS	ESPECIALISTA EN GESTIÓN INTEGRAL DE EVENTOS	Especialización	2	26	Semestral	32	Registro Calificado
563	90638	TECNOLOGIA EN GESTIÓN DE SERVICIOS TURÍSTICOS Y HOTELEROS	TECNOLOGO EN GESTIÓN DE SERVICIOS TURÍSTICOS Y HOTELEROS	Tecnólogo	5	86	Semestral	32	Registro Calificado
564	105821	LICENCIATURA EN BILINGÜISMO CON ENFASIS EN INGLES	LICENCIADO EN BILINGÜISMO CON ENFASIS EN INGLES	Pregrado Universitario	9	168	Semestral	32	Registro Calificado
565	54740	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	32	Registro Calificado
566	53797	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	160	Semestral	32	Registro Calificado
567	90637	ADMINISTRACION DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR DE EMPRESAS TURÍSTICAS Y HOTELERAS	Pregrado Universitario	9	158	Semestral	32	Registro Calificado
568	102874	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	9	159	Semestral	32	Registro Calificado
569	90818	DERECHO	ABOGADO	Pregrado Universitario	10	174	Semestral	32	Registro Calificado
570	103267	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	154	Semestral	32	Registro Calificado
571	102876	TECNOLOGÍA EN SISTEMAS DE GESTION DE CALIDAD	TECNOLOGO EN SISTEMAS DE GESTION DE CALIDAD	Tecnólogo	5	90	Semestral	32	Registro Calificado
572	103250	TECNOLOGIA EN DESARROLLO DE SISTEMAS DE INFORMACION Y DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SISTEMAS DE INFORMACION Y DE SOFTWARE	Tecnólogo	6	97	Semestral	32	Registro Calificado
573	115848	LICENCIATURA EN BILINGÜISMO CON ENFASIS EN INGLES	LICENCIADO EN BILINGÜISMO CON ENFASIS EN INGLES	Pregrado Universitario	9	168	Semestral	32	Registro Calificado
574	106452	COMUNICACIÓN AUDIOVISUAL	COMUNICADOR (A) AUDIOVISUAL	Pregrado Universitario	8	140	Semestral	32	Registro Calificado
575	9486	CIENCIAS NAUTICAS PARA OFICIALES MERCANTES	PROFESIONAL EN CIENCIAS NAUTICAS ESPECIALIDAD PUENTE	Pregrado Universitario	8	135	Semestral	33	Registro Calificado
576	10814	ESPECIALIZACION EN LOGISTICA	ESPECIALISTA EN LOGISTICA	Especialización	4	27	Semestral	33	Registro Calificado
577	91478	MAESTRÍA EN INGENIERÍA NAVAL	MAGISTER EN INGENIERÍA NAVAL	Maestría	3	42	Anual	33	Registro Calificado
578	51779	MAESTRIA EN GESTION LOGISTICA	MAGISTER EN GESTION LOGISTICA	Maestría	4	39	Anual	33	Registro Calificado
579	51609	ESPECIALIZACIÓN EN POLÍTICA Y ESTRATEGIA MARÍTIMA	ESPECIALISTA EN POLÍTICA Y ESTRATEGIA MARÍTIMA	Especialización	2	32	Semestral	33	Registro Calificado
580	21547	MAESTRIA EN OCEANOGRAFÍA	MAGISTER EN OCEANOGRAFÍA	Maestría	4	57	Anual	33	Registro Calificado
581	4057	ADMINISTRACION	ADMINISTRADOR	Pregrado Universitario	10	133	Semestral	33	Registro Calificado
582	358	OCEANOGRAFIA FISICA	OCEANOGRAFO FISICO	Pregrado Universitario	10	147	Anual	33	Acreditacion de Alta Calidad
583	102036	INGENIERIA NAVAL	INGENIERO NAVAL	Pregrado Universitario	10	164	Anual	33	Acreditacion de Alta Calidad
584	102417	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	10	157	Anual	33	Acreditacion de Alta Calidad
585	9488	CIENCIAS NAVALES PARA OFICIALES NAVALES	PROFESIONAL EN CIENCIAS NAVALES	Pregrado Universitario	8	143	Semestral	33	Acreditacion de Alta Calidad
586	9487	CIENCIAS NAVALES PARA OFICIALES DE INFANTERIA DE MARINA	PROFESIONAL EN CIENCIAS NAVALES	Pregrado Universitario	8	137	Semestral	33	Acreditacion de Alta Calidad
587	354	ADMINISTRACION MARITIMA	ADMINISTRADOR MARITIMO	Pregrado Universitario	10	138	Anual	33	Acreditacion de Alta Calidad
588	109800	CIENCIAS NAÚTICAS PARA OFICIALES MERCANTES DE MAQUINAS	PROFESIONAL EN CIENCIAS NAUTICAS ESPECIALIDAD MAQUINAS	Pregrado Universitario	8	133	Semestral	33	Registro Calificado
589	118931	Maestría en Derecho Internacional del Mar y Marítimo	Magíster en Derecho Internacional del Mar y Marítimo	Maestría	4	59	Semestral	33	Registro Calificado
590	108493	MAESTRÍA EN EDUCACIÓN INTERCULTURAL	MAGISTER EN EDUCACIÓN INTERCULTURAL	Maestría	3	37	Semestral	34	Registro Calificado
591	108505	MAESTRÍA EN MEDIACIÓN PEDAGÓGICA EN EL APRENDIZAJE DEL INGLÉS	MAGISTER EN MEDIACIÓN PEDAGÓGICA EN EL APRENDIZAJE DEL INGLÉS	Maestría	3	37	Semestral	34	Registro Calificado
592	109311	MAESTRIA EN GOBIERNO, POLITICAS PUBLICAS Y DESARROLLO TERRITORIAL	MAGISTER EN GOBIERNO, POLITICAS PUBLICAS Y DESARROLLO TERRITORIAL	Maestría	4	48	Semestral	34	Registro Calificado
593	108000	MAESTRÍA EN GERENCIA DE PROYECTOS	MAGISTER EN GERENCIA DE PROYECTOS	Maestría	3	36	Semestral	34	Registro Calificado
594	104690	MAESTRÍA EN GESTIÓN DE TECNOLOGÍA DE INFORMACIÓN	MAGISTER EN GESTIÓN DE TECNOLOGÍA DE INFORMACIÓN	Maestría	3	38	Semestral	34	Registro Calificado
595	109768	MAESTRÍA EN DISEÑO DE EXPERIENCIA DE USUARIO	MAGISTER EN DISEÑO DE EXPERIENCIA DE USUARIO	Maestría	3	36	Semestral	34	Registro Calificado
596	109767	MAESTRÍA EN GESTIÓN FINANCIERA	MAGISTER EN GESTIÓN FINANCIERA	Maestría	4	45	Semestral	34	Registro Calificado
597	110182	MAESTRÍA EN DESARROLLO RURAL	MAGISTER EN DESARROLLO RURAL	Maestría	4	42	Semestral	34	Registro Calificado
598	90866	MAESTRIA EN ADMINISTRACIÓN DE ORGANIZACIONES	MAGÍSTER EN ADMINISTRACIÓN DE ORGANIZACIONES	Maestría	4	45	Semestral	34	Acreditacion de Alta Calidad
599	109307	ESPECIALIZACION EN BIOTECNOLOGIA AGROAMBIENTAL	ESPECIALISTA EN BIOTECNOLOGIA AGROAMBIENTAL	Especialización	2	25	Semestral	34	Registro Calificado
600	107234	ESPECIALIZACIÓN EN GERENCIA DE PROCESOS LOGÍSTICOS EN REDES DE VALOR	ESPECIALISTA EN GERENCIA DE PROCESOS LOGÍSTICOS EN REDES DE VALOR	Especialización	2	23	Semestral	34	Registro Calificado
601	110184	ESPECIALIZACIÓN EN RESPONSABILIDAD SOCIAL Y AMBIENTAL	ESPECIALISTA EN RESPONSABILIDAD SOCIAL Y AMBIENTAL	Especialización	2	25	Semestral	34	Registro Calificado
602	8589	ESPECIALIZACION EN GERENCIA ESTRATEGICA DE MERCADEO	ESPECIALISTA EN GERENCIA ESTRATEGICA DE MERCADEO	Especialización	2	25	Semestral	34	Registro Calificado
603	54617	ESPECIALIZACIÓN EN GESTIÓN PÚBLICA	ESPECIALISTA EN GESTIÓN PÚBLICA	Especialización	2	25	Semestral	34	Registro Calificado
604	10674	ESPECIALIZACIÓN EN EDUCACIÓN, CULTURA Y POLITICA	ESPECIALISTA EN EDUCACIÓN, CULTURA Y POLITICA	Especialización	2	24	Semestral	34	Registro Calificado
605	102145	ESPECIALIZACIÓN EN SEGURIDAD INFORMÁTICA	ESPECIALISTA EN SEGURIDAD INFORMÁTICA	Especialización	2	25	Semestral	34	Registro Calificado
606	52598	ESPECIALIZACIÓN EN GESTIÓN DE PROYECTOS	ESPECIALISTA EN GESTIÓN DE PROYECTOS	Especialización	2	25	Semestral	34	Registro Calificado
607	110569	DERECHO	ABOGADA(O)	Pregrado Universitario	10	169	Semestral	34	Registro Calificado
608	107168	DISEÑO INDUSTRIAL	DISEÑADOR INDUSTRIAL	Pregrado Universitario	9	147	Semestral	34	Registro Calificado
609	107927	CIENCIA POLÍTICA	POLITÓLOGO(A)	Pregrado Universitario	8	145	Semestral	34	Registro Calificado
610	110183	NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	148	Semestral	34	Registro Calificado
611	103083	TECNOLOGIA EN DESARROLLO DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	5	89	Semestral	34	Registro Calificado
612	105819	TECNOLOGIA EN RADIOLOGIA E IMAGENES DIAGNOSTICAS	TECNOLOGO EN RADIOLOGIA E IMAGENES DIAGNOSTICAS	Tecnólogo	6	105	Semestral	34	Registro Calificado
613	109753	TECNOLOGIA EN MANEJO Y COMERCIALIZACION AGROFORESTAL	TECNOLOGO EN MANEJO Y COMERCIALIZACION AGROFORESTAL	Tecnólogo	6	97	Semestral	34	Registro Calificado
614	108606	TECNOLOGÍA EN GESTIÓN JURÍDICA DE LA INFORMACIÓN	TECNÓLOGA(O) EN GESTIÓN JURÍDICA DE LA INFORMACIÓN	Tecnólogo	6	95	Semestral	34	Registro Calificado
615	109789	TECNOLOGÍA EN AUTOMATIZACIÓN ELECTRÓNICA INDUSTRIAL	TECNÓLOGO EN AUTOMATIZACIÓN ELECTRÓNICA INDUISTRIAL	Tecnólogo	5	90	Semestral	34	Registro Calificado
616	110185	TECNOLOGIA EN GESTIÓN DE REDES INALÁMBRICAS	TECNÓLOGO EN GESTIÓN DE REDES INALÁMBRICAS	Tecnólogo	5	90	Semestral	34	Registro Calificado
617	107223	TECNOLOGIA EN CALIDAD ALIMENTARIA	TECNOLOGO EN CALIDAD ALIMENTARIA	Tecnólogo	6	99	Semestral	34	Registro Calificado
618	51728	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	9	152	Semestral	34	Registro Calificado
619	4074	FILOSOFIA	FILOSOFO	Pregrado Universitario	8	150	Semestral	34	Registro Calificado
620	3274	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	10	160	Semestral	34	Registro Calificado
621	1687	ZOOTECNIA	ZOOTECNISTA	Pregrado Universitario	10	171	Semestral	34	Acreditacion de Alta Calidad
622	52061	AGRONOMÍA	AGRONOMO	Pregrado Universitario	10	170	Semestral	34	Registro Calificado
623	1688	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	151	Semestral	34	Acreditacion de Alta Calidad
624	3425	COMUNICACION SOCIAL	COMUNICADOR SOCIAL	Pregrado Universitario	9	160	Semestral	34	Acreditacion de Alta Calidad
625	10672	LICENCIATURA EN ETNOEDUCACION	Licenciado(a) en Etnoeducación	Pregrado Universitario	9	153	Semestral	34	Registro Calificado
626	104496	SOCIOLOGÍA	SOCIÓLOGO	Pregrado Universitario	8	150	Semestral	34	Registro Calificado
627	104446	INGENIERÍA INDUSTRIAL.	INGENIERO INDUSTRIAL.	Pregrado Universitario	9	152	Semestral	34	Registro Calificado
628	106255	MUSICA	MAESTRO EN MUSICA	Pregrado Universitario	8	150	Semestral	34	Registro Calificado
629	103808	ADMINISTRACIÓN EN SALUD	ADMINISTRADOR EN SALUD	Pregrado Universitario	9	149	Semestral	34	Registro Calificado
630	104886	ARTES VISUALES	MAESTRO EN ARTES VISUALES	Pregrado Universitario	8	144	Semestral	34	Registro Calificado
632	108508	INGENIERÍA AGROFORESTAL	INGENIERO(A) AGROFORESTAL	Pregrado Universitario	10	167	Semestral	34	Registro Calificado
633	107751	GESTIÓN DEPORTIVA	PROFESIONAL EN GESTIÓN DEPORTIVA	Pregrado Universitario	8	141	Semestral	34	Registro Calificado
634	101333	LICENCIATURA EN MATEMÁTICAS	LICENCIADO(A) EN MATEMÁTICAS	Pregrado Universitario	10	160	Semestral	34	Registro Calificado
635	4450	LICENCIATURA EN FILOSOFIA	LICENCIADO EN FILOSOFIA	Pregrado Universitario	9	160	Semestral	34	Acreditacion de Alta Calidad
636	1689	INGENIERIA DE ALIMENTOS	INGENIERO DE ALIMENTOS	Pregrado Universitario	9	160	Semestral	34	Registro Calificado
637	107200	LICENCIATURA EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	LICENCIADO(A) EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	Pregrado Universitario	10	160	Semestral	34	Registro Calificado
638	2776	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	9	149	Semestral	34	Acreditacion de Alta Calidad
639	52243	INGENIERIA DE TELECOMUNICACIONES	INGENIERO DE TELECOMUNICACIONES	Pregrado Universitario	9	154	Semestral	34	Registro Calificado
640	107601	INGENIERÍA MULTIMEDIA	INGENIERO MULTIMEDIA	Pregrado Universitario	9	149	Semestral	34	Registro Calificado
641	107233	CONTADURIA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	146	Semestral	34	Registro Calificado
642	102420	TECNOLOGÍA EN LOGÍSTICA INDUSTRIAL	TECNÓLOGO LOGISTICA INDUSTRIAL	Tecnólogo	5	90	Semestral	34	Registro Calificado
643	52057	TECNOLOGIA EN PRODUCCION AGRICOLA	TECNOLOGO EN PRODUCCION AGRICOLA	Tecnólogo	6	101	Semestral	34	Registro Calificado
644	1679	TECNOLOGIA EN GESTION DE OBRAS CIVILES Y CONSTRUCCIONES	TECNOLOGO EN GESTION DE OBRAS CIVILES Y CONSTRUCCIONES	Tecnólogo	6	91	Semestral	34	Registro Calificado
645	2775	TECNOLOGIA EN REGENCIA DE FARMACIA	TECNOLOGO EN REGENCIA DE FARMACIA	Tecnólogo	6	95	Semestral	34	Registro Calificado
646	117048	Maestría en Bioética	Magister en Bioética	Maestría	4	38	Semestral	34	Registro Calificado
647	118721	Maestría en Turismo Inteligente	Magister en Turismo Inteligente	Maestría	4	44	Semestral	34	Registro Calificado
648	116972	Especialización en Educación Superior y Transformación Digital	Especialista en Educación Superior y Transformación Digital	Especialización	2	24	Semestral	34	Registro Calificado
649	116321	Especialización en Derecho Administrativo	Especialista en Derecho Administrativo	Especialización	2	25	Semestral	34	Registro Calificado
650	116320	Maestría en Ciberseguridad	Magister en Ciberseguridad	Maestría	3	36	Semestral	34	Registro Calificado
651	111343	ESPECIALIZACIÓN EN ALTA GERENCIA Y DESARROLLO ORGANIZACIONAL	ESPECIALISTA EN ALTA GERENCIA Y DESARROLLO ORGANIZACIONAL	Especialización	2	25	Semestral	34	Registro Calificado
652	111189	ESPECIALIZACION EN NUTRICION Y ALIMENTACION ANIMAL SOSTENIBLE	ESPECIALISTA EN NUTRICION Y ALIMENTACION ANIMAL SOSTENIBLE	Especialización	2	25	Semestral	34	Registro Calificado
653	116252	Especialización en Salud Mental Comunitaria	Especialista en Salud Mental Comunitaria	Especialización	2	24	Semestral	34	Registro Calificado
654	116221	Ingeniería Ambiental	Ingeniero Ambiental	Pregrado Universitario	9	163	Semestral	34	Registro Calificado
655	118985	Trabajo Social	Trabajador(a) Social	Pregrado Universitario	8	144	Semestral	34	Registro Calificado
656	118456	Doctorado en Sustentabilidad Territorio y Ruralidad	Doctor (a) en Sustentabilidad Territorio y Ruralidad	Doctorado	8	74	Semestral	34	Registro Calificado
657	111190	TECNOLOGIA EN GESTION DE EMPRESAS Y ORGANIZACIONES SOLIDARIAS	TECNOLOGO EN GESTION DE EMPRESAS Y ORGANIZACIONES SOLIDARIAS	Tecnólogo	6	91	Semestral	34	Registro Calificado
658	117511	Especialización en Neuropedagogía y Aprendizaje Autónomo	Especialista en Neuropedagogía y Aprendizaje Autónomo	Especialización	2	24	Semestral	34	Registro Calificado
659	110829	MAESTRÍA EN LOGÍSTICA Y REDES DE VALOR	MAGISTER EN LOGÍSTICA Y REDES DE VALOR	Maestría	3	36	Semestral	34	Registro Calificado
660	117094	Maestría en Filosofía de la Tecnología	Magíster en Filosofía de la Tecnología	Maestría	4	39	Semestral	34	Registro Calificado
661	116308	Maestría en Educación Matemática	Magister en Educación Matemática	Maestría	4	43	Semestral	34	Registro Calificado
662	119033	Especialización en Extensión e Innovación Rural	Especialista en Extensión e Innovación Rural	Especialización	2	22	Semestral	34	Registro Calificado
663	116901	Maestría en Ciencia de Datos y Analítica	Magister en Ciencia de Datos y Analítica	Maestría	3	37	Semestral	34	Registro Calificado
664	117224	Especialización en Psicología Jurídica	Especialista en Psicología Jurídica	Especialización	2	24	Semestral	34	Registro Calificado
665	110804	ESPECIALIZACIÓN EN FINANZAS CORPORATIVAS	ESPECIALISTA EN FINANZAS CORPORATIVAS	Especialización	2	24	Semestral	34	Registro Calificado
666	111114	MAESTRÍA EN POLÍTICA, DERECHO Y GESTIÓN AMBIENTAL	MAGISTER EN POLÍTICA, DERECHO Y GESTIÓN AMBIENTAL	Maestría	4	48	Semestral	34	Registro Calificado
667	116172	Maestría en Telesalud	Magister en Telesalud	Maestría	4	46	Semestral	34	Registro Calificado
668	119034	Ingeniería en Inteligencia Artificial y Ciencia de Datos	Ingeniero en Inteligencia Artificial y Ciencia de Datos	Pregrado Universitario	9	150	Semestral	34	Registro Calificado
669	116032	Especialización en Ciencia de Datos y Analítica	Especialista en Ciencia de Datos y Analítica	Especialización	2	22	Semestral	34	Registro Calificado
670	118169	Ingeniería en Energias	Ingeniero en Energias	Pregrado Universitario	9	152	Semestral	34	Registro Calificado
671	116376	Marketing y Negocios Digitales	Profesional en Marketing y Negocios Digitales	Pregrado Universitario	8	144	Semestral	34	Registro Calificado
672	116374	Especialización en Gerencia y Auditoría de la Calidad en Salud	Especialista en Gerencia y Auditoría de la Calidad en Salud	Especialización	2	24	Semestral	34	Registro Calificado
673	118274	Doctorado en Tecnologías de Información	Doctor (a) en Tecnologías de Información	Doctorado	9	80	Semestral	34	Registro Calificado
674	116319	Maestría en Prospectiva e Innovación Sostenible	Magíster en Prospectiva e Innovación Sostenible	Maestría	4	45	Semestral	34	Registro Calificado
675	116318	Especialización en Dirección y Desarrollo del Talento Humano	Especialista en Dirección y Desarrollo del Talento Humano	Especialización	2	24	Semestral	34	Registro Calificado
676	116317	Maestría en Internet de las Cosas	Magister en Internet de las Cosas	Maestría	3	39	Semestral	34	Registro Calificado
677	117142	Historia	Historiador	Pregrado Universitario	8	147	Semestral	34	Registro Calificado
678	116222	Administración Ambiental y de los Recursos Naturales	Administrador(a) Ambiental y de los Recursos Naturales	Pregrado Universitario	9	156	Semestral	34	Registro Calificado
679	116407	Finanzas y Comercio Internacional	Profesional en Finanzas y Comercio Internacional	Pregrado Universitario	8	144	Semestral	34	Registro Calificado
680	117361	LICENCIATURA EN EDUCACION INFANTIL	LICENCIADO(A) EN EDUCACION INFANTIL	Pregrado Universitario	9	156	Semestral	34	Registro Calificado
681	119006	Turismo Sostenible e Innovador	Profesional en Turismo Sostenible e Innovador	Pregrado Universitario	8	144	Semestral	34	Registro Calificado
682	116375	Especialización en Inteligencia e Innovación Organizacional	Especialista en Inteligencia e Innovación Organizacional	Especialización	2	24	Semestral	34	Registro Calificado
683	118860	Doctorado en Cliodinámica	Doctor (a) en Cliodinámica	Doctorado	7	72	Semestral	34	Registro Calificado
684	119005	Tecnología en Desarrollo de Soluciones en Internet de las Cosas	Tecnólogo (a) en Desarrollo de Soluciones en Internet de las Cosas (IoT)	Tecnólogo	4	81	Semestral	34	Registro Calificado
685	119009	Maestría en Cambio Climático y Gestión del Riesgo de Desastres	Magister en Cambio Climático y Gestión del Riesgo de Desastres	Maestría	3	37	Semestral	34	Registro Calificado
686	117473	Especialización en Redes de Telecomunicaciones	Especialista en Redes de Telecomunicaciones	Especialización	2	23	Semestral	34	Registro Calificado
687	117470	Maestría en Derecho	Magíster en Derecho	Maestría	4	46	Semestral	34	Registro Calificado
688	116107	Maestría en Marketing	Magister en Marketing	Maestría	4	45	Semestral	34	Registro Calificado
689	111531	TECNOLOGÍA EN GESTIÓN DE AGRONEGOCIOS	TECNÓLOGO EN GESTIÓN AGRONEGOCIOS	Tecnólogo	6	91	Semestral	34	Registro Calificado
690	119007	Maestría en Derechos Humanos y Justicia Social	Magíster en Derechos Humanos y Justicia Social	Maestría	3	36	Semestral	34	Registro Calificado
691	119004	Tecnología en Gestión de Analítica y Big Data	Tecnólogo(a) en Gestión de Analítica y Big Data	Tecnólogo	4	80	Semestral	34	Registro Calificado
692	118069	Doctorado en Educación, Tecnología y Pedagogías Emergentes	Doctor (a) en Educación, Tecnología y Pedagogías Emergentes	Doctorado	6	80	Semestral	34	Registro Calificado
693	118712	Maestría en Salud Pública	Magister en Salud Pública	Maestría	4	48	Semestral	34	Registro Calificado
694	111325	PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	9	149	Semestral	34	Registro Calificado
695	118243	Administración Pública	Administrador/a Público/a	Pregrado Universitario	8	145	Semestral	34	Registro Calificado
696	117442	Maestría en Gestión Analítica y Estratégica de Personas	Magister en Gestión Analítica y Estratégica de Personas	Maestría	4	45	Semestral	34	Registro Calificado
697	119680	Tecnología en Entrenamiento Deportivo	Tecnólogo en Entrenamiento Deportivo	Tecnólogo	5	99	Semestral	34	Registro Calificado
698	118270	Doctorado en Gestión e Innovación Sostenible	Doctor (a) en Gestión e Innovación Sostenible	Doctorado	6	80	Semestral	34	Registro Calificado
699	118230	Especialización en Auditoria y Aseguramiento de la Información Financiera	Especialista en Auditoría y Aseguramiento de la Información Financiera	Especialización	2	24	Semestral	34	Registro Calificado
700	119527	Especialización en Gestión de Destinos Turísticos	Especialista en Gestión de Destinos Turísticos	Especialización	2	24	Semestral	34	Registro Calificado
701	8742	INGENIERIA AERONAUTICA	INGENIERO AERONAUTICO	Pregrado Universitario	10	162	Semestral	35	Registro Calificado
702	109836	DISEÑO HIPERMEDIA	DISEÑADOR HIPERMEDIA	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
703	1847	COMUNICACION SOCIAL- PERIODISMO	COMUNICADOR SOCIAL- PERIODISTA	Pregrado Universitario	8	144	Semestral	35	Acreditacion de Alta Calidad
704	109455	MAESTRIA EN EDUCACION	MAGISTER EN EDUCACIÓN	Maestría	4	52	Semestral	35	Registro Calificado
705	2652	PUBLICIDAD Y MERCADEO	PROFESIONAL EN PUBLICIDAD Y MERCADEO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
706	110754	MAESTRÍA EN INGENIERÍA	MAGISTER EN INGENIERÍA	Maestría	4	44	Semestral	35	Registro Calificado
707	3679	PSICOLOGIA	PSICOLOGO	Pregrado Universitario	8	144	Semestral	35	Acreditacion de Alta Calidad
708	7571	INGENIERIA INDUSTRIAL	INGENIERO INDUSTRIAL	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
709	105607	MAESTRÍA EN EDUCACIÓN	MAGISTER EN EDUCACIÓN	Maestría	4	48	Semestral	35	Registro Calificado
710	9399	DISE¿O GRAFICO	DISE¿ADOR GRAFICO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
711	110710	MAESTRÍA EN GERENCIA DEL DESARROLLO SOSTENIBLE	MAGISTER EN GERENCIA DEL DESARROLLO SOSTENIBLE	Maestría	4	49	Semestral	35	Registro Calificado
712	7561	INGENIERIA MECANICA	INGENIERO(a) MECANICO(a)	Pregrado Universitario	6	138	Semestral	35	Registro Calificado
713	7567	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	10	162	Semestral	35	Acreditacion de Alta Calidad
714	109523	INGENIERIA MECATRONICA	INGENIERO MECATRONICO	Pregrado Universitario	10	162	Semestral	35	Registro Calificado
715	109462	MAESTRÍA EN GERENCIA DEL DESARROLLO SOSTENIBLE	MAGÍSTER EN GERENCIA DEL DESARROLLO SOSTENIBLE	Maestría	4	49	Semestral	35	Registro Calificado
716	13291	ADMINISTRACION TURISTICA Y HOTELERA	PROFESIONAL EN ADMINISTRACION TURISTICA Y HOTELERA	Pregrado Universitario	10	172	Semestral	35	Acreditacion de Alta Calidad
717	53041	DERECHO	ABOGADO	Pregrado Universitario	9	168	Semestral	35	Acreditacion de Alta Calidad
718	109792	CIENCIA POLÍTICA Y GOBIERNO	PROFESIONAL EN CIENCIA POLÍTICA Y GOBIERNO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
719	10905	ESPECIALIZACION EN ESTADISTICA APLICADA	ESPECIALISTA EN ESTADISTICA APLICADA	Especialización	2	24	Semestral	35	Registro Calificado
720	109317	ESPECIALIZACIÓN EN SEGURIDAD DE LA INFORMACION	ESPECIALISTA EN SEGURIDAD DE LA INFORMACION	Especialización	2	24	Semestral	35	Registro Calificado
768	12449	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	147	Semestral	36	Registro Calificado
721	101725	TECNOLOGIA EN GESTIÓN TURISTICA Y HOTELERA	TECNOLOGO EN GESTIÓN TURISTICA Y HOTELERA	Tecnólogo	6	105	Semestral	35	Acreditacion de Alta Calidad
722	109719	ESPECIALIZACIÓN EN GESTIÓN DE ACTIVOS	ESPECIALISTA EN GESTIÓN DE ACTIVOS	Especialización	2	24	Semestral	35	Registro Calificado
723	14237	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	8	144	Semestral	35	Acreditacion de Alta Calidad
724	109720	ESPECIALIZACIÓN EN MATEMÁTICA APLICADA	ESPECIALISTA EN MATEMÁTICA APLICADA	Especialización	2	24	Semestral	35	Registro Calificado
725	109721	CIENCIA POLÍTICA Y GOBIERNO	PROFESIONAL EN CIENCIA POLÍTICA Y GOBIERNO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
726	111209	ESPECIALIZACION EN LOGISTICA Y GESTIÓN DE LA CADENA DE SUMINISTRO	ESPECIALISTA EN LOGISTICA Y GESTIÓN DE LA CADENA DE SUMINISTRO	Especialización	2	24	Semestral	35	Registro Calificado
727	109521	ESPECIALIZACIÓN EN SISTEMAS DE AERONAVES NO TRIPULADAS	ESPECIALISTA EN SISTEMAS DE AERONAVES NO TRIPULADAS	Especialización	2	24	Semestral	35	Registro Calificado
728	110251	ADMINISTRACIÓN DEL TURISMO SOSTENIBLE	PROFESIONAL EN ADMINISTRACIÓN DEL TURISMO SOSTENIBLE	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
729	5094	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	8	140	Semestral	35	Registro Calificado
730	106393	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EN EDUCACIÓN INFANTIL	Pregrado Universitario	9	150	Semestral	35	Acreditacion de Alta Calidad
731	1846	LICENCIATURA EN EDUCACION ESPECIAL	LICENCIADO EN EDUCACION ESPECIAL	Pregrado Universitario	9	150	Semestral	35	Acreditacion de Alta Calidad
732	110897	DISEÑO GRÁFICO	DISEÑADOR GRÁFICO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
733	109287	INGENIERIA DE SISTEMAS Y COMPUTACION	INGENIERO (A) DE SISTEMAS Y COMPUTACIÓN	Pregrado Universitario	9	156	Semestral	35	Registro Calificado
734	108752	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
735	109904	ADMINISTRACIÓN LOGÍSTICA	ADMINISTRADOR LOGÍSTICO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
736	110880	ADMINISTRACIÓN LOGÍSTICA	ADMINISTRADOR LOGÍSTICO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
737	117090	Profesional en Gastronomía	Profesional en Gastronomía	Pregrado Universitario	6	144	Semestral	35	Registro Calificado
738	109707	TECNOLOGIA EN GESTION DE PROCESOS INDUSTRIALES	TECNOLOGO EN GESTIÓN DE PROCESOS INDUSTRIALES	Tecnólogo	6	96	Semestral	35	Registro Calificado
739	110992	PUBLICIDAD Y MERCADEO	PROFESIONAL EN PUBLICIDAD Y MERCADEO	Pregrado Universitario	8	144	Semestral	35	Registro Calificado
740	110020	TECNOLOGIA EN ROBOTICA Y AUTOMATIZACION INDUSTRIAL	TECNOLOGO EN ROBÓTICA Y AUTOMATIZACIÓN INDUSTRIAL	Tecnólogo	5	90	Semestral	35	Registro Calificado
741	104463	ESPECIALIZACION EN INFORMATICA PARA EL APRENDIZAJE EN RED	ESPECIALISTA EN INFORMATICA PARA EL APRENDIZAJE EN RED	Especialización	2	24	Semestral	35	Registro Calificado
742	102236	ESPECIALIZACION EN PEDAGOGIA DE LA LUDICA	ESPECIALISTA EN PEDAGOGIA DE LA LUDICA	Especialización	2	24	Semestral	35	Registro Calificado
743	102551	ESPECIALIZACION EN EL ARTE EN LOS PROCESOS DE APRENDIZAJE	ESPECIALISTA EN EL ARTE EN LOS PROCESOS DE APRENDIZAJE	Especialización	2	24	Semestral	35	Registro Calificado
744	101442	ESPECIALIZACION EN EDUCACION AMBIENTAL	ESPECIALISTA EN EDUCACION AMBIENTAL	Especialización	2	24	Semestral	35	Registro Calificado
745	105740	ESPECIALIZACIÓN EN ESTADÍSTICA APLICADA	ESPECIALISTA EN ESTADÍSTICA APLICADA	Especialización	2	24	Semestral	35	Registro Calificado
746	118247	TECNOLOGÍA EN DESARROLLO DE SOFTWARE	TECNOLOGO(A) EN DESARROLLO DE SOFTWARE	Tecnólogo	5	85	Semestral	35	Registro Calificado
747	116826	Especialización en Gestión de Activos	Especialista en Gestión de Activos	Especialización	2	24	Semestral	35	Registro Calificado
748	118234	Especialización en Marketing Digital	Especialista en Marketing Digital	Especialización	2	24	Semestral	35	Registro Calificado
749	117344	Especialización en Medicina Interna	Especialista en Medicina Interna	Especialización	6	187	Anual	36	Registro Calificado
750	106713	MEDICINA	MÉDICO GENERAL	Pregrado Universitario	12	298	Semestral	36	Registro Calificado
751	106262	MEDICINA	Médico (a)	Pregrado Universitario	12	291	Semestral	36	Registro Calificado
752	106718	MEDICINA	MEDICO GENERAL	Pregrado Universitario	12	291	Semestral	36	Registro Calificado
753	2549	MEDICINA	MEDICO (A)	Pregrado Universitario	12	291	Semestral	36	Registro Calificado
754	117528	Especialización en Cirugía de Tejidos Blandos en Pequeños Animales	Especialista en Cirugía de tejidos blandos en pequeños animales	Especialización	2	36	Semestral	36	Registro Calificado
755	106717	ODONTOLOGÍA	ODONTÓLOGO	Pregrado Universitario	10	186	Semestral	36	Registro Calificado
756	11473	MEDICINA	MEDICO (A)	Pregrado Universitario	12	291	Semestral	36	Registro Calificado
757	118253	Especialización en Gestión de la Seguridad del Paciente y Auditoría de Calidad en Salud	Especialista en Gestión de la Seguridad del Paciente y Auditoría de Calidad en Salud	Especialización	3	45	Semestral	36	Registro Calificado
758	117154	Especialización en Medicina de Fauna Silvestre	Especialista en Medicina de Fauna Silvestre	Especialización	2	36	Semestral	36	Registro Calificado
759	106716	ODONTOLOGÍA	ODONTÓLOGO	Pregrado Universitario	10	188	Semestral	36	Registro Calificado
760	116361	Especialización en Producción Animal	Especialista en Producción Animal	Especialización	2	30	Semestral	36	Registro Calificado
761	106600	MEDICINA VETERINARIA Y ZOOTECNIA	MÉDICO VETERINARIO ZOOTECNISTA	Pregrado Universitario	10	170	Semestral	36	Registro Calificado
762	111448	OPTOMETRIA	OPTOMETRA	Pregrado Universitario	9	174	Semestral	36	Registro Calificado
763	107613	MEDICINA VETERIANARIA Y ZOOTECNIA	MÉDICO VETERINARIO ZOOTECNISTA	Pregrado Universitario	10	183	Semestral	36	Registro Calificado
764	107612	MEDICINA VETERINARIA Y ZOOTECNIA	MÉDICO VETERINARIO ZOOTECNISTA	Pregrado Universitario	10	183	Semestral	36	Registro Calificado
765	1828	PUBLICIDAD Y MERCADEO	PROFESIONAL EN PUBLICIDAD Y MERCADEO	Pregrado Universitario	8	137	Semestral	36	Registro Calificado
766	10369	DERECHO	ABOGADO	Pregrado Universitario	10	163	Semestral	36	Registro Calificado
769	12455	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	144	Semestral	36	Registro Calificado
770	106714	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	148	Semestral	36	Registro Calificado
771	106715	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	148	Semestral	36	Registro Calificado
772	109725	MAESTRÍA EN DIRECCIÓN DE EMPRESAS	MAGISTER EN DIRECCIÓN DE EMPRESAS	Maestría	4	50	Semestral	37	Registro Calificado
773	52639	INGENIERÍA MECÁNICA	INGENIERO MECÁNICO	Pregrado Universitario	10	154	Semestral	37	Registro Calificado
774	104600	SEGURIDAD Y SALUD EN EL TRABAJO	PROFESIONAL EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	136	Semestral	37	Registro Calificado
775	118094	DERECHO	ABOGADO	Pregrado Universitario	10	159	Semestral	37	Registro Calificado
776	102314	INGENIERÍA INFORMÁTICA	INGENIERO INFORMÁTICO	Pregrado Universitario	10	162	Semestral	37	Registro Calificado
777	52928	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	162	Semestral	37	Registro Calificado
778	53445	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	10	164	Semestral	37	Registro Calificado
779	109036	DISEÑO VISUAL	DISEÑADOR VISUAL	Pregrado Universitario	8	136	Semestral	37	Registro Calificado
780	110106	TECNOLOGIA EN DECORACION DE INTERIORES	TECNOLOGO EN DECORACION DE INTERIORES	Tecnólogo	6	98	Semestral	37	Registro Calificado
781	105795	TECNOLOGÍA EN DECORACIÓN DE INTERIORES	TECNOLOGO EN DECORACIÓN DE INTERIORES	Tecnólogo	6	98	Semestral	37	Registro Calificado
782	110609	TECNOLOGIA EN GESTION DE LA SEGURIDAD Y SALUD EN EL TRABAJO	TECNOLOGO EN GESTION DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	97	Semestral	37	Registro Calificado
783	102883	INGENIERIA INFORMATICA	INGENIERO INFORMÀTICO	Pregrado Universitario	9	162	Semestral	37	Registro Calificado
784	102322	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	149	Semestral	37	Registro Calificado
785	102519	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	137	Semestral	37	Registro Calificado
786	102186	TECNOLOGÍA EN GESTIÓN EMPRESARIAL	TECNÓLOGO EN GESTIÓN EMPRESARIAL	Tecnólogo	6	99	Semestral	37	Registro Calificado
787	90611	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	4	60	Semestral	37	Registro Calificado
788	101511	TECNOLOGÍA EN PRODUCCIÓN GRÁFICA	TECNÓLOGO EN PRODUCCIÓN GRÁFICA	Tecnólogo	6	99	Semestral	37	Registro Calificado
789	102018	TECNOLOGÍA EN GESTIÓN EN SALUD OCUPACIONAL	TECNOLOGO EN GESTIÓN EN SALUD OCUPACIONAL	Tecnólogo	6	96	Semestral	37	Registro Calificado
790	52536	INGENIERÍA ELECTRÓNICA	INGENIERO ELECTRÓNICO	Pregrado Universitario	10	174	Semestral	37	Registro Calificado
791	118212	Tecnología en producción Gráfica	Tecnólogo en Producción Gráfica	Tecnólogo	5	90	Semestral	37	Registro Calificado
792	111792	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	162	Semestral	37	Registro Calificado
793	111791	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	162	Semestral	37	Registro Calificado
794	118619	Diseño Visual	Diseñador Visual	Pregrado Universitario	8	136	Semestral	37	Registro Calificado
795	108462	MAESTRÍA EN ADMINISTRACIÓN	MAGISTER EN ADMINISTRACIÓN	Maestría	2	45	Semestral	38	Registro Calificado
796	108104	MAESTRÍA EN GERENCIA DE LA INNOVACIÓN	MAGISTER EN GERENCIA DE LA INNOVACIÓN	Maestría	4	54	Semestral	38	Registro Calificado
797	105197	MAESTRÍA EN GERENCIA SOCIAL	MAGISTER EN GERENCIA SOCIAL	Maestría	3	40	Semestral	38	Registro Calificado
798	105851	MAESTRÍA EN COMUNICACIÓN - EDUCACIÓN EN LA CULTURA	MAGÍSTER EN COMUNICACIÓN - EDUCACIÓN EN LA CULTURA	Maestría	4	40	Semestral	38	Registro Calificado
799	116631	Maestría en Comunicación Estratégica y Cambio Social	Magister en Comunicación Estratégica y Cambio Social	Maestría	3	40	Semestral	38	Registro Calificado
800	105519	MAESTRÍA EN ÉTICA Y PROBLEMAS MORALES CONTEMPORÁNEOS	MAGISTER EN ÉTICA Y PROBLEMAS MORALES CONTEMPORÁNEOS	Maestría	4	40	Semestral	38	Registro Calificado
801	117484	Especialización en gerencia en riesgos laborales, seguridad y salud en el trabajo	Especialista en gerencia en riesgos laborales, seguridad y salud en el trabajo	Especialización	2	24	Semestral	38	Registro Calificado
802	109342	ESPECIALIZACIÓN EN BIG DATA	ESPECIALISTA EN BIG DATA	Especialización	2	24	Semestral	38	Registro Calificado
803	117564	Especializacion en Gerencia del Talento Humano	Especialista en Gerencia del Talento Humano	Especialización	2	20	Semestral	38	Registro Calificado
804	110699	MAESTRÍA EN CAMBIO CLIMÁTICO Y DESARROLLO SOSTENIBLE	MAGÍSTER EN CAMBIO CLIMÁTICO Y DESARROLLO SOSTENIBLE	Maestría	4	41	Semestral	38	Registro Calificado
805	116989	Maestría en Comunicación y Marketing Digital	Magíster en Comunicación y Marketing Digital	Maestría	2	40	Semestral	38	Registro Calificado
806	109012	ESPECIALIZACIÓN EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	24	Semestral	38	Registro Calificado
807	91451	ESPECIALIZACIÓN EN FINANZAS	ESPECIALISTA EN FINANZAS	Especialización	2	24	Semestral	38	Registro Calificado
808	117020	Maestría en Gerencia de la Innovación en Proyectos	Magíster en Gerencia de la Innovación en Proyectos	Maestría	3	44	Semestral	38	Registro Calificado
809	111597	ESPECIALIZACIÓN EN SUELOS Y NUTRICIÓN VEGETAL	ESPECIALISTA EN SUELOS Y NUTRICIÓN VEGETAL	Especialización	2	22	Semestral	38	Registro Calificado
810	111428	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
811	109739	ESPECIALIZACIÓN EN INNOVACIÓN Y DESARROLLO DE NEGOCIOS	ESPECIALISTA EN INNOVACIÓN Y DESARROLLO DE NEGOCIOS	Especialización	2	24	Semestral	38	Registro Calificado
812	117460	Especialización en Gerencia de riesgos laborales ,seguridad y salud en el trabajo	Especialista en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Pregrado Universitario	2	24	Semestral	38	Registro Calificado
813	116782	Especialización en Gerencia Financiera	Especialista en Gerencia Financiera	Especialización	2	24	Semestral	38	Registro Calificado
814	111314	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
815	111518	ESPECIALIZACIÓN EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	24	Semestral	38	Registro Calificado
816	109821	ESPECIALIZACIÓN EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	24	Semestral	38	Registro Calificado
817	111195	ESPECIALIZACIÓN EN ERGONOMÍA	ESPECIALISTA EN ERGONOMÍA	Especialización	2	24	Semestral	38	Registro Calificado
818	111173	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
819	111296	ESPECIALIZACIÓN EN GERENCIA LOGÍSTICA	ESPECIALISTA EN GERENCIA LOGÍSTICA	Especialización	2	24	Semestral	38	Registro Calificado
820	111488	ESPECIALIZACIÓN EN GERENCIA EN RIESGOS LABORALES SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA EN RIESGOS LABORALES SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	24	Semestral	38	Registro Calificado
821	103152	ESPECIALIZACIÓN EN GERENCIA EN RIESGOS LABORALES , SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA EN RIESGOS LABORALES , SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	24	Semestral	38	Registro Calificado
822	102942	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
823	118006	Especialización en Gerencia de Riesgos Laborales ,Seguridad y Salud en el Trabajo	Especialista en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Especialización	2	24	Semestral	38	Registro Calificado
824	108501	ESPECIALIZACIÓN EN DIRECCIÓN DE CONSTRUCCIÓN DE EDIFICACIONES	ESPECIALISTA EN DIRECCIÓN DE CONSTRUCCIÓN DE EDIFICACIONES	Especialización	2	24	Semestral	38	Registro Calificado
825	109127	MAESTRÍA EN AMBIENTES DE APRENDIZAJE	MAGISTER EN AMBIENTES DE APRENDIZAJE	Maestría	4	44	Semestral	38	Registro Calificado
826	111320	MAESTRÍA EN INTELIGENCIA DE NEGOCIOS	MAGISTER EN INTELIGENCIA DE NEGOCIOS	Maestría	3	42	Semestral	38	Registro Calificado
827	111002	MAESTRÍA EN AMBIENTES DE APRENDIZAJE	MAGISTER EN AMBIENTES DE APRENDIZAJE	Maestría	4	44	Semestral	38	Registro Calificado
828	111651	MAESTRÍA EN MARKETING DIGITAL	MAGISTER EN MARKETING DIGITAL	Maestría	4	42	Semestral	38	Registro Calificado
829	117427	Maestría en Innovaciones Pastorales	Magister en Innovaciones Pastorales	Maestría	4	40	Semestral	38	Registro Calificado
830	117220	Maestría en Pensamiento Social Cristiano	Magister en Pensamiento Social Cristiano	Maestría	4	40	Semestral	38	Registro Calificado
831	111426	MAESTRÍA EN GERENCIA DE LA SALUD	MAGISTER EN GERENCIA DE LA SALUD	Maestría	4	42	Semestral	38	Registro Calificado
832	118026	Maestría en Gerencia de Proyectos	Magíster en Gerencia de Proyectos	Maestría	4	42	Semestral	38	Registro Calificado
833	117468	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
834	118005	ESPECIALIZACION EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	24	Semestral	38	Registro Calificado
835	111647	MAESTRÍA EN GESTIÓN DEL CAMBIO	MAGISTER EN GESTIÓN DEL CAMBIO	Maestría	4	42	Semestral	38	Registro Calificado
836	111425	MAESTRÍA EN GERENCIA DE LA SEGURIDAD Y SALUD EN EL TRABAJO	MAGISTER EN GERENCIA DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Maestría	4	42	Semestral	38	Registro Calificado
837	116071	Especialización en Ciberseguridad	Especialista en Ciberseguridad	Especialización	2	24	Semestral	38	Registro Calificado
838	117025	Maestría en Acompañamiento Familiar	Magíster en Acompañamiento Familiar	Maestría	3	38	Semestral	38	Registro Calificado
839	117085	Especialización en Gestión Portuaria	Especialista en Gestión Portuaria	Especialización	2	24	Semestral	38	Registro Calificado
840	7687	ESPECIALIZACION EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	26	Semestral	38	Registro Calificado
841	117084	Maestría en Paz y Gestión de Crisis	Magíster en Paz y Gestión de Crisis	Maestría	3	42	Semestral	38	Registro Calificado
842	111486	MAESTRIA EN ADMINISTRACIÓN DE EMPRESAS	MAGISTER EN ADMINISTRACIÓN DE EMPRESAS	Maestría	4	42	Semestral	38	Registro Calificado
843	111279	MAESTRÍA EN ACONDICIONAMIENTO FÍSICO Y BIENESTAR	MAGÍSTER EN ACONDICIONAMIENTO FÍSICO Y BIENESTAR	Maestría	4	40	Semestral	38	Registro Calificado
844	111291	MAESTRIA EN GERENCIA DE INSTITUCIONES EDUCATIVAS	MAGISTER EN GERENCIA DE INSTITUCIONES EDUCATIVAS	Maestría	3	42	Semestral	38	Registro Calificado
845	111293	MAESTRIA EN GESTIÓN DE LA TECNOLOGÍA EDUCATIVA	MAGISTER EN GESTIÓN DE LA TECNOLOGÍA EDUCATIVA	Maestría	3	42	Semestral	38	Registro Calificado
846	111283	MAESTRIA EN TRANSFORMACIÓN DIGITAL	MAGISTER EN TRANSFORMACIÓN DIGITAL	Maestría	3	42	Semestral	38	Registro Calificado
847	111257	MAESTRÍA EN PSICOLOGÍA DE LAS ORGANIZACIONES Y DEL TRABAJO	MAGISTER EN PSICOLOGÍA DE LAS ORGANIZACIONES Y DEL TRABAJO	Maestría	3	42	Semestral	38	Registro Calificado
848	110687	ESPECIALIZACIÓN EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	ESPECIALISTA EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	Especialización	2	24	Semestral	38	Registro Calificado
849	117957	Maestría en Educación STEM	Magíster en Educación STEM	Maestría	3	36	Semestral	38	Registro Calificado
850	117956	Maestría en Educación STEM	Magíster en Educación STEM	Maestría	3	36	Semestral	38	Registro Calificado
851	110158	MAESTRÍA EN EDUCACIÓN INCLUSIVA E INTERCULTURAL	MAGISTER EN EDUCACIÓN INCLUSIVA E INTERCULTURAL	Maestría	4	40	Semestral	38	Registro Calificado
852	111284	ESPECIALIZACIÓN EN INTERNET DE LAS COSAS	ESPECIALISTA EN INTERNET DE LAS COSAS	Especialización	2	24	Semestral	38	Registro Calificado
853	109737	ESPECIALIZACIÓN EN POLÍTICAS PÚBLICAS Y BIENESTAR SOCIAL	ESPECIALISTA EN POLÍTICAS PÚBLICAS Y BIENESTAR SOCIAL	Especialización	2	22	Semestral	38	Registro Calificado
854	110933	MAESTRÍA EN EDUCACIÓN PARA LA INCLUSIÓN Y LA DISCAPACIDAD	MAGISTER EN EDUCACIÓN PARA LA INCLUSIÓN Y LA DISCAPACIDAD	Maestría	4	40	Semestral	38	Registro Calificado
855	110466	ESPECIALIZACIÓN EN GESTIÓN TRIBUTARIA	ESPECIALISTA EN GESTIÓN TRIBUTARIA	Especialización	15	22	Semestral	38	Registro Calificado
856	110732	ESPECIALIZACIÓN EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	24	Semestral	38	Registro Calificado
857	110688	ESPECIALIZACIÓN EN GERENCIA DE RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA DE RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO.	Especialización	2	24	Semestral	38	Registro Calificado
858	109811	ESPECIALIZACIÓN EN ECONOMÍA SOCIAL Y SOLIDARIA	ESPECIALISTA EN ECONOMÍA SOCIAL Y SOLIDARIA	Especialización	2	20	Semestral	38	Registro Calificado
859	110465	MAESTRÍA EN GERENCIA DE LA INNOVACIÓN EN PROYECTOS	MAGISTER EN GERENCIA DE LA INNOVACIÓN EN PROYECTOS	Maestría	4	40	Semestral	38	Registro Calificado
860	116808	Maestría en administración	Magister en administración	Maestría	4	44	Semestral	38	Registro Calificado
861	111506	ESPECIALIZACIÓN EN PATOLOGÍA E INTERVENCIÓN DE LAS CONTRUCCIONES	ESPECIALISTA EN PATOLOGÍA E INTERVENCIÓN DE LAS CONTRUCCIONES	Especialización	2	24	Semestral	38	Registro Calificado
862	110862	ESPECIALIZACIÓN EN ATENCIÓN A LA PRIMERA INFANCIA	ESPECIALISTA EN ATENCIÓN A LA PRIMERA INFANCIA	Especialización	2	22	Semestral	38	Registro Calificado
863	109820	ESPECIALIZACIÓN EN FAMILIA, INFANCIA Y ADOLESCENCIA	ESPECIALISTA EN FAMILIA, INFANCIA Y ADOLESCENCIA	Especialización	2	24	Semestral	38	Registro Calificado
864	111654	ESPECIALIZACIÓN EN GERENCIA COMERCIAL	ESPECIALISTA EN GERENCIA COMERCIAL	Especialización	2	24	Semestral	38	Registro Calificado
865	111648	ESPECIALIZACIÓN EN BIG DATA	ESPECIALISTA EN BIG DATA	Especialización	2	24	Semestral	38	Registro Calificado
866	111289	ESPECIALIZACIÓN EN DESARROLLO DE SOFTWARE	ESPECIALISTA EN DESARROLLO DE SOFTWARE	Especialización	2	24	Semestral	38	Registro Calificado
867	111256	ESPECIALIZACIÓN EN COMUNICACIÓN CORPORATIVA	ESPECIALISTA EN COMUNICACIÓN CORPORATIVA	Especialización	2	24	Semestral	38	Registro Calificado
868	111237	ESPECIALIZACIÓN EN GESTIÓN CULTURAL	ESPECIALISTA EN GESTIÓN CULTURAL	Especialización	2	24	Semestral	38	Registro Calificado
869	111041	ESPECIALIZACIÓN EN JUEGO Y DESARROLLO SOCIOEMOCIONAL	ESPECIALISTA EN JUEGO Y DESARROLLO SOCIOEMOCIONAL	Especialización	2	24	Semestral	38	Registro Calificado
870	111042	ESPECIALIZACIÓN EN SEGURIDAD INFORMÁTICA	ESPECIALISTA EN SEGURIDAD INFORMÁTICA	Especialización	2	24	Semestral	38	Registro Calificado
871	10448	ESPECIALIZACION EN COMUNICACION EDUCATIVA	ESPECIALISTA EN COMUNICACION EDUCATIVA	Especialización	2	24	Semestral	38	Registro Calificado
872	111037	ESPECIALIZACIÓN PSICOLOGÍA ORGANIZACIONAL	ESPECIALISTA EN PSICOLOGÍA ORGANIZACIONAL	Especialización	2	24	Semestral	38	Registro Calificado
873	116356	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
874	116354	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
875	116355	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
876	111287	ESPECIALIZACIÓN EN INTELIGENCIA ARTIFICIAL	ESPECIALISTA EN INTELIGENCIA ARTIFICIAL	Especialización	2	24	Semestral	38	Registro Calificado
877	111675	ESPECIALIZACIÓN EN INNOVACIÓN Y DESARROLLO DE NEGOCIOS	ESPECIALISTA EN INNOVACIÓN Y DESARROLLO DE NEGOCIOS	Especialización	2	24	Semestral	38	Registro Calificado
878	111009	ESPECIALIZACIÓN EN GERENCIA ESTRATÉGICA DE RECURSOS HUMANOS	ESPECIALISTA EN GERENCIA ESTRATÉGICA DE RECURSOS HUMANOS	Especialización	2	24	Semestral	38	Registro Calificado
879	111050	ESPECIALIZACIÓN EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	24	Semestral	38	Registro Calificado
880	102463	ESPECIALIZACIÓN EN COMUNICACIÓN ESTRATÉGICA PARA LAS ORGANIZACIONES	ESPECIALISTA EN COMUNICACIÓN ESTRATÉGICA PARA LAS ORGANIZACIONES	Especialización	2	25	Semestral	38	Registro Calificado
881	111462	ESPECIALIZACIÓN EN GERENCIA LOGÍSTICA	ESPECIALISTA EN GERENCIA LOGÍSTICA	Especialización	2	24	Semestral	38	Registro Calificado
882	111313	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
883	111613	ESPECIALIZACIÓN EN ALTO GOBIERNO	ESPECIALISTA EN ALTO GOBIERNO	Especialización	2	24	Semestral	38	Registro Calificado
884	111427	ESPECIALIZACIÓN EN EMPRENDIMIENTO	ESPECIALISTA EN EMPRENDIMIENTO	Especialización	2	24	Semestral	38	Registro Calificado
885	110518	MAESTRÍA EN GERENCIA SOCIAL Y DESARROLLO	MAGÍSTER EN GERENCIA SOCIAL Y DESARROLLO	Maestría	4	40	Semestral	38	Registro Calificado
886	117626	Especialización en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Especialista en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Especialización	2	24	Semestral	38	Registro Calificado
887	110236	ESPECIALIZACIÓN EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	24	Semestral	38	Registro Calificado
888	109740	ESPECIALIZACIÓN EN COMUNICACIÓN DIGITAL	ESPECIALISTA EN COMUNICACIÓN DIGITAL	Especialización	2	20	Semestral	38	Registro Calificado
889	110833	ESPECIALIZACIÓN EN GESTIÓN DEL DESARROLLO TERRITORIAL	ESPECIALISTA EN GESTIÓN DEL DESARROLLO TERRITORIAL	Especialización	2	22	Semestral	38	Registro Calificado
890	111125	ESPECIALIZACIÓN EN GERENCIA DEL TALENTO HUMANO	ESPECIALISTA EN GERENCIA DEL TALENTO HUMANO	Especialización	2	24	Semestral	38	Registro Calificado
891	117897	Especialización en Peritaje Social	Especialista en Peritaje Social	Especialización	2	22	Semestral	38	Registro Calificado
892	111381	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
893	116917	Especialización en Gerencia Social	Especialista en Gerencia Social	Especialización	2	26	Semestral	38	Registro Calificado
894	109809	ESPECIALIZACIÓN EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	ESPECIALISTA EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	Especialización	2	24	Semestral	38	Registro Calificado
895	107533	ESPECIALIZACIÓN EN AGRICULTURA FAMILIAR	ESPECIALISTA EN AGRICULTURA FAMILIAR	Especialización	2	24	Semestral	38	Registro Calificado
896	111487	ESPECIALIZACIÓN EN GERENCIA FINANCIERA	ESPECIALISTA EN GERENCIA FINANCIERA	Especialización	2	24	Semestral	38	Registro Calificado
897	111126	ESPECIALIZACIÓN EN SEGURIDAD INDUSTRIAL E HIGIENE LABORAL	ESPECIALISTA EN SEGURIDAD INDUSTRIAL E HIGIENE LABORAL	Especialización	2	22	Semestral	38	Registro Calificado
898	90487	MAESTRÍA EN EDUCACIÓN	MAGISTER EN EDUCACIÓN	Maestría	4	44	Semestral	38	Acreditacion de Alta Calidad
899	117030	Especialización en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Especialista en Gerencia de Riesgos Laborales, Seguridad y Salud en el Trabajo	Especialización	2	24	Semestral	38	Registro Calificado
900	2052	INGENIERIA CIVIL	INGENIERO CIVIL	Pregrado Universitario	9	149	Semestral	38	Registro Calificado
901	110408	ESPECIALIZACIÓN EN GESTIÓN PSICOSOCIAL EN CONTEXTOS DE TRABAJO.	ESPECIALISTA EN GESTIÓN PSICOSOCIAL EN CONTEXTOS DE TRABAJO.	Especialización	2	24	Semestral	38	Registro Calificado
902	109808	ESPECIALIZACIÓN EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	ESPECIALISTA EN GERENCIA EN RIESGOS LABORALES, SEGURIDAD Y SALUD EN EL TRABAJO	Especialización	2	24	Semestral	38	Registro Calificado
903	117109	Especialización en Auditoría Integral y Revisoría Fiscal	Especialista en Auditoría Integral y Revisoría Fiscal	Especialización	2	24	Semestral	38	Registro Calificado
904	117279	Especializacion en Familia, Infancia y Adolescencia	Especialista en Familia, Infancia y Adolescencia	Especialización	2	24	Semestral	38	Registro Calificado
905	117489	Especilización en Gerencia Social	Especialista en Gerencia social	Especialización	2	24	Semestral	38	Registro Calificado
906	111259	ESPECIALIZACIÓN EN COMUNICACIÓN ESTRATÉGICA PARA LAS ORGANIZACIONES	ESPECIALISTA EN COMUNICACIÓN ESTRATÉGICA PARA LAS ORGANIZACIONES	Especialización	2	25	Semestral	38	Registro Calificado
907	90805	ADMINISTRACIÓN DE EMPRESAS	Administrador(a) de Empresas	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
908	8065	ESPECIALIZACION EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	24	Semestral	38	Registro Calificado
909	117914	Mercadeo	Profesional en Mercadeo	Pregrado Universitario	8	136	Semestral	38	Registro Calificado
910	111735	ADMINISTRACIÓN DEPORTIVA	ADMINISTRADOR (A) DEPORTIVO	Pregrado Universitario	8	138	Semestral	38	Registro Calificado
911	111044	INGENIERÍA DE SISTEMAS	INGENIERO (A) DE SISTEMAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
912	107616	CONTADURÍA PÚBLICA	CONTADOR (A) PÚBLICO (A)	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
913	9829	INGENIERIA CIVIL	INGENIERO CIVIL	Pregrado Universitario	10	170	Semestral	38	Registro Calificado
914	52356	ADMINISTRACION DE EMPRESAS	ADMINSTRADOR DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
915	2051	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Acreditacion de Alta Calidad
916	111542	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
917	117028	DERECHO	ABOGADA - ABOGADO	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
918	107532	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR (A) EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
919	107531	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR (A) EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
920	118023	Derecho	Abogado(a)	Pregrado Universitario	10	149	Semestral	38	Registro Calificado
921	111175	INGENIERÍA ELECTRÓNICA	INGENIERO (A) ELECTRÓNICO	Pregrado Universitario	9	153	Semestral	38	Registro Calificado
922	105672	INGENIERIA AGROINDUSTRIAL	INGENIERO AGROINDUSTRIAL	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
923	90887	ESPECIALIZACIÓN EN GERENCIA DE PROYECTOS	ESPECIALISTA EN GERENCIA DE PROYECTOS	Especialización	2	24	Semestral	38	Registro Calificado
924	117485	Especialización en Gerencia de Proyectos	Especialista en Gerencia de proyectos	Especialización	2	24	Semestral	38	Registro Calificado
925	118053	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
926	109546	TECNOLOGÍA EN REALIZACIÓN AUDIOVISUAL	TECNÓLOGO (A) EN REALIZACIÓN AUDIOVISUAL	Tecnólogo	6	108	Semestral	38	Registro Calificado
927	108202	TRABAJO SOCIAL	TRABAJADOR (A) SOCIAL	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
928	108030	CONTADURÍA PÚBLICA	CONTADOR (A) PÚBLICO (A)	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
929	118031	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
930	109341	INGENIERIA AGROECOLÓGICA	INGENIERO(A) AGROECOLÓGICO(A)	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
931	106884	LICENCIATURA EN EDUCACIÓN FÍSICA	Licenciada (o) (e) en Educación Física	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
932	52338	COMUNICACIÓN SOCIAL - PERIODISMO	COMUNICADOR SOCIAL - PERIODISTA	Pregrado Universitario	8	136	Semestral	38	Registro Calificado
933	52310	COMUNICACIÓN SOCIAL - PERIODISMO	COMUNCADOR SOCIAL - PERIODISTA	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
934	52162	COMUNICACIÓN SOCIAL Y PERIODISMO	COMUNICADOR (A) SOCIAL Y PERIODISTA	Pregrado Universitario	9	162	Semestral	38	Registro Calificado
935	54933	PSICOLOGÍA	PSICÓLOGO	Pregrado Universitario	9	144	Semestral	38	Acreditacion de Alta Calidad
936	108161	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
937	107614	COMUNICACIÓN VISUAL	COMUNICADOR (A) VISUAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
938	110255	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR(A) EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
939	109939	MERCADEO	PROFESIONAL EN MERCADEO	Pregrado Universitario	8	132	Semestral	38	Registro Calificado
940	117488	Derecho	Abogado(a)	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
941	111671	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
942	111674	ESPECIALIZACIÓN EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	ESPECIALISTA EN GERENCIA PARA EL DESARROLLO HUMANO EN LAS ORGANIZACIONES	Especialización	2	24	Semestral	38	Registro Calificado
943	117110	Ingeniería Logística	Ingeniero Logístico	Pregrado Universitario	6	141	Semestral	38	Registro Calificado
944	117005	Contaduría Pública	Contador Público	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
945	117106	Licenciatura en Educación Artística	Licenciado en Educación Artística	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
946	116835	Administración de Empresas	Administrador(a) de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
947	117860	Psicología	Psicólogo/Psicóloga	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
948	116815	Especialización en Gerencia para el Desarrollo Humano en las Organizaciones	Especialista en Gerencia para el Desarrollo Humano en las Organizaciones	Especialización	2	24	Semestral	38	Registro Calificado
949	109812	DISEÑO GRÁFICO	DISEÑADOR (A) GRÁFICO	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
950	90714	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	8	144	Semestral	38	Acreditacion de Alta Calidad
951	90633	TECNOLOGÍA EN REALIZACIÓN AUDIOVISUAL	TECNOLOGO EN REALIZACIÓN AUDIOVISUAL	Tecnólogo	6	108	Semestral	38	Registro Calificado
952	107956	CONTADURÍA PÚBLICA	CONTADOR (A) PÚBLICO (A)	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
953	108102	CONTADURÍA PÚBLICA	CONTADOR (A) PÚBLICO (A)	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
954	117547	Licenciatura en Educación Infantil	Licenciado en educación infantil	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
955	117481	Licenciatura en Educación Infantil	Licenciado en educación infantil	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
956	111262	LICENCIATURA EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	LICENCIADO EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
957	116979	Especialización en Gestión Tributaria	Especialista en Gestión Tributaria	Especialización	2	22	Semestral	38	Registro Calificado
958	90529	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	150	Semestral	38	Acreditacion de Alta Calidad
959	117029	Ingeniería electrónica y sistemas inteligentes	Ingeniero en electrónica y sistemas inteligentes	Pregrado Universitario	6	148	Semestral	38	Registro Calificado
960	116799	Licenciatura en Educación Infantil	Licenciado en Educación Infantil	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
961	109810	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR(A) DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
962	2579	COMUNICACION SOCIAL- PERIODISMO	COMUNICADOR SOCIAL- PERIODISTA	Pregrado Universitario	8	144	Semestral	38	Acreditacion de Alta Calidad
963	111301	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
964	116864	Especialización en Auditoría Forense	Especialista en Auditoría Forense	Especialización	2	24	Semestral	38	Registro Calificado
965	8903	INGENIERIA AGROECOLOGICA	INGENIERO EN AGROECOLOGIA	Pregrado Universitario	10	162	Semestral	38	Acreditacion de Alta Calidad
966	108163	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR (A) EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
967	111174	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
968	116825	Administración de Empresas	Administrador / Administradora de empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
969	117590	Contaduría Pública	Contador Público	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
970	6726	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	150	Semestral	38	Acreditacion de Alta Calidad
971	117779	Especialización en Gestión de Agronegocios	Especialista en Gestión de Agronegocios	Especialización	2	24	Semestral	38	Registro Calificado
972	117171	CREACIÓN AUDIOVISUAL	CREADOR AUDIOVISUAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
973	106273	INGENIERÍA DE SISTEMAS	INGENIERO(A) DE SISTEMAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
974	106270	INGENIERÍA DE SISTEMAS	INGENIERO(A) DE SISTEMAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
975	106269	INGENIERÍA DE SISTEMAS	INGENIERO(A) DE SISTEMAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
976	108247	INGENIERÍA DE SISTEMAS	INGENIERO (A) DE SISTEMAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
977	117800	Especialización en Familia, Infancia y Adolescencia	Especialista en Familia, Infancia y Adolescencia	Especialización	2	24	Semestral	38	Registro Calificado
978	111282	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
979	109004	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
980	106004	COMUNICACION VISUAL	COMUNICADOR(A) VISUAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
981	117998	Ingeniería de Ciencias de Datos e Inteligencia Artificial	Ingeniero(a) de Ciencias de Datos e Inteligencia Artificial	Pregrado Universitario	8	143	Semestral	38	Registro Calificado
982	108574	CONTADURÍA PÚBLICA	CONTADOR(A) PÚBLICO(A)	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
983	108160	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
984	110359	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	6	144	Semestral	38	Registro Calificado
985	106048	INGENIERÍA AGROECOLÓGICA	INGENIERO EN AGROECOLOGÍA	Pregrado Universitario	10	155	Semestral	38	Registro Calificado
986	90710	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
987	105576	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
988	107528	ADMINISTRACIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR EN SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
989	117486	Administración en Seguridad y Salud en el Trabajo	Administrador en Seguridad y Salud en el Trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
990	110873	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
991	105575	TRABAJO SOCIAL	TRABAJADOR(A) SOCIAL	Pregrado Universitario	9	151	Semestral	38	Registro Calificado
992	10430	TECNOLOGIA EN COMUNICACION GRAFICA	TECNOLOGO EN COMUNICACION GRAFICA	Tecnólogo	6	108	Semestral	38	Registro Calificado
993	116936	Licenciatura en Educación Física, Recreación y Deportes	Licenciado en Educación Física, Recreación y Deportes	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
994	116429	Licenciatura en Educación Física, Recreación y Deportes	Licenciado en Educación Física, Recreación y Deportes	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
995	105358	INGENIERIA INDUSTRIAL	INGENIERO(A) INDUSTRIAL	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
996	12168	LICENCIATURA EN INFORMATICA	LICENCIADO(A) EN INFORMATICA	Pregrado Universitario	9	153	Semestral	38	Registro Calificado
997	110700	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
998	117052	Ingeniería de Sistemas	Ingeniero de Sistemas	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
999	117015	Licenciatura en Educación Física, Recreación y Deportes	Licenciado (a) en Educación Física, Recreación y Deportes	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1000	52801	TECNOLOGIA EN GESTION DE MERCADEO	TECNOLOGO EN GESTION DE MERCADEO	Tecnólogo	4	89	Semestral	38	Acreditacion de Alta Calidad
1001	118020	Licenciatura en Lenguas Extranjeras con énfasis en Inglés	Licenciado/a en Lenguas Extranjeras con énfasis en Inglés	Pregrado Universitario	7	146	Semestral	38	Registro Calificado
1002	111430	INGENIERÍA INDUSTRIAL	INGENIERO (A) INDUSTRIAL	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1003	111235	INGENIERÍA SOFTWARE	INGENIERO DE SOFTWARE	Pregrado Universitario	7	140	Semestral	38	Registro Calificado
1004	111261	LICENCIATURA EN CIENCIAS SOCIALES	LICENCIADO EN CIENCIAS SOCIALES	Pregrado Universitario	7	140	Semestral	38	Registro Calificado
1005	111285	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EDUCACIÓN INFANTIL	Pregrado Universitario	7	140	Semestral	38	Registro Calificado
1006	111043	TRABAJO SOCIAL	TRABAJADOR(A) SOCIAL	Pregrado Universitario	9	151	Semestral	38	Registro Calificado
1007	111040	INGENIERÍA DE SISTEMAS	INGENIERO (A) DE SISTEMAS	Pregrado Universitario	7	140	Semestral	38	Registro Calificado
1008	104206	TECNOLOGIA EN DESARROLLO DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	6	102	Semestral	38	Acreditacion de Alta Calidad
1009	19207	TECNOLOGIA EN COMUNICACION GRAFICA	TECNOLOGO EN COMUNICACION GRAFICA	Tecnólogo	6	108	Semestral	38	Registro Calificado
1010	55083	TECNOLOGIA EN INFORMATICA	TECNOLOGO EN INFORMATICA	Tecnólogo	6	108	Semestral	38	Registro Calificado
1011	117896	Trabajo Social	Trabajador (a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1012	117999	Trabajo Social	Trabajador (a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1013	117487	Administración de Empresas	Administrador(a) de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1014	111541	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR (A) DE EMPRESAS	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1015	118176	Administración en Seguridad y Salud en el Trabajo	Administrador (a) en Seguridad y Salud en el Trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1016	111260	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	9	151	Semestral	38	Registro Calificado
1017	111288	ADMINISTRACIÓN DE TECNOLOGÍAS DE LA INFORMACIÓN	ADMINISTRADOR DE TECNOLOGÍAS DE LA INFORMACIÓN	Pregrado Universitario	7	137	Semestral	38	Registro Calificado
1018	111670	NEGOCIOS DIGITALES	PROFESIONAL EN NEGOCIOS DIGITALES	Pregrado Universitario	10	142	Semestral	38	Registro Calificado
1019	118025	Ciencias Bíblicas	Profesional en Ciencias Bíblicas	Pregrado Universitario	7	143	Semestral	38	Registro Calificado
1020	109551	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1021	116899	Administracion en seguridad y salud en el trabajo	Administrador en seguridad y salud en el trabajo	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1022	104929	TECNOLOGIA EN GESTIÓN DE SEGURIDAD EN REDES DE COMPUTADORES	TECNÓLOGO EN GESTIÓN DE SEGURIDAD EN REDES DE COMPUTADORES	Tecnólogo	6	106	Semestral	38	Registro Calificado
1023	106016	LICENCIATURA EN EDUCACIÓN FÍSICA, RECREACIÓN Y DEPORTES	LICENCIADO(A) EN EDUCACIÓN FÍSICA, RECREACIÓN Y DEPORTES	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1024	118027	Administración en Seguridad y Salud en el Trabajo	Administrador(a) en Seguridad y Salud en el Trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1025	117887	Administración en Seguridad y Salud en el Trabajo	Administrador en Seguridad y Salud en el Trabajo	Pregrado Universitario	6	144	Semestral	38	Registro Calificado
1026	116315	Mercadeo	Profesional en Mercadeo	Pregrado Universitario	8	131	Semestral	38	Registro Calificado
1027	109535	TECNOLOGÍA EN GESTIÓN DEL TALENTO HUMANO	TECNÓLOGO EN GESTIÓN DEL TALENTO HUMANO	Tecnólogo	4	100	Semestral	38	Registro Calificado
1028	117415	Licenciatura en Lenguas Extranjeras con Énfasis en Inglés	Licenciado en Lenguas Extranjeras con Énfasis en Inglés	Pregrado Universitario	9	148	Semestral	38	Registro Calificado
1029	117542	Contaduría Pública	Contador (a) Público (a)	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
1030	11278	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	9	151	Semestral	38	Registro Calificado
1031	108106	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	9	146	Semestral	38	Registro Calificado
1032	117959	Administración en Salud	Administrador(a) en Salud	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1033	117960	Administración de Negocios Internacionales	Administrador de Negocios Internacionales	Pregrado Universitario	10	140	Semestral	38	Registro Calificado
1034	111534	ADMINISTRACIÓN EN SEGURIDAD ALIMENTARIA Y NUTRICIONAL	ADMINISTRADOR (A) EN SEGURIDAD ALIMENTARIA Y NUTRICIONAL	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1035	118024	Administración en Seguridad y Salud en el Trabajo	Administrador(a) en Seguridad y Salud en el Trabajo	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1036	111650	ADMINISTRACIÓN PÚBLICA	ADMINISTRADOR PÚBLICO	Pregrado Universitario	10	140	Semestral	38	Registro Calificado
1037	111453	COMUNICACIÓN DIGITAL	COMUNICADOR DIGITAL	Pregrado Universitario	7	131	Semestral	38	Registro Calificado
1038	111290	INGENIERÍA DE SISTEMAS	INGENIERO (A) DE SISTEMAS	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
1039	116866	Administración en Seguridad y Salud en el Trabajo	Administrador(a) en Seguridad y Salud en el Trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1040	117075	Tecnología en Desarrollo de software	Tecnologo(a) en Desarrollo de software	Tecnólogo	6	96	Semestral	38	Registro Calificado
1041	111653	MARKETING	PROFESIONAL EN MARKETING	Pregrado Universitario	10	140	Semestral	38	Registro Calificado
1042	111429	CIENCIAS POLÍTICAS	PROFESIONAL EN CIENCIAS POLÍTICAS	Pregrado Universitario	7	131	Semestral	38	Registro Calificado
1043	111736	INGENIERÍA AGROECOLÓGICA	INGENIERO EN AGROECOLOGÍA	Pregrado Universitario	7	140	Semestral	38	Registro Calificado
1044	116762	Contaduría Pública	Contador Público	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
1045	17759	TECNOLOGIA EN ELECTRONICA	Tecnólogo (a) (e) en Electrónica	Tecnólogo	4	90	Semestral	38	Registro Calificado
1046	110771	PSICOLOGÍA	PSICÓLOGO (A)	Pregrado Universitario	7	148	Semestral	38	Registro Calificado
1047	116988	Contaduría pública	Contador(A) Público(A)	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
1048	109732	LICENCIATURA EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	LICENCIADO (A) EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
1049	109733	LICENCIATURA EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	LICENCIADO (A) EN LENGUAS EXTRANJERAS CON ÉNFASIS EN INGLÉS	Pregrado Universitario	10	160	Semestral	38	Registro Calificado
1050	109734	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO (A) EN EDUCACIÓN INFANTIL	Pregrado Universitario	9	155	Semestral	38	Registro Calificado
1051	105578	ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR DE EMPRESAS TURÍSTICAS Y HOTELERAS	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1052	108499	ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR DE EMPRESAS TURÍSTICAS Y HOTELERAS	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1053	117958	Trabajo Social	Trabajador(a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1054	116952	Licenciatura en Ciencias Sociales	Licenciado en Ciencias Sociales	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1055	15803	CIENCIAS BIBLICAS	PROFESIONAL EN CIENCIAS BÍBLICAS	Pregrado Universitario	8	144	Semestral	38	Acreditacion de Alta Calidad
1056	106053	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EDUCACIÓN INFANTIL	Pregrado Universitario	8	144	Semestral	38	Acreditacion de Alta Calidad
1057	108031	LICENCIATURA EN EDUCACION ARTISTICA	LICENCIADO(A) EN EDUCACION ARTISTICA	Pregrado Universitario	9	153	Semestral	38	Registro Calificado
1058	118022	Administración en Seguridad y Salud en el Trabajo	Administrador en Seguridad y Salud en el Trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1059	118004	Administración Financiera	Administrador Financiero	Pregrado Universitario	9	139	Semestral	38	Registro Calificado
1060	106427	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1061	106861	LICENCIATURA EN HUMANIDADES Y LENGUA CASTELLANA	LICENCIADO (A) HUMANIDADES Y LENGUA CASTELLANA	Pregrado Universitario	10	155	Semestral	38	Acreditacion de Alta Calidad
1062	2049	LICENCIATURA EN FILOSOFIA	LICENCIADO EN FILOSOFIA	Pregrado Universitario	9	160	Semestral	38	Acreditacion de Alta Calidad
1063	9363	ESTUDIOS EN FILOSOFIA	PROFESIONAL EN FILOSOFIA	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1064	116863	Trabajo Social	Trabajador(a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1065	116861	Trabajo Social	Trabajador(a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1066	109445	LICENCIATURA EN CIENCIAS NATURALES Y EDUCACION AMBIENTAL	LICENCIADA (O) EN CIENCIAS NATURALES Y EDUCACIÓN AMBIENTAL	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1067	111377	CONTADURÍA PÚBLICA	CONTADOR(A) PÚBLICO(A)	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1068	91334	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	150	Semestral	38	Registro Calificado
1069	91431	COMUNICACIÓN SOCIAL	COMUNICADOR SOCIAL	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1070	117480	Administración Financiera	Administrador Financiero	Pregrado Universitario	9	139	Semestral	38	Registro Calificado
1071	117065	Administración Financiera	Administrador Financiero	Pregrado Universitario	9	139	Semestral	38	Registro Calificado
1072	110689	TECNOLOGÍA EN LOGÍSTICA EMPRESARIAL	TECNÓLOGO EN LOGÍSTICA EMPRESARIAL	Tecnólogo	6	108	Semestral	38	Registro Calificado
1073	116795	Licenciatura en Educación Infantil	Licenciado (a) en Educación Infantil	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1074	117186	Administración de Empresas	Administrador de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1075	90921	ADMINISTRACIÓN FINANCIERA	ADMINISTRADOR FINANCIERO	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1076	91237	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	10	142	Semestral	38	Registro Calificado
1077	118159	Contaduría Pública	Contador(a) Público(a)	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
1078	116900	ADMINISTRACIÓN DE EMPRESAS	Administrador de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1079	116824	Contaduría Pública	Contador Público	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
1080	116832	Licenciatura en Educación Infantil	Licenciado(a) en Educación Infantil	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1081	116802	Licenciatura en educación Infantil	Licenciaciado (a) en educación infantil	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1082	116801	Licenciatura en Educación Infantil	Licenciado (a) en Educación Infantil	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1083	117233	Administración Financiera	Administrador Financiero	Pregrado Universitario	6	139	Semestral	38	Registro Calificado
1084	116635	Administración de Empresas	Administrador de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1085	117144	Licenciatura en Educación Infantil	Licenciado en Educación Infantil	Pregrado Universitario	10	144	Semestral	38	Registro Calificado
1086	106952	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO/A EN EDUCACIÓN INFANTIL	Pregrado Universitario	10	155	Semestral	38	Registro Calificado
1087	111286	LICENCIATURA EN LENGUAS EXTRANJERAS CON ENFASIS EN INGLES	LICENCIADO EN LENGUAS EXTRANJERAS CON ENFASIS EN INGLES	Pregrado Universitario	7	156	Semestral	38	Registro Calificado
1088	111612	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1089	116865	Administración de Empresas	Administrador(a) de Empresas	Pregrado Universitario	9	142	Semestral	38	Registro Calificado
1090	117855	LICENCIATURA EN EDUCACION FISICA, RECREACION Y DEPORTES	LICENCIADO (A) EN EDUCACION FISICA, RECREACION Y DEPORTES	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1091	116800	Licenciatura en Educación Infantil	Licenciado(a) en Educación Infantil	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1092	118118	Administración de Empresas	Administrador (a) de Empresas	Pregrado Universitario	6	142	Semestral	38	Registro Calificado
1093	117258	Trabajo Social	Trabajador(a) Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1094	107530	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR (A) DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
1095	107529	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR (A) DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
1096	110698	ADMINISTRACIÓN DE EMPRESAS	Administrador (a) (e) de Empresas	Pregrado Universitario	7	142	Semestral	38	Registro Calificado
1097	111096	LICENCIATURA EN CIENCIAS NATURALES Y EDUCACIÓN AMBIENTAL	LICENCIADO EN CIENCIAS NATURALES Y EDUCACIÓN AMBIENTAL	Pregrado Universitario	10	150	Semestral	38	Registro Calificado
1098	117051	Comunicación Social	Comunicador Social	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1099	105903	LICENCIATURA EN EDUCACIÒN BÀSICA CON ENFASIS EN HUMANIDADES Y LENGUA CASTELLANA	LICENCIADO(A) EN EDUCACIÒN BÀSICA CON ENFASIS EN HUMANIDADES Y LENGUA CASTELLANA	Pregrado Universitario	10	162	Semestral	38	Registro Calificado
1100	105561	TECNOLOGIA EN GESTIÓN EMPRESARIAL	TECNOLOGO EN GESTIÓN EMPRESARIAL	Tecnólogo	6	102	Semestral	38	Registro Calificado
1101	105965	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1102	90738	TÉCNICA PROFESIONAL EN PROCESOS DE ALMACENAMIENTO	TÉCNICO PROFESIONAL EN PROCESOS DE ALMACENAMIENTO	Técnico Profesional	4	51	Semestral	38	Registro Calificado
1103	9421	ESPECIALIZACION EN ETICA	ESPECIALISTA EN ETICA	Especialización	2	24	Semestral	38	Registro Calificado
1104	52253	COMUNICACION SOCIAL - PERIODISMO	COMUNICADOR SOCIAL - PERIODISTA	Pregrado Universitario	9	162	Semestral	38	Registro Calificado
1105	54425	TECNOLOGÍA EN GESTIÓN DE PLANTACIONES DE PALMA DE ACEITE	TECNOLOGO EN GESTIÓN DE PLANTACIONES DE PALMA DE ACEITE	Tecnólogo	6	90	Semestral	38	Registro Calificado
1106	52222	LICENCIATURA EN EDUCACIóN BáSICA CON ENFASIS EN EDUCACION ARTISTICA	LICENCIADO EN EN EDUCACIóN BASICA CON ENFASIS EN EDUCACION ARTISTICA	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1107	52556	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	147	Semestral	38	Registro Calificado
1108	103005	MAESTRÍA EN COMUNICACIÓN, DESARROLLO Y CAMBIO SOCIAL	MAGÍSTER EN COMUNICACIÓN, DESARROLLO Y CAMBIO SOCIAL	Maestría	4	52	Semestral	38	Registro Calificado
1109	102760	ESPECIALIZACIÓN EN GESTIÓN ASOCIADA: ESCENARIOS PARTICIPATIVOS PARA EL DESARROLLO LOCAL	ESPECIALISTA EN GESTIÓN ASOCIADA	Especialización	2	24	Semestral	38	Registro Calificado
1110	119421	Trabajo Social	Trabajador (a) (e) social	Pregrado Universitario	6	144	Semestral	38	Registro Calificado
1111	119409	Especialización en Gerencia y Auditoría de la Calidad en Salud	Especialista en Gerencia y Auditoría de la Calidad en Salud	Especialización	2	24	Semestral	38	Registro Calificado
1112	105082	TECNOLOGIA EN LOGISTICA EMPRESARIAL	TECNOLOGO EN LOGISTICA EMPRESARIAL	Tecnólogo	6	96	Semestral	38	Registro Calificado
1113	119410	Maestría en Evaluación y Aseguramiento de la Calidad de la Educación	Magíster en Evaluación y Aseguramiento de la Calidad de la Educación	Maestría	3	42	Semestral	38	Registro Calificado
1114	119412	Maestría en Gerencia Estratégica de Operaciones	Magíster en Gerencia Estratégica de Operaciones	Maestría	3	42	Semestral	38	Registro Calificado
1115	119510	Maestría en Inteligencia Artificial	Magíster en Inteligencia Artificial	Maestría	3	42	Semestral	38	Registro Calificado
1116	119502	Maestría en Ingeniería Industrial	Magíster en Ingeniería Industrial	Maestría	3	42	Semestral	38	Registro Calificado
1117	119067	MAESTRÍA EN AMBIENTES DE APRENDIZAJE	MAGISTER EN AMBIENTES DE APRENDIZAJE	Maestría	4	44	Semestral	38	Registro Calificado
1118	105577	TECNOLOGÍA EN GESTIÓN DEL ECOTURISMO	TECNOLOGO EN GESTIÓN DEL ECOTURISMO	Tecnólogo	6	108	Semestral	38	Registro Calificado
1119	118854	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
1120	119690	Licenciatura en lenguas extranjeras	Licenciando (a) (e) en lenguas extranjeras con énfasis en inglés o Francés	Pregrado Universitario	8	145	Semestral	38	Registro Calificado
1121	119713	PSICOLOGÍA	PSICÓLOGO	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1122	118699	CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	143	Semestral	38	Registro Calificado
1123	119390	Ingeniería de Sistemas	Ingeniero (a) de Sistemas	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1124	118313	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
1125	118753	TRABAJO SOCIAL	TRABAJADOR SOCIAL	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1126	108066	ESPECIALIZACIÓN TECNOLÓGICA EN ILUSTRACIÓN	ESPECIALISTA TECNOLÓGICO EN ILUSTRACIÓN	Especialización	2	24	Semestral	38	Registro Calificado
1127	108105	ESPECIALIZACIÓN EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	24	Semestral	38	Registro Calificado
1128	108103	ESPECIALIZACIÓN TECNOLÓGICA EN HERRAMIENTAS PARA LA GESTIÓN DE DATOS - BIG DATA	ESPECIALISTA TECNOLÓGICO EN HERRAMIENTAS PARA LA GESTIÓN DE DATOS - BIG DATA	Especialización	2	24	Semestral	38	Registro Calificado
1129	109735	ESPECIALIZACIÓN EN ACONDICIONAMIENTO FÍSICO Y COACHING	ESPECIALISTA EN ACONDICIONAMIENTO FÍSICO Y COACHING	Especialización	2	22	Semestral	38	Registro Calificado
1130	119665	Técnico Profesional en Producción de Audio y Sonido en Vivo	Técnico Profesional en Producción de Audio y Sonido en Vivo	Técnico Profesional	4	64	Semestral	38	Registro Calificado
1131	118407	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	24	Semestral	38	Registro Calificado
1132	119493	Especialización en Alta Gerencia	Especialista en Alta Gerencia	Especialización	2	24	Semestral	38	Registro Calificado
1133	119348	Maestría en Neuroeducación	Magíster en Neuroeducación	Maestría	3	42	Semestral	38	Registro Calificado
1134	119464	Contaduría Pública	Contador/a/e Público/a	Pregrado Universitario	9	140	Semestral	38	Registro Calificado
1135	118706	Maestría en Espiritualidad	Magíster en Espiritualidad	Maestría	4	42	Semestral	38	Registro Calificado
1136	119238	Derecho	Abogado (a) (e)	Pregrado Universitario	9	160	Semestral	38	Registro Calificado
1137	119235	ESPECIALIZACIÓN EN GERENCIA DE MARCA	ESPECIALISTA EN GERENCIA DE MARCA	Especialización	2	24	Semestral	38	Registro Calificado
1138	118685	Técnico profesional en creación de contenidos digitales	Técnico(a) profesional en creación de contenidos digitales	Técnico Profesional	4	65	Semestral	38	Registro Calificado
1139	119234	ESPECIALIZACIÓN EN GERENCIA DE MARCA	ESPECIALISTA EN GERENCIA DE MARCA	Especialización	2	24	Semestral	38	Registro Calificado
1140	90739	TECNOLOGÍA EN GESTIÓN DE PROCESOS LOGÍSTICOS	TECNOLOGO EN GESTIÓN DE PROCESOS LOGÍSTICOS	Tecnólogo	6	100	Semestral	38	Registro Calificado
1141	119239	Derecho	Abogado (a) (e)	Pregrado Universitario	9	160	Semestral	38	Registro Calificado
1142	119435	Licenciatura en Diseño Tecnológico	Licenciado/a/e en Diseño Tecnológico	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1143	119433	Maestría en Didáctica de las Ciencias Sociales	Magíster en Didáctica de las Ciencias Sociales	Maestría	3	42	Semestral	38	Registro Calificado
1144	119434	Licenciatura en Ciencias Naturales y Educación Ambiental	Licenciado/a/e en Ciencias Naturales y Educación Ambiental	Pregrado Universitario	7	144	Semestral	38	Registro Calificado
1145	119490	Ingeniería Mecatrónica	Ingeniero/a/e Mecatrónico/a	Pregrado Universitario	6	142	Semestral	38	Registro Calificado
1146	119611	Tecnología en Desarrollo de Software	Tecnólogo (a) en Desarrollo de Software	Tecnólogo	6	102	Semestral	38	Registro Calificado
1147	119445	Licenciatura en Educación Física, Recreación y Deportes	Licenciado (a) (e) en Educación Física, Recreación y Deportes	Pregrado Universitario	8	144	Semestral	38	Registro Calificado
1148	118691	profesional en Gastronomía	Profesional en Gastronomía	Pregrado Universitario	8	136	Semestral	38	Registro Calificado
1149	118695	Maestría en Psicología	Magister en Psicología	Maestría	3	40	Semestral	38	Registro Calificado
1150	118692	profesional en Gastronomía	Profesional en Gastronomía	Pregrado Universitario	8	136	Semestral	38	Registro Calificado
1151	118615	LICENCIATURA EN EDUCACIÓN INFANTIL	LICENCIADO EN EDUCACIÓN INFANTIL	Pregrado Universitario	6	144	Semestral	38	Registro Calificado
1152	118288	Administración en seguridad y salud en el trabajo	Administrador (a) en seguridadd y salud en el trabajo	Pregrado Universitario	9	144	Semestral	38	Registro Calificado
1157	117723	Especialización en Desarrollo Organizacional y Gestión del Talento Humano	Especialista en Desarrollo Organizacional y Gestión del Talento Humano	Especialización	2	28	Semestral	39	Registro Calificado
1158	117813	Especialización en Marketing Digital	Especialista en Marketing Digital	Especialización	2	28	Semestral	39	Registro Calificado
1159	117698	Especialización En Gerencia Para La Transición Energética	Especialista en Gerencia Para La Transición Energética	Especialización	2	28	Semestral	39	Registro Calificado
1160	117814	Especialización en Gerencia Financiera	Especialista en Gerencia Financiera	Especialización	2	28	Semestral	39	Registro Calificado
1161	117822	Especialización en Gerencia de Proyectos	Especialista en Gerencia de Proyectos	Especialización	2	28	Semestral	39	Registro Calificado
1162	117815	Especialización en Inteligencia de Negocios	Especialista en Inteligencia de Negocios	Especialización	2	28	Semestral	39	Registro Calificado
1163	111708	DIRECCION Y PRODUCCION DE MEDIOS AUDIOVISUALES	DIRECTOR/A Y PRODUCTOR/A DE MEDIOS AUDIOVISUALES	Pregrado Universitario	9	153	Semestral	39	Registro Calificado
1164	117697	ESPECIALIZACIÓN EN ALTA GERENCIA	ESPECIALISTA EN ALTA GERENCIA	Especialización	2	28	Semestral	39	Registro Calificado
1165	117624	Especialización en Gestión de Negocios Digitales	Especialista en Gestión de Negocios Digitales	Especialización	2	28	Semestral	39	Registro Calificado
1166	117591	Especialización en Gerencia Educativa	Especialista en Gerencia Educativa	Especialización	2	28	Semestral	39	Registro Calificado
1167	104862	DIRECCION Y PRODUCCION DE MEDIOS AUDIOVISUALES	DIRECTOR/A Y PRODUCTOR/A DE MEDIOS AUDIOVISUALES	Pregrado Universitario	9	153	Semestral	39	Registro Calificado
1168	103804	NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	172	Semestral	39	Registro Calificado
1169	110109	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	148	Semestral	39	Registro Calificado
1170	52614	INGENIERIA ELECTRONICA	INGENIERO ELECTRONICO	Pregrado Universitario	10	164	Semestral	39	Registro Calificado
1171	101738	DISEÑO DE MODAS	DISEÑADOR DE MODAS	Pregrado Universitario	9	150	Semestral	39	Registro Calificado
1172	54657	DIRECCION Y PRODUCCION DE MEDIOS AUDIOVISUALES	DIRECTOR Y PRODUCTOR DE MEDIOS AUDIOVISUALES	Pregrado Universitario	10	169	Semestral	39	Registro Calificado
1173	108543	TECNOLOGÍA EN GESTIÓN CONTABLE Y FINANCIERA	TECNOLOGO EN GESTIÓN CONTABLE Y FINANCIERA	Tecnólogo	6	99	Semestral	39	Registro Calificado
1174	105505	TECNOLOGÍA EN GESTIÓN DE PROCESOS AGROINDUSTRIALES	TECNOLOGO/A EN GESTIÓN DE PROCESOS AGROINDUSTRIALES	Tecnólogo	6	105	Semestral	39	Registro Calificado
1175	108548	TECNOLOGÍA EN GESTIÓN COMUNICATIVA Y DE MERCADOS	TECNÓLOGO EN GESTIÓN COMUNICATIVA Y DE MERCADOS	Tecnólogo	6	103	Semestral	39	Registro Calificado
1176	105087	TECNOLOGÍA EN GESTIÓN PUBLICA TERRITORIAL	TECNOLOGO EN GESTIÓN PUBLICA TERRITORIAL	Tecnólogo	6	102	Semestral	39	Registro Calificado
1177	108272	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	87	Semestral	39	Registro Calificado
1178	111711	TECNOLOGÍA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNOLOGO/A EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	Tecnólogo	6	102	Semestral	39	Registro Calificado
1179	53078	ADMINISTRACIÓN TURÍSTICA Y HOTELERA	ADMINISTRADOR TURÍSTICO Y HOTELERO	Pregrado Universitario	9	169	Semestral	39	Registro Calificado
1180	52616	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	155	Semestral	39	Registro Calificado
1181	90688	INGENIERIA DE SISTEMAS	INGENIERO/A DE SISTEMAS	Pregrado Universitario	10	156	Semestral	39	Registro Calificado
1182	90596	DISEÑO GRÁFICO	PROFESIONAL EN DISEÑO GRÁFICO	Pregrado Universitario	9	178	Semestral	39	Registro Calificado
1183	108549	PROFESIONAL EN PUBLICIDAD Y MERCADEO	PROFESIONAL EN PUBLICIDAD Y MERCADEO	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1184	105506	ADMINISTRACION EMPRESAS AGROINDUSTRIALES	ADMINISTRADOR/A DE EMPRESAS AGROINDUSTRIALES	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1185	105085	ADMINISTRACION PUBLICA	ADMNISTRADOR PUBLICO	Pregrado Universitario	9	152	Semestral	39	Registro Calificado
1186	108556	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1187	108486	CONTADURÍA PÚBLICA	CONTADOR PÚBLICO	Pregrado Universitario	9	148	Semestral	39	Registro Calificado
1188	111706	TECNOLOGÍA EN GESTIÓN DE CONTENIDOS TELEVISIVOS Y NUEVOS MEDIOS	TECNÓLOGO/A EN GESTIÓN DE CONTENIDOS TELEVISIVOS Y NUEVOS MEDIOS	Tecnólogo	6	102	Semestral	39	Registro Calificado
1189	110909	TECNOLOGÍA EN DESARROLLO DE SOFTWARE	TECNÓLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	7	111	Semestral	39	Registro Calificado
1190	108557	TECNOLOGÍA EN GESTIÓN DE PROCESOS PRODUCTIVOS Y ADMINISTRATIVOS	TECNÓLOGO EN GESTIÓN DE PROCESOS PRODUCTIVOS Y ADMINISTRATIVOS	Tecnólogo	6	104	Semestral	39	Registro Calificado
1191	53576	PROFESIONAL EN NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	172	Semestral	39	Registro Calificado
1192	53503	PROFESIONAL EN NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	172	Semestral	39	Registro Calificado
1193	105699	COMUNICACIÓN SOCIAL	COMUNICADOR (A) SOCIAL	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1194	111732	DISEÑO GRÁFICO	PROFESIONAL EN DISEÑO GRÁFICO	Pregrado Universitario	9	151	Semestral	39	Registro Calificado
1195	105748	DISEÑO DE MODAS	DISEÑADOR DE MODAS	Pregrado Universitario	9	179	Semestral	39	Registro Calificado
1196	106253	PROFESIONAL EN DISEÑO DE MODAS	PROFESIONAL EN DISEÑO DE MODAS	Pregrado Universitario	9	179	Semestral	39	Registro Calificado
1197	53501	PROFESIONAL EN NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	172	Semestral	39	Registro Calificado
1198	110996	COMUNICACIÓN SOCIAL	PROFESIONAL EN COMUNICACIÓN SOCIAL	Pregrado Universitario	9	152	Semestral	39	Registro Calificado
1199	108542	INGENIERÍA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	155	Semestral	39	Registro Calificado
1200	52790	PROFESIONAL EN CONTADURIA PUBLICA	CONTADOR PUBLICO	Pregrado Universitario	9	177	Semestral	39	Registro Calificado
1201	105784	ESPECIALIZACIÓN EN GERENCIA EN LA INDUSTRIA DE LA MODA	ESPECIALISTA EN GERENCIA EN LA INDUSTRIA DE LA MODA	Especialización	2	26	Semestral	39	Registro Calificado
1202	105526	TECNOLOGIA EN PRODUCCION DE MEDIOS AUDIOVISUALES	TECNOLOGO EN PRODUCCION DE MEDIOS AUDIOVISUALES	Tecnólogo	7	115	Semestral	39	Registro Calificado
1203	54639	INGENIERIA DE SISTEMAS	INGENIERO DE SISTEMAS	Pregrado Universitario	10	169	Semestral	39	Registro Calificado
1204	105529	DISEÑO GRAFICO	DISEÑADOR GRAFICO	Pregrado Universitario	9	178	Semestral	39	Registro Calificado
1205	105790	COMUNICACIÓN SOCIAL	COMUNICADOR (A) SOCIAL	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1206	54076	PROFESIONAL EN DISEÑO GRAFICO	PROFESIONAL EN DISEÑO GRAFICO	Pregrado Universitario	9	178	Semestral	39	Registro Calificado
1207	91138	COMUNICACION SOCIAL	COMUNICADOR SOCIAL	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1208	111733	DISEÑO GRÁFICO	PROFESIONAL EN DISEÑO GRÁFICO	Pregrado Universitario	9	151	Semestral	39	Registro Calificado
1209	111707	TECNOLOGÍA EN GESTIÓN DE CONTENIDOS TELEVISIVOS Y NUEVOS MEDIOS	TECNÓLOGO/A EN GESTIÓN DE CONTENIDOS TELEVISIVOS Y NUEVOS MEDIOS	Tecnólogo	6	102	Semestral	39	Registro Calificado
1210	91089	COMUNICACION SOCIAL	COMUNICADOR SOCIAL	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1211	91090	DISEÑO DE MODAS	DISEÑADOR/A DE MODAS	Pregrado Universitario	9	150	Semestral	39	Registro Calificado
1212	105824	PROFESIONAL EN COMUNICACIÓN SOCIAL	PROFESIONAL EN COMUNICACIÓN SOCIAL	Pregrado Universitario	9	157	Semestral	39	Registro Calificado
1213	111207	DISEÑO DE MODAS	DISEÑADOR DE MODAS	Pregrado Universitario	9	150	Semestral	39	Registro Calificado
1214	111075	COMUNICACIÓN SOCIAL	PROFESIONAL EN COMUNICACIÓN SOCIAL	Pregrado Universitario	9	152	Semestral	39	Registro Calificado
1215	105033	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	Tecnólogo	6	97	Semestral	39	Registro Calificado
1216	111436	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	Tecnólogo	5	88	Semestral	39	Registro Calificado
1217	52766	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	6	87	Semestral	39	Registro Calificado
1218	53134	TECNOLOGIA EN GESTIÓN ADMINISTRATIVA	TECNOLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1219	53103	TECNOLOGIA EN GESTION ADMINISTRATIVA	TECNOLOGO EN GESTION ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1220	102912	TECNICA PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	TECNICO (A) PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	Técnico Profesional	4	61	Semestral	39	Registro Calificado
1221	104742	TECNICA PROFESIONAL EN PROCESOS GRÁFICOS	TECNICO PROFESIONAL EN PROCESOS GRÁFICOS	Técnico Profesional	4	79	Semestral	39	Registro Calificado
1222	105825	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMÁTIVOS	TÉCNICO (A) PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMÁTIVOS	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1223	105746	TÉCNICA PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	TÉCNICO PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	80	Semestral	39	Registro Calificado
1224	106260	TÉCNICA PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	TÉCNICO PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1225	53165	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1226	105026	ADMINISTRACION DE LA SEGURIDAD SOCIAL	ADMINISTRADOR DE LA SEGURIDAD SOCIAL	Pregrado Universitario	9	166	Semestral	39	Registro Calificado
1227	105083	ADMINISTRACION DE LA SEGURIDAD SOCIAL	ADMINISTRADOR DE LA SEGURIDAD SOCIAL	Pregrado Universitario	9	166	Semestral	39	Registro Calificado
1228	54356	ADMINISTRACION DE SERVICIOS DE SALUD	ADMINISTRADOR DE SERVICOS DE SALUD	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1229	53615	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1230	53481	TECNOLOGIA EN GESTIÓN ADMINISTRATIVA	TECNOLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1231	52619	TECNOLOGIA EN GESTIÓN ADMINISTRATIVA DE EMPRESAS DE SALUD	TECNOLOGO EN GESTIÓN ADMINISTRATIVA DE EMPRESAS DE SALUD	Tecnólogo	5	86	Semestral	39	Registro Calificado
1232	53166	TECNOLOGIA EN GESTIÓN ADMINISTRATIVA	TECNOLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1233	105145	TECNOLOGIA EN GESTION ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	TECNOLOGO EN GESTION ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	Tecnólogo	5	97	Semestral	39	Registro Calificado
1234	108546	TECNOLOGÍA EN GESTIÓN DEPORTIVA	TECNÓLOGO EN GESTIÓN DEPORTIVA	Tecnólogo	6	101	Semestral	39	Registro Calificado
1235	109601	ESPECIALIZACIÓN EN ANALÍTICA DE DATOS	ESPECIALISTA EN ANALÍTICA DE DATOS	Especialización	2	28	Semestral	39	Registro Calificado
1236	108460	ESPECIALIZACIÓN EN GERENCIA DE LA MARCA	ESPECIALISTA EN GERENCIA DE LA MARCA	Especialización	2	26	Semestral	39	Registro Calificado
1237	111621	ESPECIALIZACIÓN EN GESTIÓN DE TECNOLOGÍAS DE INFORMACIÓN	ESPECIALISTA EN GESTIÓN DE TECNOLOGÍAS DE INFORMACIÓN	Especialización	2	28	Semestral	39	Registro Calificado
1238	105764	TECNICA PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	TECNICO PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1239	104328	TECNICA PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	TECNICO PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1240	105664	TECNICA PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	TECNICO PROFESIONAL EN ELABORACIÓN DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1241	105697	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TÉCNICO (A) PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1242	110948	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TÉCNICO PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1243	53133	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1244	110709	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1245	53144	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1246	52605	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1247	53104	ADMINISTRACION DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1248	109630	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	87	Semestral	39	Registro Calificado
1249	110599	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	87	Semestral	39	Registro Calificado
1250	106040	ESPECIALIZACIÓN EN PAZ Y DESARROLLO TERRITORIAL	ESPECIALISTA EN PAZ Y DESARROLLO TERRITORIAL	Especialización	2	28	Semestral	39	Registro Calificado
1251	107382	TECNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TECNICO PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1252	108540	TÉCNICA PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	TÉCNICO PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	Técnico Profesional	4	64	Semestral	39	Registro Calificado
1253	111063	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TÉCNICO PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1254	3726	TECNICA PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	TECNICO PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1255	101654	TECNICA PROFESIONAL EN DISEÑO DE VESTUARIO Y PATRONAJE	TECNICO PROFESIONAL EN DISEÑO DE VESTUARIO Y PATRONAJE	Técnico Profesional	4	82	Semestral	39	Registro Calificado
1256	111478	ADMINISTRACIÓN DE LA SEGURIDAD SOCIAL	ADMINISTRADOR DE LA SEGURIDAD SOCIAL	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1257	108547	ADMINISTRACIÓN DEPORTIVA	ADMINISTRADOR DEPORTIVO	Pregrado Universitario	9	151	Semestral	39	Registro Calificado
1258	109631	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR DE EMPRESAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1259	90774	TECNICA PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	TECNICO PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1260	102262	TECNICA PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	TECNICO PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	Técnico Profesional	5	64	Semestral	39	Registro Calificado
1261	91402	TECNICA PROFESIONAL EN DISEÑO DIGITAL	TECNICO PROFESIONAL EN DISEÑO DIGITAL	Técnico Profesional	4	75	Semestral	39	Registro Calificado
1262	105527	TECNICA PROFESIONAL EN PROCESOS GRÁFICOS	TECNICO PROFESIONAL EN PROCESOS GRÁFICOS	Técnico Profesional	4	79	Semestral	39	Registro Calificado
1263	111704	TECNICA PROFESIONAL EN OPERACIÓN DE PROCESOS PARA LA PRODUCCIÓN DE CONTENIDOS AUDIOVISUALES	TECNICO/A PROFESIONAL EN OPERACIÓN DE PROCESOS PARA LA PRODUCCIÓN DE CONTENIDOS AUDIOVISUALES	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1264	110990	ESPECIALIZACIÓN EN TRANSFORMACIÓN DIGITAL	ESPECIALISTA EN TRANSFORMACIÓN DIGITAL	Especialización	2	28	Semestral	39	Registro Calificado
1265	111712	TECNICA PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS TERRITORIALES	TECNICO/A PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS TERRITORIALES	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1266	108555	TÉCNICA PROFESIONAL EN PROCESOS CONTABLES	TÉCNICO PROFESIONAL EN PROCESOS CONTABLES	Técnico Profesional	4	65	Semestral	39	Registro Calificado
1267	108560	TÉCNICA PROFESIONAL EN PROCESOS COMUNICATIVOS Y COMERCIALES	TÉCNICO PROFESIONAL EN PROCESOS COMUNICATIVOS Y COMERCIALES	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1268	105504	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE MATERIAS PRIMAS AGROINDUSTRIALES	TÉCNICO PROFESIONAL EN PRODUCCIÓN DE MATERIAS PRIMAS AGROINDUSTRIALES	Técnico Profesional	3	54	Semestral	39	Registro Calificado
1269	108263	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	53	Semestral	39	Registro Calificado
1270	101723	TECNOLOGIA EN PRODUCCION INDUSTRIAL DE VESTUARIO	TECNOLOGO EN PRODUCCION INDUSTRIAL DE VESTUARIO	Tecnólogo	6	100	Semestral	39	Registro Calificado
1271	53407	TECNOLOGIA EN GESTION DE MERCADEO INTERNACIONAL	TECNÓLOGO EN GESTION DE MERCADEO INTERNACIONAL	Tecnólogo	5	94	Semestral	39	Registro Calificado
1272	53079	TECNOLOGÍA EN GESTIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	TECNOLÓGO EN GESTIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	Tecnólogo	5	101	Semestral	39	Registro Calificado
1273	105500	PROFESIONAL EN ADMINISTRACION DE EMPRESAS	PROFESIONAL EN ADMINISTRACION DE EMPRESAS	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1274	105503	ADMINISTRACIÓN DE EMPRESAS AGROINDUSTRIALES	ADMINISTRADOR DE EMPRESAS AGROINDUSTRIALES	Pregrado Universitario	9	171	Semestral	39	Registro Calificado
1275	53575	TECNOLOGIA EN GESTIÓN DE MERCADEO INTERNACIONAL	TECNOLOGO EN GESTIÓN DE MERCADEO INTERNACIONAL	Tecnólogo	5	94	Semestral	39	Registro Calificado
1276	104745	TECNOLOGIA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNOLOGO EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	Tecnólogo	6	118	Semestral	39	Registro Calificado
1277	52789	TECNOLOGIA EN GESTION CONTABLE Y FINANCIERA	TECNOLOGO EN GESTION CONTABLE Y FINANCIERA	Tecnólogo	5	100	Semestral	39	Registro Calificado
1278	53500	TECNOLOGIA EN GESTION DE MERCADEO INTERNACIONAL	TECNOLOGO EN GESTION DE MERCADEO INTERNACIONAL	Tecnólogo	5	94	Semestral	39	Registro Calificado
1279	101655	TECNOLOGIA EN PRODUCCION INDUSTRIAL DE VESTUARIO	TECNOLOGO EN PRODUCCION INDUSTRIAL DE VESTUARIO	Tecnólogo	6	100	Semestral	39	Registro Calificado
1280	111729	TECNICÁ PROFESIONAL EN PROCESOS GRÁFICOS	TECNICO PROFESIONAL EN PROCESOS GRÁFICOS	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1281	108558	TÉCNICA PROFESIONAL EN REGISTRO DE PROCESOS PRODUCTIVOS	TÉCNICO PROFESIONAL EN REGISTRO DE PROCESOS PRODUCTIVOS	Técnico Profesional	3	52	Semestral	39	Registro Calificado
1282	104397	TÉCNICA PROFESIONAL EN SOPORTE DE SISTEMAS EN INFORMÁTICA	TÉCNICO PROFESIONAL EN SOPORTE DE SISTEMAS EN INFORMÁTICA	Técnico Profesional	4	64	Semestral	39	Registro Calificado
1283	105665	TECNOLOGIA EN PRODUCCION INDUSTRIAL DE VESTUARIO	TECNOLOGO EN PRODUCCION INDUSTRIAL DE VESTUARIO	Tecnólogo	6	100	Semestral	39	Registro Calificado
1284	105791	TECNOLOGÍA EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	TECNOLOGO (A) EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	6	107	Semestral	39	Registro Calificado
1285	105528	TECNOLOGÍA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNOLOGO EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	Tecnólogo	6	118	Semestral	39	Registro Calificado
1286	106066	TECNOLOGÍA EN DESARROLLO DE SOFTWARE	TECNÓLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	7	123	Semestral	39	Registro Calificado
1287	106142	TECNOLOGIA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNÓLOGO (A) EN EXPRESIÓN GRÁFICA Y PUBLICACIONES.	Tecnólogo	6	104	Semestral	39	Registro Calificado
1288	106259	TECNOLOGIA EN PRODUCCION INDUSTRIAL DE VESTUARIO	TECNOLOGO EN PRODUCCION INDUSTRIAL DE VESTUARIO	Tecnólogo	6	102	Semestral	39	Registro Calificado
1289	104817	TECNOLOGIA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNOLOGO EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	Tecnólogo	6	118	Semestral	39	Registro Calificado
1290	105747	TECNOLOGÍA EN PRODUCCION INDUSTRIAL DE VESTUARIO	TECNOLOGO EN PRODUCCION INDUSTRIAL DE VESTUARIO	Tecnólogo	6	121	Semestral	39	Registro Calificado
1291	105698	TECNOLOGÍA EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	TECNOLOGO (A) EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	6	107	Semestral	39	Registro Calificado
1292	106677	TECNOLOGÍA EN DESARROLLO DE SOFTWARE	TECNÓLOGO/A EN DESARROLLO DE SOFTWARE	Tecnólogo	7	106	Semestral	39	Registro Calificado
1293	111705	TECNICA PROFESIONAL EN OPERACIÓN DE PROCESOS PARA LA PRODUCCIÓN DE CONTENIDOS AUDIOVISUALES	TECNICO/A PROFESIONAL EN OPERACIÓN DE PROCESOS PARA LA PRODUCCIÓN DE CONTENIDOS AUDIOVISUALES	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1294	54658	TECNICA PROFESIONAL EN MEDIOS AUDIOVISUALES	TECNICO PROFESIONAL EN MEDIOS AUDIOVISUALES	Técnico Profesional	4	75	Semestral	39	Registro Calificado
1295	104744	TÉCNICA PROFESIONAL EN PROCESOS GRÁFICOS	TÉCNICO PROFESIONAL EN PROCESOS GRÁFICOS	Técnico Profesional	4	79	Semestral	39	Registro Calificado
1296	107986	TECNOLOGÍA EN AUTOMATIZACIÓN INDUSTRIAL	TECNÓLOGO EN AUTOMATIZACIÓN INDUSTRIAL	Tecnólogo	7	117	Semestral	39	Registro Calificado
1297	107448	TECNOLOGIA EN DESARROLLO DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	7	111	Semestral	39	Registro Calificado
1298	105826	TECNOLOGÍA EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	TECNOLOGO (A) EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	6	107	Semestral	39	Registro Calificado
1299	111710	TECNOLOGÍA EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	TECNOLOGO/A EN EXPRESIÓN GRÁFICA Y PUBLICACIONES	Tecnólogo	6	102	Semestral	39	Registro Calificado
1300	110947	TECNOLOGIA EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	TECNÓLOGO EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	6	102	Semestral	39	Registro Calificado
1301	6121	TECNICA PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	TECNICO PROFESIONAL EN LOGISTICA DE COMERCIO EXTERIOR	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1302	6112	TÉCNICA PROFESIONAL EN LOGÍSTICA DE COMERCIO EXTERIOR	TÉCNICO PROFESIONAL EN LOGÍSTICA DE COMERCIO EXTERIOR	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1303	2384	TECNICA PROFESIONAL EN MANTENIMIENTO ELECTRONICO	TECNICO PROFESIONAL EN MANTENIMIENTO ELECTRONICO	Técnico Profesional	4	66	Semestral	39	Registro Calificado
1304	2383	TECNICA PROFESIONAL EN SISTEMAS	TECNICO PROFESIONAL EN SISTEMAS	Técnico Profesional	5	73	Semestral	39	Registro Calificado
1305	6122	TECNICA PROFESIONAL EN DISEÑO GRAFICO	TECNICO PROFESIONAL EN DISEÑO GRAFICO	Técnico Profesional	5	85	Semestral	39	Registro Calificado
1306	108541	TECNOLOGÍA EN DESARROLLO DE SOFTWARE	TECNOLOGO EN DESARROLLO DE SOFTWARE	Tecnólogo	7	111	Semestral	39	Registro Calificado
1307	110350	TECNOLOGÍA EN GESTIÓN CONTABLE Y FINANCIERA	TECNÓLOGO EN GESTIÓN CONTABLE Y FINANCIERA	Tecnólogo	6	99	Semestral	39	Registro Calificado
1308	107495	TECNOLOGIA EN GESTION COMUNICATIVA PARA LAS ORGANIZACIONES	TECNOLOGO EN GESTION COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	7	107	Semestral	39	Registro Calificado
1309	53487	TECNOLOGIA EN GESTION DE MERCADEO INTERNACIONAL	TECNÓLOGO EN GESTION DE MERCADEO INTERNACIONAL	Tecnólogo	5	94	Semestral	39	Registro Calificado
1310	109140	TECNOLOGIA EN GESTION COMUNICATIVA PARA LAS ORGANIZACIONES	TECNOLOGO EN GESTION COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	7	107	Semestral	39	Registro Calificado
1311	53914	TECNOLOGIA EN GESTIÓN ADMINISTRATIVA	TECNOLOGO EN GESTIÓN ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1312	54631	TECNICA PROFESIONAL EN PROCESOS INFORMATICOS	TECNICO PROFESIONAL EN PROCESOS INFORMATICOS	Técnico Profesional	6	80	Semestral	39	No definido
1313	53998	TECNICA PROFESIONAL EN DISEÑO DIGITAL	TECNICO PROFESIONAL EN DISEÑO DIGITAL	Técnico Profesional	4	84	Semestral	39	Registro Calificado
1314	102212	TECNICA PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	TECNICO PROFESIONAL EN SOPORTE DE SISTEMAS E INFORMÁTICA	Técnico Profesional	4	72	Semestral	39	Registro Calificado
1315	105792	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TÉCNICO PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1316	109139	TÉCNICA PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	TECNICO PROFESIONAL EN PRODUCCIÓN DE CONTENIDOS INFORMATIVOS	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1317	111062	TECNOLOGIA EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	TECNÓLOGO EN GESTIÓN COMUNICATIVA PARA LAS ORGANIZACIONES	Tecnólogo	6	102	Semestral	39	Registro Calificado
1318	9870	TECNICA PROFESIONAL EN CONTABILIDAD	TECNICO PROFESIONAL EN CONTABILIDAD	Técnico Profesional	5	62	Semestral	39	Registro Calificado
1319	2382	TECNICA PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	TECNICO PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	Técnico Profesional	3	51	Semestral	39	Registro Calificado
1320	6123	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	55	Semestral	39	Registro Calificado
1321	6140	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	56	Semestral	39	Registro Calificado
1322	6124	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	55	Semestral	39	Registro Calificado
1323	6101	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	55	Semestral	39	Registro Calificado
1324	103195	TECNICA PROFESIONAL EN PROCESOS CONTABLES	TECNICO PROFESIONAL EN PROCESOS CONTABLES	Técnico Profesional	3	58	Semestral	39	Registro Calificado
1325	105298	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1326	110702	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	53	Semestral	39	Registro Calificado
1327	6142	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	55	Semestral	39	Registro Calificado
1328	111434	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	Técnico Profesional	3	52	Semestral	39	Registro Calificado
1329	108545	TÉCNICA PROFESIONAL EN PROCESOS DE ADMINISTRACIÓN DEPORTIVA	TÉCNICA PROFESIONAL EN PROCESOS DE ADMINISTRACIÓN DEPORTIVA	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1330	109629	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	53	Semestral	39	Registro Calificado
1331	2381	TECNICA PROFESIONAL EN SERVICIOS TURÍSTICOS Y HOTELEROS	TECNICO PROFESIONAL EN SERVICIOS TURISTICOS Y HOTELEROS	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1332	105502	TECNOLOGIA EN GESTIÓN DE PROCESOS AGROINDUSTRIALES	TECNOLOGO EN GESTIÓN DE PROCESOS AGROINDUSTRIALES	Tecnólogo	6	113	Semestral	39	Registro Calificado
1333	105499	TECNOLOGIA DE GESTION ADMINISTRATIVA	TECNOLOGIA DE GESTION ADMINISTRATIVA	Tecnólogo	5	94	Semestral	39	Registro Calificado
1334	105501	TECNICA PROFESIONAL EN PRODUCCION DE MATERIAS PRIMAS AGROINDUSTRIALES	TECNICO PROFESIONAL EN PRODUCCION DE MATERIAS PRIMAS AGROINDUSTRIALES	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1335	105498	TECNICA PROFESIONAL DE PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL DE PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	55	Semestral	39	Registro Calificado
1336	2961	TECNICA PROFESIONAL EN ADMINISTRACION Y PRODUCCION AGROINDUSTRIAL	TECNICO PROFESIONAL EN ADMINISTRACION Y PRODUCCION AGROINDUSTRIAL	Técnico Profesional	6	66	Semestral	39	Registro Calificado
1337	110334	TÉCNICA PROFESIONAL EN PROCESOS CONTABLES	TÉCNICO PROFESIONAL EN PROCESOS CONTABLES	Técnico Profesional	4	65	Semestral	39	Registro Calificado
1338	54295	TECNICA PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	TECNICO PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	Técnico Profesional	4	62	Semestral	39	No definido
1339	54274	TECNICA PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	TECNICO PROFESIONAL EN SERVICIOS ADMINISTRATIVOS DE SALUD	Técnico Profesional	3	57	Semestral	39	Registro Calificado
1340	52606	TECNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS	TECNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS	Técnico Profesional	3	53	Semestral	39	Registro Calificado
1341	119413	Técnica Profesional en Operaciones Administrativas de Empresas Agroindustriales	Técnico Profesional en Operaciones Administrativas de Empresas Agroindustriales	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1342	119414	Administración Agroindustrial	Administrador (a) Agroindustrial	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1343	119179	Diseño de Experiencias Interactivas	Diseñador (a) de Experiencias Interactivas	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1344	119178	Diseño de Experiencias Interactivas	Diseñador (a) de Experiencias Interactivas	Pregrado Universitario	9	158	Semestral	39	Registro Calificado
1345	119157	Técnica Profesional en Procesos Operativos de Experiencia e Interfaz de Usuario (UX/UI)	Técnico (a) Profesional en Procesos Operativos de Experiencia e Interfaz de Usuario (UX/UI)	Técnico Profesional	4	70	Semestral	39	Registro Calificado
1346	119159	Tecnología en Desarrollo de Productos Digitales Innovadores: UX/UI	Tecnólogo (a) en Desarrollo de Productos Digitales Innovadores: UX/UI	Tecnólogo	6	105	Semestral	39	Registro Calificado
1347	119160	Tecnología en Desarrollo de Productos Digitales Innovadores: UX/UI	Tecnólogo (a) en Desarrollo de Productos Digitales Innovadores: UX/UI	Tecnólogo	6	105	Semestral	39	Registro Calificado
1348	119153	Especialización en Marketing Político	Especialista en Marketing Político	Especialización	2	28	Semestral	39	Registro Calificado
1349	119158	Técnica Profesional en Procesos Operativos de Experiencia e Interfaz de Usuario (UX/UI)	Técnico (a) Profesional en Procesos Operativos de Experiencia e Interfaz de Usuario (UX/UI)	Técnico Profesional	4	70	Semestral	39	Registro Calificado
1350	118850	CONTADURÍA PÚBLICA	CONTADOR (A) PÚBLICO (A)	Pregrado Universitario	9	153	Semestral	39	Registro Calificado
1351	118848	TECNOLOGÍA EN GESTIÓN CONTABLE Y FINANCIERA	TECNÓLOGO (A) EN GESTIÓN CONTABLE Y FINANCIERA	Tecnólogo	6	103	Semestral	39	Registro Calificado
1352	118851	Especialización en Ciberseguridad	Especialista en Ciberseguridad	Especialización	2	28	Semestral	39	Registro Calificado
1353	118844	TÉCNICA PROFESIONAL EN PROCESOS CONTABLES	TÉCNICO PROFESIONAL EN PROCESOS CONTABLES	Técnico Profesional	4	68	Semestral	39	Registro Calificado
1354	117681	DISEÑO DE MODAS	DISEÑADOR(A) DE MODAS	Pregrado Universitario	9	152	Semestral	39	Registro Calificado
1355	119285	ADMINISTRACIÓN DE LA SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR (A) DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1356	119177	INGENIERÍA DE SOFTWARE	INGENIERO (A) DE SOFTWARE	Pregrado Universitario	9	156	Semestral	39	Registro Calificado
1357	119175	TÉCNICA PROFESIONAL EN PROCESOS DE PROGRAMACIÓN DE SOFTWARE	TÉCNICO (A) PROFESIONAL EN PROCESOS DE PROGRAMACIÓN DE SOFTWARE	Técnico Profesional	4	64	Semestral	39	Registro Calificado
1358	118986	ESPECIALIZACIÓN EN GOBERNANZA DE LA INTELIGENCIA ARTIFICIAL (IA)	ESPECIALISTA EN GOBERNANZA DE LA INTELIGENCIA ARTIFICIAL (IA)	Especialización	2	28	Semestral	39	Registro Calificado
1359	118465	Especialización en Seguridad y Salud en el Trabajo	Especialista en Seguridad y Salud en el Trabajo	Especialización	2	28	Semestral	39	Registro Calificado
1360	119176	INGENIERÍA DE SOFTWARE	INGENIERO (A) DE SOFTWARE	Pregrado Universitario	9	156	Semestral	39	Registro Calificado
1361	119174	TÉCNICA PROFESIONAL EN PROCESOS DE PROGRAMACIÓN DE SOFTWARE	TÉCNICO (A) PROFESIONAL EN PROCESOS DE PROGRAMACIÓN DE SOFTWARE	Técnico Profesional	4	64	Semestral	39	Registro Calificado
1362	111437	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	TECNÓLOGO EN GESTIÓN ADMINISTRATIVA DE LA SEGURIDAD SOCIAL	Tecnólogo	5	88	Semestral	39	Registro Calificado
1363	119032	ESPECIALIZACIÓN EN DISEÑO Y DESARROLLO DE VIDEOJUEGOS	ESPECIALISTA EN DISEÑO Y DESARROLLO DE VIDEOJUEGOS	Especialización	2	28	Semestral	39	Registro Calificado
1364	119074	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS DE PRODUCCIÓN GRÁFICA.	TÉCNICO (A) PROFESIONAL EN OPERACIÓN DE PROCESOS DE PRODUCCIÓN GRÁFICA.	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1365	119286	ADMINISTRACIÓN DE LA SEGURIDAD Y SALUD EN EL TRABAJO	ADMINISTRADOR (A) DE LA SEGURIDAD Y SALUD EN EL TRABAJO	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1366	111755	Técnica Profesional en Operación de Procesos de Producción Gráfica	Técnico/a Profesional en Operación de Procesos de Producción Gráfica	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1367	119283	TECNOLOGÍA EN GESTIÓN DE SEGURIDAD Y SALUD EN EL TRABAJO	TECNÓLOGO (A) EN GESTIÓN DE SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	106	Semestral	39	Registro Calificado
1368	119258	TÉCNICA PROFESIONAL EN PROCESOS OPERATIVOS DEL MARKETING DIGITAL	TÉCNICO (A) PROFESIONAL EN PROCESOS OPERATIVOS DEL MARKETING DIGITAL	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1369	119284	TECNOLOGÍA EN GESTIÓN DE SEGURIDAD Y SALUD EN EL TRABAJO	TECNÓLOGO (A) EN GESTIÓN DE SEGURIDAD Y SALUD EN EL TRABAJO	Tecnólogo	6	106	Semestral	39	Registro Calificado
1370	119282	TÉCNICA PROFESIONAL EN PROCESOS OPERATIVOS DE SEGURIDAD Y SALUD EN EL TRABAJO	TÉCNICO (A) PROFESIONAL EN PROCESOS OPERATIVOS DE SEGURIDAD Y SALUD EN EL TRABAJO	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1371	119262	MARKETING DIGITAL	PROFESIONAL EN MARKETING DIGITAL	Pregrado Universitario	9	159	Semestral	39	Registro Calificado
1372	119476	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA DE EMPRESAS TURÍSTICAS Y HOTELERAS	TECNÓLOGO (A) EN GESTIÓN ADMINISTRATIVA DE EMPRESAS TURÍSTICAS Y HOTELERAS	Tecnólogo	6	105	Semestral	39	Registro Calificado
1373	119477	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA DE EMPRESAS TURÍSTICAS Y HOTELERAS	TECNÓLOGO (A) EN GESTIÓN ADMINISTRATIVA DE EMPRESAS TURÍSTICAS Y HOTELERAS	Tecnólogo	6	105	Semestral	39	Registro Calificado
1374	119475	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS EN EMPRESAS TURÍSTICAS Y HOTELERAS	TÉCNICO (A) PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS EN EMPRESAS TURÍSTICAS Y HOTELERAS	Técnico Profesional	4	70	Semestral	39	Registro Calificado
1375	119474	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS EN EMPRESAS TURÍSTICAS Y HOTELERAS	TÉCNICO (A) PROFESIONAL EN OPERACIÓN DE PROCESOS ADMINISTRATIVOS EN EMPRESAS TURÍSTICAS Y HOTELERAS	Técnico Profesional	4	70	Semestral	39	Registro Calificado
1376	119261	MARKETING DIGITAL	PROFESIONAL EN MARKETING DIGITAL	Pregrado Universitario	9	159	Semestral	39	Registro Calificado
1377	111479	ADMINISTRACIÓN DE LA SEGURIDAD SOCIAL	ADMINISTRADOR DE LA SEGURIDAD SOCIAL	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1378	111435	TÉCNICA PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	TÉCNICO PROFESIONAL EN PROCESOS ADMINISTRATIVOS DE LA SEGURIDAD SOCIAL	Técnico Profesional	3	52	Semestral	39	Registro Calificado
1379	119257	TÉCNICA PROFESIONAL EN PROCESOS OPERATIVOS DEL MARKETING DIGITAL	TÉCNICO (A) PROFESIONAL EN PROCESOS OPERATIVOS DEL MARKETING DIGITAL	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1380	119260	TECNOLOGÍA EN GESTIÓN DE MARKETING DIGITAL	TECNÓLOGO (A) EN GESTIÓN DE MARKETING DIGITAL	Tecnólogo	6	106	Semestral	39	Registro Calificado
1381	119281	TÉCNICA PROFESIONAL EN PROCESOS OPERATIVOS DE SEGURIDAD Y SALUD EN EL TRABAJO	TÉCNICO (A) PROFESIONAL EN PROCESOS OPERATIVOS DE SEGURIDAD Y SALUD EN EL TRABAJO	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1382	119259	TECNOLOGÍA EN GESTIÓN DE MARKETING DIGITAL	TECNÓLOGO (A) EN GESTIÓN DE MARKETING DIGITAL	Tecnólogo	6	106	Semestral	39	Registro Calificado
1383	118352	ESPECIALIZACIÓN EN GESTIÓN DE LA INNOVACIÓN DEL SISTEMA MODA	ESPECIALISTA EN GESTIÓN DE LA INNOVACIÓN DEL SISTEMA MODA	Especialización	2	28	Semestral	39	Registro Calificado
1384	118372	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO (A) EN GESTIÓN ADMINISTRATIVA	Tecnólogo	6	107	Semestral	39	Registro Calificado
1385	118375	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR (A) DE EMPRESAS	Pregrado Universitario	9	160	Semestral	39	Registro Calificado
1386	118371	TÉCNICA PROFESIONAL EN OPERACIONES DEL PROCESO ADMINISTRATIVO	TÉCNICO (A) PROFESIONAL EN OPERACIONES DEL PROCESO ADMINISTRATIVO	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1387	118370	TÉCNICA PROFESIONAL EN OPERACIONES DEL PROCESO ADMINISTRATIVO	TÉCNICO (A) PROFESIONAL EN OPERACIONES DEL PROCESO ADMINISTRATIVO	Técnico Profesional	4	71	Semestral	39	Registro Calificado
1388	118373	TECNOLOGÍA EN GESTIÓN ADMINISTRATIVA	TECNÓLOGO (A) EN GESTIÓN ADMINISTRATIVA	Tecnólogo	6	107	Semestral	39	Registro Calificado
1389	118374	ADMINISTRACIÓN DE EMPRESAS	ADMINISTRADOR (A) DE EMPRESAS	Pregrado Universitario	9	160	Semestral	39	Registro Calificado
1390	119299	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS DE COMERCIO EXTERIOR	TÉCNICO (A) PROFESIONAL EN OPERACIÓN DE PROCESOS DE COMERCIO EXTERIOR	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1391	119298	TÉCNICA PROFESIONAL EN OPERACIÓN DE PROCESOS DE COMERCIO EXTERIOR	TÉCNICO (A) PROFESIONAL EN OPERACIÓN DE PROCESOS DE COMERCIO EXTERIOR	Técnico Profesional	4	69	Semestral	39	Registro Calificado
1392	119301	TECNOLOGÍA EN GESTIÓN LOGÍSTICA DE COMERCIO EXTERIOR	TECNÓLOGO (A) EN GESTIÓN LOGÍSTICA DE COMERCIO EXTERIOR	Tecnólogo	6	103	Semestral	39	Registro Calificado
1393	119483	Técnica Profesional en Operación de Procesos Químicos	Técnico (a) Profesional en Operación de Procesos Químicos	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1394	119300	TECNOLOGÍA EN GESTIÓN LOGÍSTICA DE COMERCIO EXTERIOR	TECNÓLOGO (A) EN GESTIÓN LOGÍSTICA DE COMERCIO EXTERIOR	Tecnólogo	6	103	Semestral	39	Registro Calificado
1395	119303	NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1396	119479	ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR (A) DE EMPRESAS TURÍSTICAS Y HOTELERAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1397	119302	NEGOCIOS INTERNACIONALES	PROFESIONAL EN NEGOCIOS INTERNACIONALES	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1398	119481	Ingeniería Química	Ingeniero (a) Química	Pregrado Universitario	9	156	Semestral	39	Registro Calificado
1399	119482	Tecnología en Gestión de Procesos Químicos Industriales	Tecnólogo (a) en Gestión de Procesos Químicos Industriales	Tecnólogo	6	102	Semestral	39	Registro Calificado
1400	119478	ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS Y HOTELERAS	ADMINISTRADOR (A) DE EMPRESAS TURÍSTICAS Y HOTELERAS	Pregrado Universitario	9	155	Semestral	39	Registro Calificado
1401	111745	Técnica Profesional en Operación de Procesos de Producción Gráfica	Técnico/a Profesional en Operación de Procesos de Producción Gráfica	Técnico Profesional	4	67	Semestral	39	Registro Calificado
1402	119137	DISEÑO GRÁFICO	DISEÑADOR (A) GRÁFICO	Pregrado Universitario	9	154	Semestral	39	Registro Calificado
1403	19790	MAESTRIA EN ADMINISTRACION PUBLICA	MAGISTER EN ADMINISTRACION PUBLICA	Maestría	4	57	Anual	40	Registro Calificado
1404	104436	MAESTRÍA EN ADMINISTRACIÓN PÚBLICA	MAGISTER EN ADMINISTRACIÓN PÚBLICA	Maestría	4	52	Anual	40	Registro Calificado
1405	105630	MAESTRÍA EN DERECHOS HUMANOS, GESTIÓN DE LA TRANSICIÓN Y POSCONFLICTO	MAGISTER EN DERECHOS HUMANOS, GESTIÓN DE LA TRANSICIÓN Y POSCONFLICTO	Maestría	4	52	Semestral	40	Registro Calificado
1406	5144	ESPECIALIZACION EN ALTA DIRRECION DEL ESTADO	ESPECIALISTA ALTA DIRRECION DEL ESTADO	Especialización	2	24	Semestral	40	Registro Calificado
1407	1703	ESPECIALIZACION EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	24	Semestral	40	Registro Calificado
1408	15794	ESPECIALIZACION EN PROYECTOS DE DESARROLLO	ESPECIALISTA EN PROYECTOS DE DESARROLLO	Especialización	2	24	Semestral	40	Registro Calificado
1409	19771	ESPECIALIZACION EN GESTION PUBLICA	ESPECIALISTA EN GESTION PUBLICA	Especialización	2	24	Semestral	40	Registro Calificado
1410	10406	ESPECIALIZACION EN GESTION Y PLANIFICACIÓN DEL DESARROLLO URBANO Y REGIONAL	ESPECIALISTA EN GESTION Y PLANIFICACIÓN DEL DESARROLLO URBANO Y REGIONAL	Especialización	2	24	Semestral	40	Registro Calificado
1411	17598	ESPECIALIZACION EN FINANZAS PUBLICAS	ESPECIALISTA EN FINANZAS PUBLICAS	Especialización	2	24	Semestral	40	Registro Calificado
1412	102618	ESPECIALIZACIÓN EN PROYECTOS DE DESARROLLO	ESPECIALISTA EN PROYECTOS DE DESARROLLO	Especialización	2	24	Semestral	40	Registro Calificado
1413	102619	ESPECIALIZACIÓN EN GESTIÓN PÚBLICA	ESPECIALISTA EN GESTIÓN PÚBLICA	Especialización	2	24	Semestral	40	Registro Calificado
1414	102617	ESPECIALIZACIÓN EN FINANZAS PÚBLICAS	ESPECIALISTA EN FINANZAS PUBLICAS	Especialización	2	24	Semestral	40	Registro Calificado
1415	102620	ESPECIALIZACIÓN EN GERENCIA SOCIAL	ESPECIALISTA EN GERENCIA SOCIAL	Especialización	2	24	Semestral	40	Registro Calificado
1416	51868	ADMINISTRACION PUBLICA	ADMINISTRADOR PUBLICO	Pregrado Universitario	10	180	Semestral	40	Acreditacion de Alta Calidad
1417	1697	ADMINISTRACION PUBLICA TERRITORIAL	ADMINISTRADOR PUBLICO	Pregrado Universitario	10	156	Semestral	40	Acreditacion de Alta Calidad
1418	116204	ECONOMÍA PÚBLICA	ECONOMISTA PÚBLICO	Pregrado Universitario	9	150	Semestral	40	Registro Calificado
1419	119638	Especialización en Comunicación Gubernamental	Especialista en Comunicación Gubernamental	Especialización	2	28	Semestral	40	Registro Calificado
1422	2222222222222222222	PROFESIONAL EN VAGANCIA Y TURISMO	Profesional en vagancia y turismo	Doctorado	12	50	Anual	41	Acreditacion de Alta Calidad
\.


--
-- TOC entry 4983 (class 0 OID 24717)
-- Dependencies: 224
-- Data for Name: entidades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.entidades (id_entidad, nom_ent, tipo_ent, nit_ent) FROM stdin;
20	Universidad de Cartagena	IES	890480123-5
21	Universidad Tecnológica de Bolívar	IES	890401962-0
22	Institución Universitaria Bellas Artes y Ciencias de Bolívar	IES	890480308-0
23	Universidad de San Buenaventura	IES	890307400-1
24	Fundación Universitaria Antonio de Arévalo	IES	890481264-1
25	Corporación Universitaria Rafael Núñez	IES	890481276-8
26	Fundación Universitaria Tecnológico Comfenalco	IES	890481183-1
27	Fundación Universitaria Colombo Internacional	IES	900131269-0
28	Universidad del Sinú - Elías Bechara Zainúm	IES	891000692-1
29	Servicio Nacional de Aprendizaje - SENA	IES	899999034-1
30	Alcaldía Mayor de Cartagena de Indias	Entidad Publica	890480184-4
31	Gobernación del Departamento de Bolívar	Entidad Publica	890480059-1
32	ICETEX	Entidad Publica	899999035-7
33	Fundación Promigas	ESAL o Fundacion	802010620-9
34	Fundación Coosalud para el Desarrollo de la Economía Solidaria	ESAL o Fundacion	806011962-1
35	Refinería de Cartagena S.A.S. (Reficar)	Entidades Privadas	900112515-7
36	Esenttia S.A.	Entidades Privadas	800059470-5
37	Cabot Colombiana S.A.S.	Entidades Privadas	890400080-5
38	Dow Química de Colombia S.A.	Entidades Privadas	860014659-4
39	Colectivo TRASO de Transformación Social	ESAL o Fundacion	890480468-0
40	Ministerio de Educación Nacional de Colombia	Entidad Publica	899999001-7
41	Caja de Compensación Familiar de Fenalco del Departamento de Bolívar - COMFENALCO	ESAL o Fundacion	890400560-6
\.


--
-- TOC entry 4985 (class 0 OID 24728)
-- Dependencies: 226
-- Data for Name: universidades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.universidades (id_universidad, nom_institucion, siglas, codigo_snies, mod_presencial, mod_virtual, mod_hibrida, mod_adistancia, ciudad, departamento) FROM stdin;
21	Universidad de Cartagena	UdeC	1205	t	f	f	t	Cartagena de Indias	Bolívar
22	Universidad Tecnológica de Bolívar	UTB	1832	t	t	f	f	Cartagena de Indias	Bolívar
23	Universidad del Sinú - Elías Bechara Zainúm	Unisinu	1834	t	t	f	t	Cartagena de Indias	Bolívar
24	Corporación Universitaria Rafael Núñez	UniNúñez	2825	t	t	f	f	Cartagena de Indias	Bolívar
25	Fundación Universitaria Tecnológico Comfenalco - Cartagena	Comfenalco	3705	t	t	f	f	Cartagena de Indias	Bolívar
26	Fundación Universitaria Antonio de Arévalo	Unitecnar	3710	t	t	f	t	Cartagena de Indias	Bolívar
27	Institución Universitaria Mayor de Cartagena	Umayor	3103	t	t	f	f	Cartagena de Indias	Bolívar
28	Institución Universitaria Bellas Artes y Ciencias de Bolívar	Bellas Artes	2211	t	f	f	f	Cartagena de Indias	Bolívar
29	Fundación Universidad de Bogotá Jorge Tadeo Lozano - Seccional Cartagena	UTadeo	1708	t	f	f	f	Cartagena de Indias	Bolívar
30	Universidad de San Buenaventura - Seccional Cartagena	USB	1724	t	f	f	f	Cartagena de Indias	Bolívar
31	Corporación Universitaria Regional del Caribe	IAFIC	4826	t	f	f	f	Cartagena de Indias	Bolívar
32	Fundación Universitaria Colombo Internacional	Unicolombo	9121	t	f	f	f	Cartagena de Indias	Bolívar
33	Escuela Naval de Cadetes Almirante Padilla	ENAP	9105	t	f	f	f	Cartagena de Indias	Bolívar
34	Universidad Nacional Abierta y a Distancia	UNAD	2102	f	t	f	t	Cartagena de Indias	Bolívar
35	Fundación Universitaria Los Libertadores	Libertadores	2713	t	t	f	f	Cartagena de Indias	Bolívar
36	Fundación Universitaria San Martín	San Martín	2709	t	t	f	f	Cartagena de Indias	Bolívar
37	Corporación Universitaria Autónoma de Nariño	AUNAR	3817	t	t	f	f	Cartagena de Indias	Bolívar
38	Corporación Universitaria Minuto de Dios	Uniminuto	2829	t	t	f	t	Cartagena de Indias	Bolívar
39	Corporación Unificada Nacional de Educación Superior	CUN	4813	t	t	f	t	Cartagena de Indias	Bolívar
40	Escuela Superior de Administración Pública	ESAP	2104	f	f	f	t	Cartagena de Indias	Bolívar
41	Todas las IES aliadas	TLIESA	0000	t	t	t	t	Cartagena	Bolívar
42	Centros de Formación Surtigas	CFS	No aplica	t	t	t	f	Cartagena	Bolívar
43	Universidades con Convenio Regional	CONV-REG	No aplica	t	t	t	t	Múltiples	Bolívar
44	IES con convenio de posgrado	IES-POS	No aplica	t	t	t	t	Múltiples	Bolívar
\.


--
-- TOC entry 4987 (class 0 OID 41098)
-- Dependencies: 228
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.usuarios (id_usuario, username, email, psswd, estado_est, descripcion, rol) FROM stdin;
b74c280d-45de-47b8-9492-1b26bd0ab3c9	Juan Caporo	juan@caporo.com	$2b$10$aXWcWLK6aXErifoe44egR.WlElGuBVCAaFosQKTXqN32R37dPxZ1m	No aplica	\N	Usuario
adminunibecasadmon	Admin	admon@unibecas.com	$2b$10$aXWcWLK6aXErifoe44egR.WlElGuBVCAaFosQKTXqN32R37dPxZ1m	No aplica	\N	Admin
\.


--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 221
-- Name: becas_id_beca_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.becas_id_beca_seq', 72, true);


--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 223
-- Name: carreras_id_carrera_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carreras_id_carrera_seq', 1422, true);


--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 225
-- Name: entidades_id_entidad_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.entidades_id_entidad_seq', 47, true);


--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 227
-- Name: universidades_id_universidad_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.universidades_id_universidad_seq', 49, true);


-- Completed on 2026-11-13 01:36:36

--
-- PostgreSQL database dump complete
--

\unrestrict RBrETxqhcbL5rplfpD3u2FGNg3UO88TyVv8Z5qW2pTvCd1e7kS2OI83NtJepn7i

