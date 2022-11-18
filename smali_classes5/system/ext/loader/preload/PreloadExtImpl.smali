.class public abstract Lsystem/ext/loader/preload/PreloadExtImpl;
.super Ljava/lang/Object;
.source "PreloadExtImpl.java"

# interfaces
.implements Lsystem/ext/loader/preload/IPreloadExt;


# instance fields
.field private final blacklist mClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mClasses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist preload(Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 25
    iget-object v0, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mClasses:Ljava/util/List;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 34
    iget-object v3, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success preloading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error preloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    instance-of v3, v1, Ljava/lang/Error;

    if-nez v3, :cond_1

    .line 43
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v1

    check-cast v3, Ljava/lang/RuntimeException;

    .end local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v3

    .line 46
    .restart local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v3

    .line 42
    .restart local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/Error;

    .end local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v3

    .line 37
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lsystem/ext/loader/preload/PreloadExtImpl;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v3

    .line 38
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    iget-object v4, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    nop

    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1

    .line 35
    :catch_1
    move-exception v3

    .line 36
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found for preloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    nop

    .line 49
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    goto/16 :goto_0

    .line 50
    :cond_2
    monitor-exit v0

    .line 51
    return-void

    .line 50
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected blacklist register(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 14
    if-nez p1, :cond_0

    .line 15
    iget-object v0, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mTag:Ljava/lang/String;

    const-string v1, "register className is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mClasses:Ljava/util/List;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lsystem/ext/loader/preload/PreloadExtImpl;->mClasses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
