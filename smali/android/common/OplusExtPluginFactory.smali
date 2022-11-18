.class public Landroid/common/OplusExtPluginFactory;
.super Ljava/lang/Object;
.source "OplusExtPluginFactory.java"

# interfaces
.implements Landroid/common/IOplusCommonFactory;


# static fields
.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist constructor:Lcom/oplus/reflect/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefConstructor<",
            "Landroid/common/OplusExtPluginFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sInstance:Landroid/common/OplusExtPluginFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 8
    const/4 v0, 0x0

    sput-object v0, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;

    .line 10
    const-class v0, Landroid/common/OplusExtPluginFactory;

    const-string/jumbo v1, "oplus.android.OplusExtPluginFactoryImp"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/common/OplusExtPluginFactory;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Landroid/common/OplusExtPluginFactory;
    .locals 2

    const-class v0, Landroid/common/OplusExtPluginFactory;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;

    if-nez v1, :cond_0

    sget-object v1, Landroid/common/OplusExtPluginFactory;->constructor:Lcom/oplus/reflect/RefConstructor;

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/OplusExtPluginFactory;

    sput-object v1, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;

    .line 18
    sget-object v1, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroid/common/OplusExtPluginFactory;

    invoke-direct {v1}, Landroid/common/OplusExtPluginFactory;-><init>()V

    sput-object v1, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;

    .line 22
    :cond_0
    sget-object v1, Landroid/common/OplusExtPluginFactory;->sInstance:Landroid/common/OplusExtPluginFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist isValid(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 28
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->EndAOSPExtensionPluginFactory:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->StartAOSPExtensionPluginFactory:Landroid/common/OplusFeatureList$OplusIndex;

    .line 29
    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, "validExt":Z
    :goto_0
    return v0
.end method
