.class final Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintFileDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCancellationSignal:Landroid/os/CancellationSignal;

.field private final greylist-max-o mDestination:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic blacklist this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 105
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    .line 107
    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 108
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 109
    new-instance v0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    invoke-direct {v0, p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;Landroid/print/PrintFileDocumentAdapter;)V

    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 119
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v2}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmFile(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 121
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_2
    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v1, v2, v3, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 119
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .end local p1    # "params":[Ljava/lang/Void;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .end local p1    # "params":[Ljava/lang/Void;
    :goto_1
    throw v2
    :try_end_8
    .catch Landroid/os/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 124
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PrintedFileDocAdapter"

    const-string v3, "Error writing data!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v3}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmContext(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10409da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 128
    :goto_2
    nop

    .line 129
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic whitelist onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected greylist-max-o onCancelled(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 139
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmContext(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10409d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected greylist-max-o onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .line 134
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    .line 135
    return-void
.end method
