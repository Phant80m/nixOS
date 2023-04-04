{inputs, pkgs, ...}: {
programs.waybar = {
  enable = true; 
  package = inputs.hyprland.packages.${pkgs.system}.waybar-hyprland;
  settings = {
    mainBar = {
      height = 30;
      layer = "top";
      position = "top";

      # margins 
      margin-top = 6;
      margin-bottom = 0;
      margin-left = 10;
      margin-right = 10;

      # spacing
      spacing = 5;

      # module location:
      modules-left = [
        "wlr/workspaces"
      ];
      modules-center = [
        "clock"
      ];
      modules-right = [
        "tray"
        "pulseaudio"
        "battery"
      ];

      "wlr/workspaces" = {
        format = "{icon}";
        on-click = "activate";
        active-only = false;
        format-icons = {
          "1" = "";
          "2" = "";
          "3" = "";
          "4" = "";
          "5" = "";
          "urgent" = "";
          "active" = "";
          "default" = "";
        };
      
      };
      
      
    };
  
  
  
  };
};
}
