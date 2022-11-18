.class public Landroid/common/CustomizeFrameworkFactory;
.super Ljava/lang/Object;
.source "CustomizeFrameworkFactory.java"

# interfaces
.implements Landroid/common/IOplusCommonFactory;


# static fields
.field private static final blacklist CLASSNAME1:Ljava/lang/String; = "oplus.android.CustomizeFrameworkFactoryImpl1"

.field private static final blacklist CLASSNAME2:Ljava/lang/String; = "oplus.android.CustomizeFrameworkFactoryImpl2"

.field private static final blacklist CLASSNAME3:Ljava/lang/String; = "oplus.android.CustomizeFrameworkFactoryImpl3"

.field private static final blacklist TAG:Ljava/lang/String; = "CustomizeFrameworkFactory"

.field private static volatile blacklist sInstance:Landroid/common/CustomizeFrameworkFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/common/CustomizeFrameworkFactory;
    .locals 5

    .line 36
    sget-object v0, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    if-nez v0, :cond_3

    .line 37
    const-class v0, Landroid/common/CustomizeFrameworkFactory;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    if-nez v1, :cond_0

    .line 40
    const-string/jumbo v1, "oplus.android.CustomizeFrameworkFactoryImpl1"

    invoke-static {v1}, Landroid/common/CustomizeFrameworkFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/CustomizeFrameworkFactory;

    sput-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    .line 42
    :cond_0
    sget-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    if-nez v1, :cond_1

    .line 43
    const-string/jumbo v1, "oplus.android.CustomizeFrameworkFactoryImpl2"

    invoke-static {v1}, Landroid/common/CustomizeFrameworkFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/CustomizeFrameworkFactory;

    sput-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    .line 45
    :cond_1
    sget-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    if-nez v1, :cond_2

    .line 46
    const-string/jumbo v1, "oplus.android.CustomizeFrameworkFactoryImpl3"

    invoke-static {v1}, Landroid/common/CustomizeFrameworkFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/CustomizeFrameworkFactory;

    sput-object v1, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_2
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CustomizeFrameworkFactory"

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

    .line 50
    new-instance v2, Landroid/common/CustomizeFrameworkFactory;

    invoke-direct {v2}, Landroid/common/CustomizeFrameworkFactory;-><init>()V

    sput-object v2, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 54
    :cond_3
    :goto_2
    sget-object v0, Landroid/common/CustomizeFrameworkFactory;->sInstance:Landroid/common/CustomizeFrameworkFactory;

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

    .line 68
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 70
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist isValid(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 59
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->EndCustomizeFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->StartCustomizeFrameworkFactory:Landroid/common/OplusFeatureList$OplusIndex;

    .line 60
    invoke-virtual {v0}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, "validCustomize":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomizeFrameworkFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0
.end method
