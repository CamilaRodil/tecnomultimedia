void circulos(){
 println(cant);
  if (cant==15) {
    cant=1;
  }
  if (cant==0) {
    cant=14;
  }
  for (int j=0; j<14; j++) {
    switch(j-(cant%14)) {
    case 0:
    fill(44,92,87);
    break;
    case 1:
    fill(39,60,86);
    break;
    case 2:
    fill(41,32,96);
    break;
    case 3:
    fill(52,40,76);
    break;
    case 4:
    fill(66,36,48);
    break;
    case 5:
    fill(98,25,28);
    break;
    case 6:
    fill(148,24,3);
    break;
    case 7:
    fill(174,29,1);
    break;
    case 8:
    fill(202,79,3);
    break;
    case 9:
    fill(215,155,1);
    break;
    case 10:
    fill(225,208,5);
    break;
    case 11:
    fill(132,181,1);
    break;
    case 12:
    fill(72,139,59);
    break;
    case 13:
    fill(52,106,91);
    break;
    }
    
    circle(600,200,395-j*28.1);
    noFill();
    }
  }
