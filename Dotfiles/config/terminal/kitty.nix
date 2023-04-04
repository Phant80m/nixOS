{...}: {
programs.kitty = {
  enable = true; 

  settings = {
    background_opacity = "0.6";
    font_family = "fire-code";
    font_size = 16;
    disable_ligatures = "never";
    cursor_shape = "underline";
    cursor_blink_interval = "0.5";
    cursor_stop_blinking_after = "15.0";
    scrollback_lines = 10000;
    click_interval = "0.5";
    select_by_word_characters = ":@-./_~?&=%+#";
    remember_window_size = false;
    allow_remote_control = true;
    initial_window_width = 640;
    initial_window_height = 400;
    repaint_delay = 15;
    input_delay = 3;
    visual_bell_duration = "0.0";
    url_style = "double";
    open_url_with = "default";
    confirm_os_window_close = 0;
    enable_audio_bell = false;
    window_padding_width = 15;
    window_margin_width = 10;

    background = "#0d0f18";
    foreground = "#a5b6cf";

    # Black
    color0 = "#151720";
    color8 = "#1c1e27";

    # Red
    color1 = "#dd6777";
    color9 = "#e26c7c";

    # Green
    color2 = "#90ceaa";
    color10 = "#95d3af";

    # Yellow
    color3 = "#ecd3a0";
    color11 = "#f1d8a5";

    # Blue  
    color4 = "#86aaec";
    color12 = "#8baff1";

    # Magenta
    color5 = "#c296eb";
    color13 = "#c79bf0";

    # Cyan
    color6 = "#93cee9";
    color14 = "#98d3ee";

    # White
    color7 = "#cbced3";
    color15 = "#d0d3d8";

    # Cursor
    cursor = "#cbced3";
    cursor_text_color = "#a5b6cf";

    # Selection highlight
    selection_foreground = "#a5b6cf";
    selection_background = "#1c1e27";
  };
};

}
