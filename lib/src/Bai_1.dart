void main() {
  bool isWhite( String coord ) {
    int hoz = coord.codeUnitAt(0);
    int ver = coord.codeUnitAt(1);
    if(( hoz % 2 == 0 && ver % 2 == 0) || (hoz % 2 == 1 && ver % 2 == 1 )) {
      return false;
    }
    else { return true; }
  }
 print( isWhite( 'a7' ) );
}
