.class final Landroid/content/AsyncTaskLoader$LoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist this$0:Landroid/content/AsyncTaskLoader;

.field greylist-max-o waiting:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/AsyncTaskLoader;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/AsyncTaskLoader;

    .line 62
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    iput-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v0, "data":Ljava/lang/Object;, "TD;"
    return-object v0

    .line 77
    .end local v0    # "data":Ljava/lang/Object;, "TD;"
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Landroid/os/OperationCanceledException;
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 85
    :cond_0
    throw v0
.end method

.method protected whitelist onCancelled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    throw v0
.end method

.method protected whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    throw v0
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 118
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 119
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 120
    return-void
.end method

.method public greylist-max-o waitForLoader()V
    .locals 1

    .line 125
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 129
    :goto_0
    return-void
.end method
