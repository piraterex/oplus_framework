.class Landroid/hardware/hdmi/HdmiControlManager$3;
.super Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiControlManager;

    .line 1848
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onHdmiCecVolumeControlFeature$0(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;
    .param p1, "enabled"    # I

    .line 1853
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V

    return-void
.end method


# virtual methods
.method public blacklist onHdmiCecVolumeControlFeature(I)V
    .locals 5
    .param p1, "enabled"    # I

    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1853
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    new-instance v4, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1855
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    throw v2
.end method
