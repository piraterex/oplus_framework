.class Landroid/hardware/hdmi/HdmiPlaybackClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiPlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field final synthetic blacklist val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 125
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->this$0:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .locals 1
    .param p1, "result"    # I

    .line 128
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;->onComplete(I)V

    .line 129
    return-void
.end method
