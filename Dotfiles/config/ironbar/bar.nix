{...}: {
programs.ironbar = {
  enable = true;

  config = {
   # move to top of screen
   position = "top";
   # adjust height
   height = 30;
   # anchor it to top:
   anchor_to_edges = true;

   # margins
   margin.top = 6;
   margin.bottom = 0;
   margin.left = 10;
   margin.right = 10;

   # left modules
   start = [
     {
         type = "workspaces";
         name_map = {
            "1" = "◉";
            "2" = "◉";
            "3" = "◉";
            "4" = "◉";
            "5" = "◉";
            "6" = "◉";
            "7" = "◉";
            "8" = "◉";
            "9" = "◉";
            "10" = "◉";
         };
         all_monitors = false;
     } 
   ];

   
   # center modules
   center = [
      {
          type = "clock";
          format = "%d/%m/%Y %H:%M";
      }
   ];

   # right modules
   end = [
      {
          type = "tray";
      }
   ];

   
  };
 };
}
