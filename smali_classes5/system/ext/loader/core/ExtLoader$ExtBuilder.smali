.class public Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
.super Ljava/lang/Object;
.source "ExtLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsystem/ext/loader/core/ExtLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mBase:Ljava/lang/Object;

.field private blacklist mDebugCreate:Z

.field private blacklist mDebugDummy:Z

.field private blacklist mExtClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mHasDummyExt:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 53
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    .line 50
    invoke-static {}, Lsystem/ext/loader/core/ExtLoader;->-$$Nest$sfgetDEFAULT_DEBUG_DUMMY()Z

    move-result v0

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugDummy:Z

    .line 51
    invoke-static {}, Lsystem/ext/loader/core/ExtLoader;->-$$Nest$sfgetDEFAULT_DEBUG_CREATE()Z

    move-result v0

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugCreate:Z

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsystem/ext/loader/core/ExtLoader$ExtBuilder-IA;)V
    .locals 0

    invoke-direct {p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;-><init>()V

    return-void
.end method

.method private blacklist log(ZLjava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "debug"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    .local p2, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    iput-object p1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public blacklist create()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    iget-object v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtRegistry;->getExt(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtCreator;

    move-result-object v0

    .line 98
    .local v0, "extCreator":Lsystem/ext/loader/core/ExtCreator;, "Lsystem/ext/loader/core/ExtCreator<TT;>;"
    if-eqz v0, :cond_0

    .line 99
    iget-boolean v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugCreate:Z

    iget-object v2, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    const-string v3, "createExtWith"

    invoke-direct {p0, v1, v2, v3}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->log(ZLjava/lang/Class;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mBase:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lsystem/ext/loader/core/ExtCreator;->createExtWith(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    invoke-static {}, Lsystem/ext/loader/core/ExtRegistry;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 104
    :try_start_0
    const-string v1, "com.android.internal.os.RuntimeInitExtImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "preload"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 106
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ExtLoader"

    const-string v5, "invoke RuntimeInitExtImpl fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lsystem/ext/loader/core/ExtRegistry;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 114
    :cond_1
    iget-boolean v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    if-eqz v1, :cond_2

    .line 115
    iget-boolean v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugDummy:Z

    iget-object v2, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    const-string v3, "createDummyExt"

    invoke-direct {p0, v1, v2, v3}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->log(ZLjava/lang/Class;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    iget-boolean v2, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugDummy:Z

    invoke-static {v1, v2}, Lsystem/ext/loader/core/ExtDummy;->createDummyExt(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 118
    :cond_2
    iget-object v1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    const-string v4, "create null"

    invoke-direct {p0, v3, v1, v4}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->log(ZLjava/lang/Class;Ljava/lang/String;)V

    .line 119
    return-object v2
.end method

.method public blacklist disableDebugCreate()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugCreate:Z

    .line 73
    return-object p0
.end method

.method public blacklist disableDebugDummy()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugDummy:Z

    .line 83
    return-object p0
.end method

.method public blacklist disableDummyExt()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    .line 93
    return-object p0
.end method

.method public blacklist enableDebugCreate()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugCreate:Z

    .line 68
    return-object p0
.end method

.method public blacklist enableDebugDummy()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mDebugDummy:Z

    .line 78
    return-object p0
.end method

.method public blacklist enableDummyExt()Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mHasDummyExt:Z

    .line 88
    return-object p0
.end method

.method public blacklist type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lsystem/ext/loader/core/ExtLoader$ExtBuilder;, "Lsystem/ext/loader/core/ExtLoader$ExtBuilder<TT;>;"
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->mExtClass:Ljava/lang/Class;

    .line 58
    return-object p0
.end method
