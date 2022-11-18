.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mDisplayInfo:Landroid/view/DisplayInfo;

.field public volatile blacklist mEventsMask:J

.field public final greylist-max-o mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Looper;J)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "eventsMask"    # J

    .line 1024
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1020
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1025
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1026
    iput-wide p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1027
    return-void
.end method


# virtual methods
.method public greylist-max-o clearEvents()V
    .locals 1

    .line 1035
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1036
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1044
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_0

    .line 1065
    :pswitch_1
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_0

    .line 1051
    :pswitch_2
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayInfo;

    .line 1053
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1055
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    .line 1057
    .end local v0    # "newInfo":Landroid/view/DisplayInfo;
    :cond_0
    goto :goto_0

    .line 1046
    :pswitch_3
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    .line 1070
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendDisplayEvent(IILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;

    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1032
    return-void
.end method

.method public blacklist setEventsMask(J)V
    .locals 0
    .param p1, "newEventsMask"    # J

    .line 1039
    iput-wide p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1040
    return-void
.end method
