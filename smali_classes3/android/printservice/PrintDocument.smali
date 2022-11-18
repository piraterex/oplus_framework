.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final greylist-max-o mInfo:Landroid/print/PrintDocumentInfo;

.field private final greylist-max-o mPrintJobId:Landroid/print/PrintJobId;

.field private final greylist-max-o mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor greylist-max-o <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "printServiceClient"    # Landroid/printservice/IPrintServiceClient;
    .param p3, "info"    # Landroid/print/PrintDocumentInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    .line 50
    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 51
    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist getData()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 75
    const-string v0, "Error calling getting print job data!"

    const-string v1, "PrintDocument"

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 79
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 80
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object v2, v5

    .line 81
    const/4 v5, 0x1

    aget-object v5, v4, v5

    move-object v3, v5

    .line 82
    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    nop

    .line 89
    if-eqz v3, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 83
    :cond_0
    :goto_0
    return-object v2

    .line 89
    .end local v4    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 86
    :catch_1
    move-exception v4

    .line 87
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    nop

    .end local v4    # "re":Landroid/os/RemoteException;
    if-eqz v3, :cond_1

    .line 91
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :goto_1
    goto :goto_2

    .line 92
    :catch_2
    move-exception v0

    goto :goto_1

    .line 84
    :catch_3
    move-exception v4

    .line 85
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    nop

    .end local v4    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 91
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 97
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 89
    :goto_3
    if-eqz v3, :cond_2

    .line 91
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 94
    goto :goto_4

    .line 92
    :catch_4
    move-exception v1

    .line 96
    :cond_2
    :goto_4
    throw v0
.end method

.method public whitelist getInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    .line 60
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 61
    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
