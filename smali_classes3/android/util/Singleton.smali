.class public abstract Landroid/util/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 31
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final greylist get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/util/Singleton;, "Landroid/util/Singleton<TT;>;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/util/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
