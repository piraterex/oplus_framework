.class public Lcom/oplus/utils/Alog;
.super Ljava/lang/Object;
.source "Alog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utils/Alog$Logger;
    }
.end annotation


# static fields
.field private static final blacklist FOREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/utils/Alog$Logger;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SOULS:Lcom/oplus/utils/Alog$Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/utils/Alog;->FOREST:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/oplus/utils/Alog$1;

    invoke-direct {v0}, Lcom/oplus/utils/Alog$1;-><init>()V

    sput-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/List;
    .locals 1

    .line 8
    sget-object v0, Lcom/oplus/utils/Alog;->FOREST:Ljava/util/List;

    return-object v0
.end method

.method public static blacklist addLogger(Lcom/oplus/utils/Alog$Logger;)V
    .locals 2
    .param p0, "logger"    # Lcom/oplus/utils/Alog$Logger;

    .line 86
    sget-object v0, Lcom/oplus/utils/Alog;->FOREST:Ljava/util/List;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist clearLogger()V
    .locals 2

    .line 92
    sget-object v0, Lcom/oplus/utils/Alog;->FOREST:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0}, Lcom/oplus/utils/Alog$Logger;->d(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 74
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/Alog$Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0}, Lcom/oplus/utils/Alog$Logger;->e(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 82
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/Alog$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0}, Lcom/oplus/utils/Alog$Logger;->i(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 66
    sget-object v0, Lcom/oplus/utils/Alog;->SOULS:Lcom/oplus/utils/Alog$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/Alog$Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static blacklist tag(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/oplus/utils/Alog;->FOREST:Ljava/util/List;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/utils/Alog$Logger;

    .line 100
    .local v2, "logger":Lcom/oplus/utils/Alog$Logger;
    iget-object v3, v2, Lcom/oplus/utils/Alog$Logger;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 101
    .end local v2    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 102
    :cond_0
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
