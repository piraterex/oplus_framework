.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$VideoQualityFeatureValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$FeatureConstants;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_CONFIG_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_CONFIG_CHANGED"

.field public static final blacklist ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field public static final blacklist EXTRA_CHANGED_ITEM:Ljava/lang/String; = "item"

.field public static final blacklist EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field private static final blacklist TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private blacklist DBG:Z

.field private final blacklist miConfig:Landroid/telephony/ims/aidl/IImsConfig;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IImsConfig;)V
    .locals 1
    .param p1, "iconfig"    # Landroid/telephony/ims/aidl/IImsConfig;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 797
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 798
    return-void
.end method

.method private blacklist getThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .line 978
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 979
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 981
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/ProvisioningManager$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 936
    invoke-direct {p0}, Lcom/android/ims/ImsConfig;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ProvisioningManager$Callback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 937
    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 938
    return-void
.end method

.method public blacklist addConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 948
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConfigCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfig"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    nop

    .line 955
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "addConfigCallback()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getConfigInt(I)I
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigInt(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 821
    nop

    .line 822
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInt(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfig"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return v0

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getInt()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist getConfigString(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 843
    const-string v0, "Unknown"

    .line 845
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 849
    nop

    .line 850
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigString(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfig"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    return-object v0

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getConfigString()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist isBinderAlive()Z
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 961
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeConfigCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfig"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    nop

    .line 968
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string/jumbo v3, "removeConfigCallback()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setConfig(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 879
    const/4 v0, -0x1

    .line 880
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    const-string/jumbo v2, "setConfig(): item = "

    const-string v3, "ImsConfig"

    if-eqz v1, :cond_0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigInt(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 889
    nop

    .line 890
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_1

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    return v0

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string/jumbo v4, "setConfig()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setConfig(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 909
    const/4 v0, -0x1

    .line 910
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    const-string/jumbo v2, "setConfig(): item = "

    const-string v3, "ImsConfig"

    if-eqz v1, :cond_0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigString(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 919
    nop

    .line 920
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_1

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    return v0

    .line 916
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string/jumbo v4, "setConfig()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 866
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result v0

    return v0
.end method
