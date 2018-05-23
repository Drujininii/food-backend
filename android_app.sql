--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_recipes; Type: TABLE; Schema: public; Owner: igor
--

CREATE TABLE public.app_recipes (
    recipe_id integer NOT NULL,
    recipe_name public.citext NOT NULL,
    recipe_text public.citext NOT NULL,
    recipe_products public.citext[]
);


ALTER TABLE public.app_recipes OWNER TO igor;

--
-- Name: app_recipes_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: igor
--

CREATE SEQUENCE public.app_recipes_recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_recipes_recipe_id_seq OWNER TO igor;

--
-- Name: app_recipes_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: igor
--

ALTER SEQUENCE public.app_recipes_recipe_id_seq OWNED BY public.app_recipes.recipe_id;


--
-- Name: app_recipes recipe_id; Type: DEFAULT; Schema: public; Owner: igor
--

ALTER TABLE ONLY public.app_recipes ALTER COLUMN recipe_id SET DEFAULT nextval('public.app_recipes_recipe_id_seq'::regclass);


--
-- Data for Name: app_recipes; Type: TABLE DATA; Schema: public; Owner: igor
--

COPY public.app_recipes (recipe_id, recipe_name, recipe_text, recipe_products) FROM stdin;
15	Французские гренки	Состав: 2 яйца, 4 ст. ложки молока, 5 ломтиков белого хлеба.\nРазбейте яйца в миску и добавьте молока. Если хотите сладкие гренки, можете добавить немного сахара.\nВзбейте яично-молочную смесь до однородной массы.\nОбмакивайте ломтики хлеба в массу с обеих сторон.\nВыложите на горячую, смазанную маслом сковороду.\nОбжаривайте гренки с обеих сторон до образования румяной корочки.\nГренки – вкусный, сытный, воздушный, легкий завтрак.	{хлеб,яйца,молоко}
4	Томат с хреном	Берете томат, нарезаете. Берете хрен, нарезаете	{томат,хрен}
5	Огурец с томатом	Берете огруец и томат и нарезаете	{огурец,томат}
6	Дошик	Возьмите кипяток, залейте дошик	{дошик}
7	Андройд	Возьмите 50 тысяч от своей запрлаты. Пойдите в мтс, купите на эти деньги говна и палок. Перемешайте говно и палки. Получите мобильный телефон. Теперь у вас есть телефон на платформе андройд	{говно,палки}
9	Каша	Закипятить воду, всыпать пшенно, и варить до полуготовности.\nВлить в кастрюлю молоко, и варить кашу, пока каша не впитает все молоко. За 10 минут до готовности добавить курагу.\nВсыпать сахар и соль по вкусу.\nВ конце дабавить сливочное масло, перемешать, дать настояться.	{вода,молоко,пшено,сахар,соль,масло}
10	Рок звезда	Начните прогуливать школу с детства. \nВ 8-мь классе лишите девственности Вашу соседку по парте. По возможности, перед этим напоите ее водкой. \nПосле учебы собирайтесь с пацанами в батином гараже и херачте нирвану. В 10м классе о вашем бенде будет знать вся школа. Вы начинаете свой путь к славе.\nНа уроках не сдерживайте рвотный позыв нигилизма в сторону преподавателей. Утверждайте, что образование бессмысленно и беспощадно. Это лишь способ власти научить вас мыслить как тупое стадо.\nВ целом, если помимо всего этого вы еще и сочиняете музыку - то Вы уже рок звезда.\nСкоро вы будете нюхать кокаин с ягодиц сексуальных блондинок в ночных клубах Москвы, ездить на дорогих кабриолетах и создавать имидж успешного человека.	{нигилизм,выхино}
8	Блины	Разбить 2 яйца, добавить к ним 2 ложки сахара и взбить венчиком.\n300 мл молока смешать с яйцами.\nДобавить соль, соду, 2 столовые ложки кокаина 100 гр муки и растительное масло и взбить.\nВыпекать блины на сухой сковороде, добавив растительное масло только для первого блина.	{мука,соль,сахар,молоко,масло}
11	Счастье	Тут я тебе не помошник, это ты сам дружок! =)	{оптимизм}
12	Макароны	Положите макароны в кипящую воды. Дождитиесь пока они сварятся	{макароны}
18	Чесночные горячие бутерброды со шпротами и майонезом	Состав: Ржаной хлеб, майонез, 1-2 зубчика чеснока, маринованный огурец, шпроты.\nСмешайте майонез с раздавленным чесноком, нарежьте огурец круглыми ломтиками и нарежьте хлеб. Обжарьте ломтики хлеба в недольшом количестве растительного масла (или подсушите в тостере), намажьте горячие ломтики чесночным майонезом, положите ломтики маринованного огруца и сверху по 1 шпроту.	{хлеб,чеснок,огурец,шпроты}
19	Вареный картофель	Состав: картофель, соль.\nВареная картошка: ингридиенты\nОчистите, нарежьте кубиками картофель и помойте его.\nЗалейте холодной водой и поставьте на плиту.\nВключите плиту и подождите когда вода закипит. Снимите пенку (это грязь) и посолите картошку в расчете 1 ч. ложка соли на 1,5 л воды.\nВарите картошку до неузноваемости. Маленькие кусочки варятся 10 минут, чем крупнее куски – тем дольше варится картофель. Крупный картофель целиком может вариться до 60-80 минут Готовность картошки можно проверить ножом. Для этого надо проткнуть картошку ножом, и он должен легко ее проткнуть.\nВыключите плиту и слейте воду с картошки.\nВареная картошка: подача\nПодавайте со сливочным или растительным маслом, укропом, петрушкой, зеленым луком или другой зеленью, или со сметаной.	{картофель,соль}
20	Пельмени	Состав: 1 кг. пельменей, лавровый лист, соль, суповая припрева (хмели-сунели), перец горошком.\nНалейте воду в 3-х л кастрюлю и вскипятите воду.\nПосолите кипящую воду 1 ч. ложкой соли, положите 2-3 лаврового листа, перец горошек и хмели-сунели, или киньте 4 бульоных кубика (2 кубика на каждый литр воды), влейте 1-2 ст. ложки растительного масла, чтобы пельмени не слипались.\nЗасыпьте пельмени в кипящую подсоленную воду и перемешайте, чтобы они не слипались. Помешивайте пельмени через 2-3 минуты, пока они не всплывут.\nКогда пельмени всплыли, поварите их еще 3-5 минут.\nПодавайте пельмени со сметаной, сливочным маслом, аджикой или хреном.	{пельмени,лаврушка,соль}
\.


--
-- Name: app_recipes_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: igor
--

SELECT pg_catalog.setval('public.app_recipes_recipe_id_seq', 20, true);


--
-- Name: app_recipes app_recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: igor
--

ALTER TABLE ONLY public.app_recipes
    ADD CONSTRAINT app_recipes_pkey PRIMARY KEY (recipe_id);


--
-- Name: app_recipes_recipe_id_uindex; Type: INDEX; Schema: public; Owner: igor
--

CREATE UNIQUE INDEX app_recipes_recipe_id_uindex ON public.app_recipes USING btree (recipe_id);


--
-- Name: app_recipes_recipe_name_uindex; Type: INDEX; Schema: public; Owner: igor
--

CREATE UNIQUE INDEX app_recipes_recipe_name_uindex ON public.app_recipes USING btree (recipe_name);


--
-- PostgreSQL database dump complete
--

