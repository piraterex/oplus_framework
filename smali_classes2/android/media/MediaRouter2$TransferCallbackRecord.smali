.class final Landroid/media/MediaRouter2$TransferCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "transferCallback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 1880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput-object p2, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    .line 1882
    iput-object p1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1883
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1887
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1888
    return v0

    .line 1890
    :cond_0
    instance-of v1, p1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1891
    return v2

    .line 1893
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1898
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
