.class public Lsystem/ext/loader/core/ExtRegistry;
.super Ljava/lang/Object;
.source "ExtRegistry.java"


# static fields
.field private static final blacklist EXT_CREATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lsystem/ext/loader/core/ExtCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsystem/ext/loader/core/ExtRegistry;->EXT_CREATORS:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getExt(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lsystem/ext/loader/core/ExtCreator<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lsystem/ext/loader/core/ExtRegistry;->EXT_CREATORS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsystem/ext/loader/core/ExtCreator;

    return-object v0
.end method

.method public static blacklist registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lsystem/ext/loader/core/ExtCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "extFetcher":Lsystem/ext/loader/core/ExtCreator;, "Lsystem/ext/loader/core/ExtCreator<TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    sget-object v0, Lsystem/ext/loader/core/ExtRegistry;->EXT_CREATORS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public static blacklist size()I
    .locals 1

    .line 42
    sget-object v0, Lsystem/ext/loader/core/ExtRegistry;->EXT_CREATORS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
