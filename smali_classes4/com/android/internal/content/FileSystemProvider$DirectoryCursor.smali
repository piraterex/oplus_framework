.class Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;
.super Landroid/database/MatrixCursor;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryCursor"
.end annotation


# instance fields
.field private final blacklist mFile:Ljava/io/File;

.field final synthetic blacklist this$0:Lcom/android/internal/content/FileSystemProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "docId"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;

    .line 765
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    .line 766
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1, p3}, Lcom/android/internal/content/FileSystemProvider;->buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 769
    .local v0, "notifyUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 770
    .local v1, "registerSelfObserver":Z
    invoke-virtual {p1}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 771
    invoke-virtual {p1}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    .line 770
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V

    .line 773
    iput-object p4, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    .line 774
    invoke-static {p1, p4, v0, p0}, Lcom/android/internal/content/FileSystemProvider;->-$$Nest$mstartObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    .line 775
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 783
    invoke-super {p0}, Landroid/database/MatrixCursor;->close()V

    .line 784
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/android/internal/content/FileSystemProvider;->-$$Nest$mstopObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    .line 785
    return-void
.end method

.method public blacklist notifyChanged()V
    .locals 1

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->onChange(Z)V

    .line 779
    return-void
.end method
