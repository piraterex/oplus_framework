.class public Landroid/service/media/MediaBrowserService$Result;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
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
.field private greylist-max-o mDebug:Ljava/lang/Object;

.field private greylist-max-o mDetachCalled:Z

.field private greylist mFlags:I

.field private greylist-max-o mSendResultCalled:Z

.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 169
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$Result;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist detach()V
    .locals 3

    .line 189
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    if-nez v0, :cond_1

    .line 193
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    .line 198
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach() called when sendResult() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach() called when detach() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o isDone()Z
    .locals 1

    .line 201
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method greylist-max-o onResultSent(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public whitelist sendResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    .line 181
    iget v0, p0, Landroid/service/media/MediaBrowserService$Result;->mFlags:I

    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService$Result;->onResultSent(Ljava/lang/Object;I)V

    .line 182
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult() called twice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 205
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iput p1, p0, Landroid/service/media/MediaBrowserService$Result;->mFlags:I

    .line 206
    return-void
.end method
