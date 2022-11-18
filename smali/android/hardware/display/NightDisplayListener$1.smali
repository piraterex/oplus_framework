.class Landroid/hardware/display/NightDisplayListener$1;
.super Landroid/database/ContentObserver;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/display/NightDisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 63
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 64
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "setting":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "night_display_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 82
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v2

    .line 82
    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onColorTemperatureChanged(I)V

    goto :goto_2

    .line 78
    :pswitch_1
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 78
    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 80
    goto :goto_2

    .line 74
    :pswitch_2
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 76
    goto :goto_2

    .line 71
    :pswitch_3
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onAutoModeChanged(I)V

    .line 72
    goto :goto_2

    .line 68
    :pswitch_4
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onActivated(Z)V

    .line 87
    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_4
        -0x6900ebe5 -> :sswitch_3
        -0x39c8c50c -> :sswitch_2
        0x2fb0ca2d -> :sswitch_1
        0x5e128274 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
