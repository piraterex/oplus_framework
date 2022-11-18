.class public Lcom/android/internal/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# instance fields
.field private final blacklist mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/LocalLog;->mMaxLines:I

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "header"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 53
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 55
    :cond_0
    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 59
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_2
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 65
    :cond_3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 72
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v2

    .line 73
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    const-wide v4, 0x20900000001L

    iget-object v6, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "i":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public blacklist w(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
