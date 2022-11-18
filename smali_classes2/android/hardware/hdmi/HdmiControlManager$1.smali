.class Landroid/hardware/hdmi/HdmiControlManager$1;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiControlManager;

    .line 1675
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReceived$0(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 0
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 1680
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method


# virtual methods
.method public blacklist onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 1678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1680
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    new-instance v4, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1683
    nop

    .line 1684
    return-void

    .line 1682
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1683
    throw v2
.end method
