.class Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .locals 0
    .param p1, "localConfigurationCallback"    # Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 912
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    .line 913
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 914
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 939
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 940
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onIntConfigChanged$0$android-telephony-ims-ProvisioningManager$Callback$CallbackBinder(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 921
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningIntChanged(II)V

    return-void
.end method

.method synthetic blacklist lambda$onStringConfigChanged$1$android-telephony-ims-ProvisioningManager$Callback$CallbackBinder(ILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 932
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningStringChanged(ILjava/lang/String;)V

    return-void
.end method

.method public final blacklist onIntConfigChanged(II)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 920
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 924
    nop

    .line 925
    return-void

    .line 923
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 924
    throw v2
.end method

.method public final blacklist onStringConfigChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 935
    nop

    .line 936
    return-void

    .line 934
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 935
    throw v2
.end method
