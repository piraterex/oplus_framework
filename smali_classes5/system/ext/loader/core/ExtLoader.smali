.class public Lsystem/ext/loader/core/ExtLoader;
.super Ljava/lang/Object;
.source "ExtLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_DEBUG_CREATE:Z

.field private static final blacklist DEFAULT_DEBUG_DUMMY:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ExtLoader"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_DEBUG_CREATE()Z
    .locals 1

    sget-boolean v0, Lsystem/ext/loader/core/ExtLoader;->DEFAULT_DEBUG_CREATE:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_DEBUG_DUMMY()Z
    .locals 1

    sget-boolean v0, Lsystem/ext/loader/core/ExtLoader;->DEFAULT_DEBUG_DUMMY:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lsystem/ext/loader/core/ExtLoader;->DEFAULT_DEBUG_DUMMY:Z

    .line 30
    sput-boolean v0, Lsystem/ext/loader/core/ExtLoader;->DEFAULT_DEBUG_CREATE:Z

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEFAULT_DEBUG_DUMMY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DEFAULT_DEBUG_CREATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist load(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    .local p0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsystem/ext/loader/core/ExtLoader;->load(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist load(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 39
    .local p0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lsystem/ext/loader/core/ExtDummy;->createDummyExt(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 43
    .local p0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;-><init>(Lsystem/ext/loader/core/ExtLoader$ExtBuilder-IA;)V

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    return-object v0
.end method
