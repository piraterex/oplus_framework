.class public abstract Lcom/oplus/content/OplusBaseFeatureConfigManager;
.super Ljava/lang/Object;
.source "OplusBaseFeatureConfigManager.java"

# interfaces
.implements Lcom/oplus/content/IOplusFeatureConfigManager;


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field protected blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "remote"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oplus/content/OplusBaseFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    .line 38
    iput-object p2, p0, Lcom/oplus/content/OplusBaseFeatureConfigManager;->mName:Ljava/lang/String;

    .line 39
    if-nez p1, :cond_0

    .line 40
    const-class v0, Lcom/oplus/content/OplusBaseFeatureConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v2, "remote not published yet!!!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oplus/content/OplusBaseFeatureConfigManager;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 34
    return-void
.end method
