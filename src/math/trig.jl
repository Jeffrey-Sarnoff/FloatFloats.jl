#=
   sin(x)/x for x in [0,Pi/2]
=#

sinxox_horner(x) = @horner(
    FF(1.0, 0.0),
    FF(1.5416829321813102e-34, 2.2208306742570622e-51),
    FF(-0.16666666666666666, -9.251858538542995e-18),
    FF(1.3450877352461e-30, -1.9742631054764426e-47),
    FF(0.008333333333333333, 1.1564823169320544e-19),
    FF(6.716979788490889e-28, 6.999973392051067e-45),
    FF(-0.0001984126984126984, -1.7210338455967994e-22),
    FF(6.425814409258397e-26, -2.3947926052032725e-42),
    FF(2.7557319223985893e-6, -1.8623082741378855e-22),
    FF(1.818861488773813e-24, 3.0572955478813906e-41),
    FF(-2.5052108385441727e-8, 1.476547018572728e-24),
    FF(1.8930575124949367e-23, 7.697273406115209e-40),
    FF(1.605904383681725e-10, -6.179260187989144e-27),
    FF(8.15025328585218e-23, -4.7368521830914995e-39),
    FF(-7.647163733058841e-13, -4.3565936616267717e-29),
    FF(1.5379283411752982e-22, 8.941394489234644e-39),
    FF(2.8114570984940573e-15, -1.1146683021325932e-31),
    FF(1.2854348008492725e-22, 1.0577494845137395e-38),
    FF(-8.220720957255409e-18, 1.2115999899650458e-34),
    FF(4.5680173571437226e-23, -2.7379782256839457e-39),
    FF(1.95538280590095e-20, -1.127768967840377e-36),
    FF(6.1025690531606924e-24, -1.822866225431463e-40),
    FF(-4.0099912111372825e-23, -2.3458763721787388e-39),
    FF(2.1934619072682733e-25, 6.169746949134747e-44),
    FF(4.6521630633158474e-26, 2.8040938057909933e-42)
    );
    
#=
  cos(x) for x in [-pi/4,pi.4]
=#

cosx_horner(x) = @horner(x,
  FF(1.0, 0.0),
  FF(-5.233854291182942e-47, -3.0361342107756714e-63),
  FF(-0.5, 0.0),
  FF(8.792117503430378e-45, 3.700418448838669e-61),
  FF(0.041666666666666664, 2.3129646346357407e-18),
  FF(-4.34445684891333e-43, -2.184339845895673e-59),
  FF(-0.001388888888888889, 5.3005439543858133e-20),
  FF(9.851431711861256e-42, 2.9290723071852803e-58),
  FF(2.48015873015873e-5, 2.151194498782557e-23),
  FF(-1.2338456805309185e-40, -1.162086126776716e-57),
  FF(-2.755731922398589e-7, -2.376767815453341e-23),
  FF(9.38758642073979e-40, 5.757999936447788e-56),
  FF(2.08767569878681e-9, -1.210168577323589e-25),
  FF(-4.5622126449234886e-39, -3.1632601897705675e-55),
  FF(-1.1470745597729723e-11, -3.9733212762881254e-28),
  FF(1.4459575527778355e-38, 1.0222293329507218e-54),
  FF(4.779477332386902e-14, -2.2388385179456775e-30),
  FF(-2.9737113773188777e-38, 2.5736605238529682e-54),
  FF(-1.5619206967471863e-16, -5.528211177505447e-33),
  FF(3.822868056170149e-38, -9.408049283773147e-55),
  FF(4.1103174513598287e-19, -1.5516533398149497e-35),
  FF(-2.7895796653150813e-38, -1.5515126098022804e-54),
  FF(-8.896621187248673e-22, -6.287473964089387e-39),
  FF(8.815638085111216e-39, 1.2010706670544347e-55),
  FF(1.6019637470753259e-24, -2.124477509918859e-41)
  );
