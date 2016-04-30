#=

=#
# approximation to exp(x) for x in [0..1/512]
const exp0_1o512_coeffs = FloatFloat{Float64}[
    FF(1.0, 0.0),
    FF(1.0, -3.848398006e-39),
    FF(0.5, 7.4985474680385e-35),
    FF(0.16666666666666666, 9.251858538542402e-18),
    FF(0.041666666666666664, 2.31296463685618e-18),
    FF(0.008333333333333333, 1.1564318445043447e-19),
    FF(0.001388888888888889, -4.5853565322306863e-20),
    FF(0.0001984126984126919, -2.2679226109062077e-21),
    FF(2.4801587305390876e-5, -4.629797716289131e-22),
    FF(2.7557305420987583e-6, 1.5344084144442735e-22),
    FF(2.758562251947967e-7, -1.7620011695933446e-23)
];

const exp0_1o256_poly = Poly(exp0_1o512_coeffs)









# exp_1to512[100] = exp(100) as FloatFloat{Float64}
const exp_1to512 = FloatFloat{Float64}[
    FF(2.718281828459045, 1.4456468917292502e-16),
    FF(7.38905609893065, -1.7971139497839148e-16),
    FF(20.085536923187668, -1.8275625525512858e-16),
    FF(54.598150033144236, 2.8741578015844115e-15),
    FF(148.4131591025766, 3.4863514900464198e-15),
    FF(403.4287934927351, 1.2359628024450387e-14),
    FF(1096.6331584284585, 9.869752640434095e-14),
    FF(2980.9579870417283, -2.7103295816873633e-14),
    FF(8103.083927575384, -2.1530877621067177e-13),
    FF(22026.465794806718, -1.3780134700517372e-12),
    FF(59874.14171519782, 1.7895764888916994e-12),
    FF(162754.79141900392, 5.30065881322063e-12),
    FF(442413.3920089205, 1.2118711752313224e-11),
    FF(1.2026042841647768e6, -1.5000525764327354e-11),
    FF(3.2690173724721107e6, -3.075806431120808e-11),
    FF(8.886110520507872e6, 5.321182483501564e-10),
    FF(2.41549527535753e7, -7.203995068362157e-10),
    FF(6.565996913733051e7, 1.4165536846555444e-9),
    FF(1.7848230096318725e8, 1.333018530234341e-8),
    FF(4.851651954097903e8, 4.880277289790406e-10),
    FF(1.3188157344832146e9, 8.043448618843281e-8),
    FF(3.584912846131592e9, -2.3519384005402157e-7),
    FF(9.744803446248903e9, -6.74501500127677e-7),
    FF(2.648912212984347e10, 7.670395527778119e-7),
    FF(7.200489933738588e10, -6.992440211033874e-6),
    FF(1.9572960942883878e11, -1.1364989227123904e-5),
    FF(5.3204824060179865e11, -2.8335783945658822e-5),
    FF(1.446257064291475e12, 7.602079742299693e-5),
    FF(3.931334297144042e12, 8.220112058084352e-5),
    FF(1.0686474581524463e13, -0.0007436345313492586),
    FF(2.9048849665247426e13, -0.0005501643178883202),
    FF(7.896296018268069e13, 0.007660978022635108),
    FF(2.1464357978591606e14, 0.002124297761531261),
    FF(5.834617425274549e14, 0.006402902734610391),
    FF(1.5860134523134308e15, -0.02187035537422534),
    FF(4.311231547115195e15, 0.22711342229285691),
    FF(1.1719142372802612e16, -0.6912270602088098),
    FF(3.1855931757113756e16, 0.22032867170129863),
    FF(8.659340042399374e16, 2.953606932719265),
    FF(2.3538526683702e17, -14.592100089250966),
    FF(6.398434935300549e17, 37.22266340351557),
    FF(1.739274941520501e18, 55.394681303611236),
    FF(4.727839468229346e18, 257.4744575627443),
    FF(1.2851600114359308e19, -12.1907003678569),
    FF(3.4934271057485095e19, 436.0347972334061),
    FF(9.496119420602448e19, 5929.133649117119),
    FF(2.5813128861900675e20, -15192.714199784727),
    FF(7.016735912097631e20, 30185.471599886117),
    FF(1.9073465724950998e21, -98786.90015904616),
    FF(5.184705528587072e21, 419031.45332293346),
    FF(1.4093490824269389e22, -614323.8566876298),
    FF(3.831008000716577e22, -661524.304512138),
    FF(1.0413759433029089e23, -7.520901270665062e6),
    FF(2.830753303274694e23, -4.711377645198593e6),
    FF(7.694785265142018e23, -3.868399744098706e7),
    FF(2.091659496012996e24, 5.079641515721467e7),
    FF(5.685719999335932e24, 2.0801558082063326e8),
    FF(1.545538935590104e25, 1.2092033491117463e8),
    FF(4.2012104037905144e25, -1.7624059056928084e9),
    FF(1.1420073898156842e26, 4.912247462314477e9),
    FF(3.10429793570192e26, 3.39761293411071e9),
    FF(8.438356668741454e26, 6.5719328084037315e10),
    FF(2.29378315946961e27, -7.566162968773138e10),
    FF(6.235149080811617e27, 1.3899738872492847e11),
    FF(1.6948892444103338e28, -6.61940830637628e11),
    FF(4.607186634331292e28, -2.37966706696394e12),
    FF(1.2523631708422137e29, 8.725173269482437e12),
    FF(3.404276049931741e29, -2.3689045745171566e13),
    FF(9.253781725587787e29, 4.1335361789492734e13),
    FF(2.515438670919167e30, 1.2647645018519611e14),
    FF(6.837671229762744e30, -2.8026814130938628e14),
    FF(1.8586717452841279e31, 9.331591492068494e14),
    FF(5.052393630276104e31, 2.4912292015869455e15),
    FF(1.3733829795401761e32, 8.003850355927158e15),
    FF(3.7332419967990015e32, 1.5538124781410182e16),
    FF(1.0148003881138887e33, -1.8313882415912828e16),
    FF(2.7585134545231703e33, -1.1490320660315066e17),
    FF(7.498416996990121e33, -4.7233584091570765e17),
    FF(2.0382810665126688e34, -5.7128185991424294e17),
    FF(5.54062238439351e34, 2.1811937023229343e18),
    FF(1.5060973145850306e35, -7.056987941853042e18),
    FF(4.0939969621274545e35, 1.852765937250624e19),
    FF(1.1128637547917594e36, -2.7961733453775843e19),
    FF(3.0250773222011426e36, -2.2396762302858075e20),
    FF(8.223012714622913e36, 4.083087026334775e20),
    FF(2.235246603734715e37, 7.328168204485786e20),
    FF(6.076030225056872e37, 2.4300525977303657e21),
    FF(1.6516362549940018e38, 4.5658363808236883e21),
    FF(4.4896128191743455e38, -3.034626837469501e22),
    FF(1.2204032943178408e39, -3.218018426639282e22),
    FF(3.317400098335743e39, -2.0594325391839645e23),
    FF(9.017628405034299e39, 4.119507937020878e23),
    FF(2.451245542920086e40, -1.809447119103778e24),
    FF(6.663176216410896e40, -3.5075886901816454e24),
    FF(1.8112390828890233e41, -6.613591371018036e24),
    FF(4.923458286012058e41, 1.3869835129739753e25),
    FF(1.3383347192042695e42, -3.8243050326463913e25),
    FF(3.637970947608805e42, -1.7059216189570308e26),
    FF(9.889030319346946e42, 5.152980735736938e26),
    FF(2.6881171418161356e43, -1.6101271449201627e27),
    FF(7.307059979368067e43, 3.81998468048638e27),
    FF(1.9862648361376543e44, -1.7687808052379885e27),
    FF(5.399227610580169e44, 1.6694477435363627e28),
    FF(1.4676622301554424e45, -5.683445805084399e28),
    FF(3.989519570547216e45, -4.528566832709381e28),
    FF(1.0844638552900231e46, -5.0737593474148365e29),
    FF(2.947878391455509e46, 1.522599815352173e30),
    FF(8.013164264000591e46, 4.4255712989469043e30),
    FF(2.1782038807290206e47, 6.40943286045652e30),
    FF(5.92097202766467e47, 3.6278506451438224e31),
    FF(1.609487066961518e48, -3.11348413350283e31),
    FF(4.375039447261341e48, 1.035824156236645e32),
    FF(1.189259022828201e49, -6.311799972004003e32),
    FF(3.2327411910848595e49, -1.6317210762547248e33),
    FF(8.787501635837023e49, 4.951878455668192e31),
    FF(2.3886906014249913e50, 1.5523479734981885e34),
    FF(6.493134255664462e50, 1.417967467778397e33),
    FF(1.7650168856917655e51, 3.659435419097009e34),
    FF(4.797813327299302e51, -4.832529827928807e34),
    FF(1.3041808783936323e52, 2.3598218061815903e35),
    FF(3.5451311827611664e52, 4.397256578106813e35),
    FF(9.636665673603202e52, -3.923912609184774e36),
    FF(2.6195173187490626e53, 9.508437015673215e36),
    FF(7.120586326889338e53, -2.2289404495948426e37),
    FF(1.9355760420357226e54, -1.8895773015758525e37),
    FF(5.261441182666386e54, -2.2391033592780024e38),
    FF(1.4302079958348105e55, -4.95219683040473e38),
    FF(3.887708405994595e55, 2.707966110366217e39),
    FF(1.0567887114362587e56, 1.0147572632726592e40),
    FF(2.872649550817832e56, -1.725105418010497e40),
    FF(7.808671073519151e56, -3.3393507820354276e39),
    FF(2.1226168683560893e57, 9.12124047520486e40),
    FF(5.769870862033003e57, 2.54679794252527e41),
    FF(1.568413511681964e58, -5.571295095061288e41),
    FF(4.263389948314721e58, 9.74205426058927e41),
    FF(1.1589095424138854e59, 3.107727800036786e42),
    FF(3.150242749971452e59, -9.643637210793454e42),
    FF(8.56324762248225e59, -5.908667317844348e43),
    FF(2.3277320404788622e60, -1.5410810390283507e44),
    FF(6.327431707155585e60, 2.9519976099018483e44),
    FF(1.7199742630376623e61, -6.6270661206611855e44),
    FF(4.675374784632515e61, 1.2938282778262074e45),
    FF(1.2708986318302189e62, -3.042168764740704e44),
    FF(3.454660656717546e62, 1.8553902103629043e46),
    FF(9.390741286647697e62, 8.372523060245978e46),
    FF(2.5526681395254553e63, -1.6889209515414619e47),
    FF(6.938871417758404e63, -4.174062699457691e47),
    FF(1.886180808490652e64, 8.75753845955151e47),
    FF(5.12717101690833e64, -1.848585500693908e47),
    FF(1.3937095806663797e65, 7.0244638077530874e47),
    FF(3.788495427274696e65, -1.6686420819293392e48),
    FF(1.0298198277160991e66, 8.608117819191599e49),
    FF(2.799340524267497e66, -8.50129047864975e49),
    FF(7.609396478785354e66, -1.2944224384739812e50),
    FF(2.0684484173822473e67, -2.743371829892203e50),
    FF(5.622625746075033e67, 1.4234908903412887e51),
    FF(1.5283881393781746e68, -8.309060391771288e51),
    FF(4.154589706104022e68, 2.1030987078913436e52),
    FF(1.129334570280557e69, -8.237338292837319e52),
    FF(3.0698496406442424e69, 4.375620509828095e52),
    FF(8.344716494264775e69, -5.967039946946015e53),
    FF(2.2683291210002403e70, 1.4059974118116153e54),
    FF(6.165957830579433e70, -5.480338773236432e54),
    FF(1.6760811125908828e71, -3.078670967159958e54),
    FF(4.556060831379215e71, 4.2683874443891194e55),
    FF(1.2384657367292132e72, -1.7417281417483923e55),
    FF(3.366498907320164e72, 1.8595557870731098e56),
    FF(9.151092805295634e72, 2.9278721984510905e56),
    FF(2.487524928317743e73, -2.269951231486326e56),
    FF(6.761793810485009e73, 6.044072970031212e57),
    FF(1.8380461242828246e74, 6.558763264761503e57),
    FF(4.996327379507578e74, 1.2022315866163456e58),
    FF(1.358142592474785e75, 6.293920858651693e58),
    FF(3.691814329580466e75, 1.5523424954077878e59),
    FF(1.0035391806143295e76, -1.600289359022275e59),
    FF(2.7279023188106115e76, 6.6492459414351406e59),
    FF(7.415207303034179e76, -4.678668371358611e60),
    FF(2.0156623266094611e77, 6.4049020966883044e60),
    FF(5.47913827473198e77, -3.839583545632845e61),
    FF(1.4893842007818383e78, 6.250487712624396e61),
    FF(4.048566008579269e78, 1.682018025551642e62),
    FF(1.1005143412437996e79, -6.764346497503176e62),
    FF(2.991508135761597e79, 1.1738879998058348e63),
    FF(8.131762205128143e79, -1.5057074349533377e62),
    FF(2.2104421435549888e80, -7.196700457953682e63),
    FF(6.008604711685586e80, -3.660345147820277e64),
    FF(1.633308100216833e81, -2.1239531351072146e64),
    FF(4.4397917290943824e81, -2.882962352721535e65),
    FF(1.2068605179340022e82, 7.151662509907955e65),
    FF(3.2805870153846705e82, -3.194753619685436e66),
    FF(8.917560070598843e82, -8.989668102219982e65),
    FF(2.4240441494100796e83, -3.8332753349400205e66),
    FF(6.589235162723882e83, -8.709570822927273e66),
    FF(1.7911398206275708e84, 5.99708494881663e67),
    FF(4.8688228266413195e84, 1.710917432346709e68),
    FF(1.3234832615645704e85, -6.425373409956827e68),
    FF(3.5976005001806814e85, -2.5813006529759342e69),
    FF(9.779292065696318e85, -6.6113382980943924e69),
    FF(2.658287191737602e86, 6.120064792143622e69),
    FF(7.225973768125749e86, 2.9945383505980016e70),
    FF(1.964223318681796e87, -1.0268429875036315e71),
    FF(5.339312554208246e87, -2.625028820065693e71),
    FF(1.4513756292567526e88, -2.884486923510417e71),
    FF(3.945247999276943e88, 7.221484370687266e70),
    FF(1.0724295945198918e89, 4.163246302178397e72),
    FF(2.9151658790851237e89, 2.656865521036125e73),
    FF(7.924242436060931e89, -4.347509662136458e73),
    FF(2.1540324218248465e90, 6.568050851363196e73),
    FF(5.855267190158109e90, 4.4915902036294956e74),
    FF(1.5916266403779241e91, 3.865065123172901e74),
    FF(4.326489774230631e91, 3.1789213685539743e74),
    FF(1.1760618534305e92, 5.894438850996908e75),
    FF(3.196867565323994e92, -1.9538627920591218e76),
    FF(8.689987010810322e92, -5.6063024973277287e76),
    FF(2.3621833781030834e93, -7.781526569884677e76),
    FF(6.421080152185614e93, -1.4034869476251672e77),
    FF(1.7454305496765193e94, 9.749159232851838e77),
    FF(4.744572146022966e94, -3.2789833020339664e78),
    FF(1.2897084248347162e95, 5.438670793036996e78),
    FF(3.505790975238748e95, 1.5415362493078123e78),
    FF(9.529727902367202e95, 9.833684415222857e78),
    FF(2.5904486187163903e96, -2.263041008869737e80),
    FF(7.041569407813597e96, -4.0828301614775564e80),
    FF(1.9140970165092822e97, -1.497464557916617e81),
    FF(5.2030551378848545e97, 4.749190808721398e80),
    FF(1.4143370233782872e98, 3.8946526873422757e80),
    FF(3.844566629966054e98, 2.2093533915053797e81),
    FF(1.0450615608536755e99, -5.337145484954864e82),
    FF(2.840771850489593e99, 2.7464976717218177e81),
    FF(7.722018499983836e99, -4.0996868440885443e83),
    FF(2.0990622567530634e100, 4.153001760319747e83),
    FF(5.705842789336087e100, -7.502847960571591e83),
    FF(1.551008877029636e101, -1.1711307176004477e85),
    FF(4.216079246208329e101, 3.4845354806957584e84),
    FF(1.146049160231141e102, 5.309475346149073e85),
    FF(3.115284606777059e102, 1.1305094460701447e86),
    FF(8.468221537080262e102, -2.2036277666109673e86),
    FF(2.30190127236108e103, -4.663183218411149e86),
    FF(6.25721639956588e103, -3.232721480812657e87),
    FF(1.700887763567586e104, 1.4773861394382237e88),
    FF(4.6234922999541146e104, 6.980490121714062e87),
    FF(1.2567955102985587e105, -1.5226136925021163e88),
    FF(3.416324397733485e105, -7.894999158901084e86),
    FF(9.286532530480224e105, -2.614355089326607e89),
    FF(2.5243412626998188e106, 7.770616368141536e88),
    FF(6.861870983226278e106, 2.54810635544448e90),
    FF(1.8652499202934394e107, 3.8378044485542437e90),
    FF(5.070274963868339e107, 1.2106757063676503e90),
    FF(1.3782436299574147e108, 8.797324501988005e91),
    FF(3.7464546145026734e108, -1.331977416683643e92),
    FF(1.0183919499749154e109, 3.760113287049303e92),
    FF(2.7682763318657856e109, -4.359593659827271e92),
    FF(7.524955249064026e109, 4.590038424351707e93),
    FF(2.045494911349825e110, 5.874933608518508e93),
    FF(5.5602316477276757e110, -2.3961412490467085e94),
    FF(1.5114276650041035e111, 1.4805989167614457e94),
    FF(4.10848635681094e111, -2.2715093944493866e95),
    FF(1.1168023806191083e112, -1.3466346893514127e95),
    FF(3.0357836172167243e112, -5.830907318577528e95),
    FF(8.25211544181389e112, 7.561720358735085e96),
    FF(2.2431575451828986e113, 1.2634088408719977e97),
    FF(6.0975343934414735e113, -2.463920826476077e97),
    FF(1.6574816940096004e114, -3.1045845188348193e97),
    FF(4.505502369829812e114, 2.5013503785522924e98),
    FF(1.2247225219987542e115, 6.42962193995683e98),
    FF(3.329140976453747e115, 5.598040143579816e98),
    FF(9.049543420672623e115, 4.537120020373093e99),
    FF(2.45992094362655e116, -1.3336937285656038e100),
    FF(6.686758400505878e116, 3.6275751203174236e100),
    FF(1.8176493851391e117, 1.0857348613563014e101),
    FF(4.940883294133372e117, 5.872073200826736e100),
    FF(1.3430713274979614e118, -6.561438244448466e101),
    FF(3.6508463838620755e118, -1.217225668611515e102),
    FF(9.924029383747696e118, -1.9144804285089186e100),
    FF(2.6976308738934977e119, 1.6434483069207387e103),
    FF(7.33292098439479e119, -6.689223009240628e102),
    FF(1.993294586140637e120, -7.690568755926295e103),
    FF(5.418336452271886e120, 1.0692881230581705e104),
    FF(1.472856551868792e121, -1.9073986137624997e104),
    FF(4.0036392008717847e121, -1.5740790418664243e105),
    FF(1.0883019687436065e122, 5.132510738679125e105),
    FF(2.9583114655119493e122, 1.2566519677443227e106),
    FF(8.04152429962318e122, 3.1878079523755898e106),
    FF(2.185912937677754e123, -4.320904832106933e106),
    FF(5.941927417082968e123, -2.318480850581715e107),
    FF(1.6151833323879222e124, 2.1477250940773435e107),
    FF(4.390523502060015e124, -1.4368621650351734e108),
    FF(1.1934680253072109e125, -3.301231394418859e108),
    FF(3.2441824460394912e125, -8.056694224746427e108),
    FF(8.818602191274965e125, 6.458745640547677e109),
    FF(2.3971446088951858e126, -1.1976873606011462e110),
    FF(6.516114630548348e126, 4.587088504187736e110),
    FF(1.77126359923757e127, 1.030884711461805e111),
    FF(4.814793655218451e127, -5.518374011513411e110),
    FF(1.3087966100760222e128, 3.2631224264864673e111),
    FF(3.55767804231845e128, -1.367734783921849e112),
    FF(9.670771573941992e128, -5.22418312098765e112),
    FF(2.6287882636624796e129, 5.511633547730747e112),
    FF(7.145787367980123e129, 5.8358282775076585e113),
    FF(1.9424263952412558e130, 1.1143145370175699e114),
    FF(5.280062373303513e130, 3.208156600582199e114),
    FF(1.435269760248128e131, -7.16186684940621e114),
    FF(3.901467708219257e131, -1.9658978057900668e114),
    FF(1.0605288775572162e132, 5.4744408887427266e115),
    FF(2.882816376419849e132, -2.9251636103178103e116),
    FF(7.836307370806225e132, 3.362637736392604e116),
    FF(2.130129192828224e133, -1.0519925757372177e117),
    FF(5.790291477135095e133, -2.2606811002663962e117),
    FF(1.5739644103777611e134, 1.0877797625925327e116),
    FF(4.278478855371123e134, 1.965245231491003e118),
    FF(1.1630111326001581e135, -1.7560872305989101e118),
    FF(3.161392028042583e135, 1.076323898034143e119),
    FF(8.593554502463442e135, -4.452388589422037e119),
    FF(2.3359703045918785e136, -1.3118329097782192e120),
    FF(6.349825630792043e136, 4.5790621271733216e120),
    FF(1.7260615626065507e137, 9.0583388769633e119),
    FF(4.691921780435012e137, -1.8564765256170349e121),
    FF(1.2753965716307703e138, -8.213802440386636e121),
    FF(3.4668873247428877e138, 8.400746526214043e121),
    FF(9.423976816163585e138, -2.7555072985830676e122),
    FF(2.56170249311968e139, -2.982833047253755e122),
    FF(6.963429336965459e139, -2.031490592869688e123),
    FF(1.8928563430431824e140, -8.54535121052217e122),
    FF(5.145317001177723e140, 1.652300354724395e124),
    FF(1.3986421705962793e141, 3.6679754108401777e124),
    FF(3.801903596848382e141, -6.507523686635839e124),
    FF(1.0334645460866042e142, -6.630824087695125e125),
    FF(2.8092478959838913e142, 1.6839802408584696e126),
    FF(7.636327507289818e142, -1.478003109899906e126),
    FF(2.075769029922787e143, -4.6103575467228416e126),
    FF(5.642525234117172e143, -1.8467693665616095e127),
    FF(1.533797381052233e144, -7.187932869423258e127),
    FF(4.169293549452358e144, 2.2856193626216274e128),
    FF(1.133331489298786e145, 1.812638995123981e128),
    FF(3.080714392981317e145, -2.055266566163016e128),
    FF(8.374249953113352e145, -3.529195534423469e129),
    FF(2.2763571474522036e146, -7.649135385278611e129),
    FF(6.187780269002192e146, 2.0452541353856786e130),
    FF(1.682013066372608e147, 1.7402077272758077e131),
    FF(4.572185553551339e147, -3.025303817082867e131),
    FF(1.2428488906561565e148, -2.886776639503966e131),
    FF(3.378413554991113e148, 2.4834465544542285e132),
    FF(9.183480175552067e148, -5.514547857256372e132),
    FF(2.4963287283217065e149, -1.373039236086819e133),
    FF(6.785725020057171e149, 3.123662677152082e132),
    FF(1.8445513014941297e150, 1.2530617678102875e134),
    FF(5.014010284511975e150, 4.679752364690984e133),
    FF(1.362949304409567e151, -7.711095382116481e134),
    FF(3.7048803272874213e151, -9.867690673724987e133),
    FF(1.0070908870280797e152, 5.3316339808038604e135),
    FF(2.7375568578151306e152, -2.222815964769191e136),
    FF(7.441451060972311e152, 4.251237045552673e136),
    FF(2.0227961196408315e153, 1.645290845193879e137),
    FF(5.498529934697141e153, 1.5151784022766191e137),
    FF(1.4946554004725342e154, -1.448468428372065e138),
    FF(4.062894614912666e154, 6.1988382154146525e137),
    FF(1.1044092602661211e155, -2.715152796661375e138),
    FF(3.0020956233632933e155, -6.646393999147462e138),
    FF(8.16054198028487e155, -2.300502265664717e139),
    FF(2.2182652975385555e156, -8.7585902401975e139),
    FF(6.0298702490003525e156, -1.1610505849038665e140),
    FF(1.6390886725823477e157, -4.884184191750215e140),
    FF(4.4555049539136534e157, -1.8212417233513937e141),
    FF(1.211131815283274e158, -9.862309782875419e141),
    FF(3.2921976053531405e158, -2.5087775119651727e141),
    FF(8.949120926327824e158, 8.144709467118651e142),
    FF(2.4326232794719504e159, 8.972865446209138e142),
    FF(6.612555656075053e159, -3.4828210031110127e143),
    FF(1.7974789879582895e160, 4.883420757578802e143),
    FF(4.8860544700039736e160, -1.9929798615011407e144),
    FF(1.3281673078672893e161, -5.8501659619970704e144),
    FF(3.6103330581290227e161, -1.4522444020534894e145),
    FF(9.813902746597095e161, 5.532716092318019e145),
    FF(2.66769535023392e162, 9.316318056858376e145),
    FF(7.251547794405553e162, 4.597913913239041e146),
    FF(1.9711750597734883e163, 8.421230298660195e146),
    FF(5.358209345693946e163, -2.377872932369578e147),
    FF(1.4565123097479284e164, -5.419785700065622e147),
    FF(3.959210944514706e164, -3.1118378050325623e147),
    FF(1.0762251165510499e165, -6.617656446819255e148),
    FF(2.9254831776519365e165, 1.8271230013706187e149),
    FF(7.952287761273885e165, -6.739148580374492e149),
    FF(2.161655931614806e166, 6.14836515072565e149),
    FF(5.875990038289236e166, 7.682543674132907e149),
    FF(1.5972596945288e167, 6.113234517436691e150),
    FF(4.3418020029676826e167, 3.085405943604882e150),
    FF(1.1802241487434137e168, 1.3481482994391375e151),
    FF(3.2081818570377667e168, 1.59373050237724e152),
    FF(8.720742444377757e168, -4.81646657713735e152),
    FF(2.370543571722357e169, -1.218949883561726e153),
    FF(6.443805514583285e169, -1.7249254541154634e153),
    FF(1.7516079436415928e170, 1.200070305209974e154),
    FF(4.7613640437854577e170, -1.8495922819686444e154),
    FF(1.2942729358900287e171, -2.6985252413806685e154),
    FF(3.518198602696204e171, -1.6682402887711531e155),
    FF(9.563455330619095e171, -1.5975768730381938e155),
    FF(2.5996166842501676e172, 4.838745746021871e155),
    FF(7.066490793756186e172, -5.816163726806836e155),
    FF(1.9208713515640576e173, 1.8368429036890353e156),
    FF(5.221469689764144e173, -3.041154182825333e157),
    FF(1.419342617553556e174, 7.551313255222316e157),
    FF(3.858173245653328e174, -1.2262036148352152e158),
    FF(1.0487602224706297e175, -2.9360919164599366e158),
    FF(2.8508258551525784e175, -7.599032607378571e158),
    FF(7.749348118162471e175, 6.626018031648577e159),
    FF(2.1064912172004347e176, -9.876174540586461e159),
    FF(5.726036797524517e176, 3.706132309159609e160),
    FF(1.556498177579872e177, -6.826486521989406e160),
    FF(4.231000712144986e177, -1.42971476059156e161),
    FF(1.1501052352020995e178, 4.4959476629999365e161),
    FF(3.1263101616654833e178, 1.6584054317275907e162),
    FF(8.498192102582143e178, 1.9124137750260053e162),
    FF(2.3100481167203208e179, -5.199066649322511e162),
    FF(6.279361818546888e179, -1.1816675409653543e163),
    FF(1.7069075125675549e180, -2.507313212732506e163),
    FF(4.639855674272614e180, -3.3453058659461497e164),
    FF(1.2612435366047836e181, 3.526169756218337e164),
    FF(3.428415386814204e181, -2.4264789520330152e165),
    FF(9.31939924638644e181, -1.7544174088837296e165),
    FF(2.5332753623607178e182, 9.680076016700219e165),
    FF(6.886156383988143e182, -2.3887116902941763e166),
    FF(1.8718513766522217e183, -8.10002768920666e166),
    FF(5.088219582729782e183, -1.9828756239017318e167),
    FF(1.3831214830943832e184, -7.01606004219419e167),
    FF(3.759713994046786e184, 2.8815620275742386e168),
    FF(1.0219962230220558e185, 3.1248600521028925e168),
    FF(2.778073761794632e185, -1.6764814538343163e169),
    FF(7.551587424805211e185, -2.8404222098358627e169),
    FF(2.052734287286784e186, 9.4668421096723e169),
    FF(5.579910311786494e186, -6.929547090974395e167),
    FF(1.5167768804960472e187, 8.75779558264642e170),
    FF(4.123027032079202e187, 1.8602059512155307e171),
    FF(1.1207549459546325e188, -5.210602723327864e171),
    FF(3.046527803744077e188, -4.707672195283797e171),
    FF(8.281321168812768e188, 1.653642289035158e172),
    FF(2.2510964848816967e189, 1.883052493979404e173),
    FF(6.119114668961948e189, 3.936033141978805e173),
    FF(1.663347821089645e190, 4.3423726661706685e173),
    FF(4.521448156474929e190, 2.3513501165596917e174),
    FF(1.229057036206545e191, -8.997400650756329e173),
    FF(3.340923407659982e191, 2.0012607038161606e175),
    FF(9.0815713893156e191, -2.6691456276186817e175),
    FF(2.4686270481430163e192, -1.7801300022328465e176),
    FF(6.710424046209653e192, 4.217934324062009e176),
    FF(1.8240823746066321e193, -8.310734698384513e175),
    FF(4.958369972505633e193, -8.88745412818077e176),
    FF(1.3478246995039038e194, 8.205291565549075e176),
    FF(3.663767388609735e194, -1.8555200045340274e178),
    FF(9.959152316158692e194, -6.473519022551112e178),
    FF(2.7071782767869983e195, 1.319263330413857e178),
    FF(7.35887351618917e195, -4.893222354940081e179),
    FF(2.000349215698554e196, -8.657492983493096e179),
    FF(5.437512923605682e196, -5.142806310421101e179),
    FF(1.4780692572248542e197, -5.126009414487228e180),
    FF(4.017808803118279e197, 1.1449446231519038e181),
    FF(1.0921536659739205e198, -4.0106343753462505e181),
    FF(2.968781464101838e198, -2.2207941176850198e182),
    FF(8.069984706534065e198, 4.1106459022363725e182),
    FF(2.193649278371395e199, -5.225734286357381e182),
    FF(5.962956971409261e199, 2.041502532452046e183),
    FF(1.6208997579264978e200, -1.4420424220212603e184),
    FF(4.4060623577252635e200, 2.166376488212642e184),
    FF(1.1976919242062002e201, -1.4890294478329993e184),
    FF(3.255664193661862e201, 5.148254191579011e184),
    FF(8.849812817195809e201, 3.5453869973458054e185),
    FF(2.405628536624732e202, 1.066424016959423e186),
    FF(6.539176337129533e202, 1.9837102421101327e186),
    FF(1.777532421030859e203, 6.863038999531357e186),
    FF(4.831834079584997e203, -2.3992748261230783e187),
    FF(1.3134286776665033e204, 8.699749073518875e187),
    FF(3.5702693074778485e204, 1.8201652234667578e188),
    FF(9.704998181222095e204, 4.028323355356889e188),
    FF(2.6380920201244107e205, -6.143829538998414e186),
    FF(7.1710776001069995e205, -4.4373663178141795e188),
    FF(1.9493009930840557e206, -5.14420244296459e189),
    FF(5.298749467697559e206, 2.437496802833058e190),
    FF(1.4403494391599313e207, 1.289750836976164e191),
    FF(3.9152757070996186e207, 1.7920724796763653e191),
    FF(1.0642822808016033e208, 1.996685140431438e191),
    FF(2.8930191842539453e208, -2.8880381060655904e191),
    FF(7.86404147794091e208, -3.814926119905034e192),
    FF(2.137668104773499e209, -1.5820452950709363e193),
    FF(5.810784364482288e209, 1.2561463693352275e193),
    FF(1.5795349547066147e210, -1.0448069945674635e194),
    FF(4.2936211647948715e210, 4.273383173939888e193),
    FF(1.167127239054906e211, -3.202725769304826e194),
    FF(3.172580765422527e211, -7.886300987442824e194),
    FF(8.623968643966744e211, -6.73139540532059e195),
    FF(2.3442377254095393e212, -4.4922069666313394e195),
    FF(6.372298810568915e212, 3.0504433900870977e196),
    FF(1.732170406228067e213, -7.603622945422045e195),
    FF(4.708527339044277e213, 1.9025673297494446e197),
    FF(1.279910430452668e214, 3.557393668167544e197),
    FF(3.4791572651546824e214, -8.483901288672012e197),
    FF(9.457329972221242e214, -6.935562909873922e198),
    FF(2.5707688209230085e215, 1.1853726094570251e199),
    FF(6.9880741710841e215, -2.5748816691333154e198),
    FF(1.8995555035181914e216, -4.7256475121678035e199),
    FF(5.1635272073628715e216, 9.884489523844605e199),
    FF(1.4035922178528375e217, -1.0286233992191273e201),
    FF(3.8153592203558975e217, -1.0169675743004792e201),
    FF(1.0371221637737106e218, 1.1456012625452813e201),
    FF(2.8191903316782035e218, -9.598216188250208e200),
    FF(7.663353849568289e218, 2.869644655338269e202),
    FF(2.0831155514333153e219, -1.1497585129430229e203),
    FF(5.662495150041624e219, 3.550075347382437e203),
    FF(1.5392257670095623e220, -5.6342531096132194e203),
    FF(4.184049432358029e220, 1.5834110832578395e204),
    FF(1.1373425541353215e221, -8.734868020188837e204),
    FF(3.091617597639242e221, 2.6997211466630923e204),
    FF(8.403887936206959e221, 5.055404424380672e205),
    FF(2.2844135865397565e222, 1.3549224944023444e206)];
        
