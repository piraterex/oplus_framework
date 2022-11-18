.class public Landroid/common/OplusFeatureManager;
.super Ljava/lang/Object;
.source "OplusFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/common/OplusFeatureManager$DynamicProxy;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusFeatureManager"

.field private static final blacklist mFeatureDisable:[Z

.field private static final blacklist mFeatureTraing:[Z

.field private static final blacklist sFeatureSwitchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sFeatureTraceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Landroid/common/OplusFeatureManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Landroid/common/OplusFeatureManager;->sInstance:Landroid/common/OplusFeatureManager;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/common/OplusFeatureManager;->sFeatureSwitchMap:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/common/OplusFeatureManager;->sFeatureTraceMap:Ljava/util/HashMap;

    .line 15
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->End:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Landroid/common/OplusFeatureManager;->mFeatureDisable:[Z

    .line 16
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->End:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Landroid/common/OplusFeatureManager;->mFeatureTraing:[Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getIndex(Landroid/common/IOplusCommonFeature;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)I"
        }
    .end annotation

    .line 101
    .local p0, "service":Landroid/common/IOplusCommonFeature;, "TT;"
    if-eqz p0, :cond_1

    .line 104
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    .line 105
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureManager;->mFeatureDisable:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 108
    return v0

    .line 106
    :cond_0
    new-instance v2, Ljava/lang/IllegalAccessError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v0    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dummy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 71
    .local p0, "real":Landroid/common/IOplusCommonFeature;, "TT;"
    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v0

    .line 75
    .local v0, "index":Landroid/common/OplusFeatureList$OplusIndex;
    invoke-static {p0}, Landroid/common/OplusFeatureManager;->isTracing(Landroid/common/IOplusCommonFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Landroid/common/OplusFeatureManager$DynamicProxy;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/common/OplusFeatureManager$DynamicProxy;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    .line 78
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v3

    invoke-static {v4, v5, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/common/IOplusCommonFeature;

    .line 79
    .local v3, "proxy":Landroid/common/IOplusCommonFeature;, "TT;"
    return-object v3

    .line 81
    .end local v1    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v3    # "proxy":Landroid/common/IOplusCommonFeature;, "TT;"
    :cond_0
    return-object p0

    .line 72
    .end local v0    # "index":Landroid/common/OplusFeatureList$OplusIndex;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static whitelist isSupport(Landroid/common/IOplusCommonFeature;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)Z"
        }
    .end annotation

    .line 34
    .local p0, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-static {p0}, Landroid/common/OplusFeatureManager;->getIndex(Landroid/common/IOplusCommonFeature;)I

    move-result v0

    .line 35
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureManager;->mFeatureDisable:[Z

    aget-boolean v2, v1, v0

    .line 36
    .local v2, "disable":Z
    if-eqz v2, :cond_0

    .line 37
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v3

    monitor-enter v3

    .line 38
    :try_start_0
    aget-boolean v1, v1, v0

    move v2, v1

    .line 39
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static whitelist isSupport(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/common/OplusFeatureManager;->sFeatureSwitchMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    const/4 v1, 0x1

    :try_start_0
    monitor-exit v0

    return v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist isTracing(Landroid/common/IOplusCommonFeature;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;)Z"
        }
    .end annotation

    .line 45
    .local p0, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-static {p0}, Landroid/common/OplusFeatureManager;->getIndex(Landroid/common/IOplusCommonFeature;)I

    move-result v0

    .line 46
    .local v0, "index":I
    sget-object v1, Landroid/common/OplusFeatureManager;->mFeatureTraing:[Z

    aget-boolean v2, v1, v0

    .line 47
    .local v2, "enable":Z
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {p0}, Landroid/common/IOplusCommonFeature;->getDefault()Landroid/common/IOplusCommonFeature;

    move-result-object v3

    monitor-enter v3

    .line 49
    :try_start_0
    aget-boolean v1, v1, v0

    move v2, v1

    .line 50
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_0
    :goto_0
    return v2
.end method

.method public static whitelist isTracing(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/common/OplusFeatureManager;->sFeatureTraceMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist getInstance()Landroid/common/OplusFeatureManager;
    .locals 2

    .line 19
    sget-object v0, Landroid/common/OplusFeatureManager;->sInstance:Landroid/common/OplusFeatureManager;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Landroid/common/OplusFeatureManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Landroid/common/OplusFeatureManager;->sInstance:Landroid/common/OplusFeatureManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Landroid/common/OplusFeatureManager;

    invoke-direct {v1}, Landroid/common/OplusFeatureManager;-><init>()V

    sput-object v1, Landroid/common/OplusFeatureManager;->sInstance:Landroid/common/OplusFeatureManager;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Landroid/common/OplusFeatureManager;->sInstance:Landroid/common/OplusFeatureManager;

    return-object v0
.end method
