.class public Landroid/common/OplusFrameworkFactory;
.super Ljava/lang/Object;
.source "OplusFrameworkFactory.java"

# interfaces
.implements Landroid/common/IOplusCommonFactory;


# static fields
.field public static final whitelist OPLUS_FRAMEWORK_FACTORY_IMPL_NAME:Ljava/lang/String; = "oplus.android.OplusFrameworkFactoryImpl"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusFrameworkFactory"

.field private static volatile blacklist sInstance:Landroid/common/OplusFrameworkFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/common/OplusFrameworkFactory;
    .locals 5

    .line 34
    sget-object v0, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Landroid/common/OplusFrameworkFactory;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 38
    :try_start_1
    const-string/jumbo v1, "oplus.android.OplusFrameworkFactoryImpl"

    invoke-static {v1}, Landroid/common/OplusFrameworkFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/OplusFrameworkFactory;

    sput-object v1, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OplusFrameworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Reflect exception getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Landroid/common/OplusFrameworkFactory;

    invoke-direct {v2}, Landroid/common/OplusFrameworkFactory;-><init>()V

    sput-object v2, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_1
    sget-object v0, Landroid/common/OplusFrameworkFactory;->sInstance:Landroid/common/OplusFrameworkFactory;

    return-object v0
.end method

.method static blacklist newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 65
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist isValid(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 51
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->EndOplusFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->StartOplusFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    .line 52
    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 53
    .local v0, "validOplus":Z
    :goto_0
    sget-object v3, Landroid/common/OplusFeatureList$OplusIndex;->EndOplusOsFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v3}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v3

    if-ge p1, v3, :cond_1

    sget-object v3, Landroid/common/OplusFeatureList$OplusIndex;->StartOplusOsFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    .line 54
    invoke-virtual {v3}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v3

    if-le p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 56
    .local v3, "vaildOplusOs":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 57
    .local v1, "valid":Z
    :cond_3
    :goto_2
    return v1
.end method
