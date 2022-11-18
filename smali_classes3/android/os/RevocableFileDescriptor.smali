.class public Landroid/os/RevocableFileDescriptor;
.super Ljava/lang/Object;
.source "RevocableFileDescriptor.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = true

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RevocableFileDescriptor"


# instance fields
.field private final greylist-max-o mCallback:Landroid/os/ProxyFileDescriptorCallback;

.field private greylist-max-o mInner:Ljava/io/FileDescriptor;

.field private blacklist mOnCloseListener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

.field private greylist-max-o mOuter:Landroid/os/ParcelFileDescriptor;

.field private volatile greylist-max-o mRevoked:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .locals 0

    iget-object p0, p0, Landroid/os/RevocableFileDescriptor;->mOnCloseListener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRevoked(Landroid/os/RevocableFileDescriptor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRevoked(Landroid/os/RevocableFileDescriptor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 55
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 62
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v1, v2

    const/16 v2, 0x1c0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 74
    return-void
.end method


# virtual methods
.method public blacklist addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0
    .param p1, "onCloseListener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;

    .line 107
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor;->mOnCloseListener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    .line 108
    return-void
.end method

.method public greylist-max-o getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iput-object p2, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    .line 79
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 80
    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2, v1}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    .line 81
    return-void
.end method

.method public greylist-max-o isRevoked()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return v0
.end method

.method public greylist-max-o revoke()V
    .locals 1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    .line 99
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 100
    return-void
.end method
