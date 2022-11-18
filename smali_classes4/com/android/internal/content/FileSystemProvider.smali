.class public abstract Lcom/android/internal/content/FileSystemProvider;
.super Landroid/provider/DocumentsProvider;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;,
        Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    }
.end annotation


# static fields
.field private static final blacklist LOG_INOTIFY:Z = false

.field private static final blacklist PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

.field protected static final blacklist SUPPORTED_QUERY_ARGS:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "FileSystemProvider"


# instance fields
.field private blacklist mDefaultProjection:[Ljava/lang/String;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$M1oOEtAGFq8zDab8jYrQAK-GecQ(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldShow(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider;->stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 84
    const-string v0, "android:query-arg-display-name"

    const-string v1, "android:query-arg-file-size-over"

    const-string v2, "android:query-arg-last-modified-after"

    const-string v3, "android:query-arg-mime-types"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->SUPPORTED_QUERY_ARGS:Ljava/lang/String;

    .line 665
    const-string v0, "(?i)^/storage/[^/]+/(?:[0-9]+/)?Android/(?:data|obb|sandbox)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 490
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v0, "vnd.android.document/directory"

    return-object v0

    .line 493
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 494
    .local v0, "lastDot":I
    if-ltz v0, :cond_1

    .line 495
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 498
    return-object v2

    .line 501
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1
    const-string v1, "application/octet-stream"

    return-object v1
.end method

.method private static varargs blacklist joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 91
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$queryChildDocumentsShowAll$0(Ljava/io/File;)Z
    .locals 1
    .param p0, "File"    # Ljava/io/File;

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "queryArgs"    # Landroid/os/Bundle;

    .line 561
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 562
    return v0

    .line 566
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 568
    .local v8, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    const-string/jumbo v0, "vnd.android.document/directory"

    .local v0, "fileMimeType":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "fileMimeType":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 572
    .local v1, "dotPos":I
    if-gez v1, :cond_2

    .line 573
    return v0

    .line 575
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 578
    .end local v1    # "dotPos":I
    .local v0, "fileMimeType":Ljava/lang/String;
    :goto_0
    nop

    .line 579
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 578
    move-object v1, p2

    move-object v2, v8

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Landroid/provider/DocumentsContract;->matchSearchQueryArguments(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v1

    return v1
.end method

.method private blacklist openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 533
    .local v0, "uri":Landroid/net/Uri;
    const/high16 v1, 0x10000000

    const-string v2, "FileSystemProvider"

    if-nez v0, :cond_0

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve media store URI for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 541
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v3, "opts":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "android.provider.extra.MEDIA_CAPABILITIES_UID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 544
    nop

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "*/*"

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 546
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v4, :cond_1

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open with media_capabilities uid for URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 551
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private blacklist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;
    .locals 7
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 414
    .local p4, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/io/File;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 415
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 416
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;-><init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 418
    .local v1, "result":Landroid/database/MatrixCursor;
    invoke-interface {p4, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "FileSystemProvider"

    if-nez v2, :cond_0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permission to access parentDocumentId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v1

    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 425
    .local v5, "file":Ljava/io/File;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 426
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v5}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 424
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parentDocumentId \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' is not Directory"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    return-object v1
.end method

.method private blacklist resolveProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;

    .line 694
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private blacklist scanFile(Ljava/io/File;)V
    .locals 2
    .param p1, "visibleFile"    # Ljava/io/File;

    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    return-void
.end method

.method private blacklist shouldShow(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldHide(Ljava/io/File;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "notifyUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 698
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 700
    .local v1, "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    if-nez v1, :cond_0

    .line 701
    new-instance v2, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p1, v3, p2}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v1, v2

    .line 703
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->startWatching()V

    .line 704
    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_0
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    nop

    .end local v1    # "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cursor"    # Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 713
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 715
    .local v1, "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 717
    :cond_0
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 718
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->stopWatching()V

    .line 724
    .end local v1    # "observer":Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    :cond_1
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 334
    if-eqz p1, :cond_1

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, ".nomedia"

    .line 339
    .local v1, "noMedia":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 345
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "noMedia":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract blacklist buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public whitelist createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 248
    const-string v0, "Failed to touch "

    invoke-static {p3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 251
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    invoke-static {v1, p2, p3}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 257
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v3, "vnd.android.document/directory"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "childId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v0    # "childId":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mkdir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "childId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    move-object v0, v3

    .line 274
    .end local v3    # "childId":Ljava/lang/String;
    .restart local v0    # "childId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 275
    return-object v0

    .line 266
    .end local v0    # "childId":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/content/FileSystemProvider;
    .end local p1    # "docId":Ljava/lang/String;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "displayName":Ljava/lang/String;
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .restart local v1    # "parent":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/content/FileSystemProvider;
    .restart local p1    # "docId":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 271
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parent document isn\'t a directory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deleteDocument(Ljava/lang/String;)V
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 350
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 352
    .local v1, "visibleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 353
    .local v2, "isDirectory":Z
    if-eqz v2, :cond_0

    .line 354
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 365
    return-void
.end method

.method protected final blacklist findDocumentPath(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 3
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "doc"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 236
    .local v0, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_0

    .line 242
    :cond_0
    return-object v0

    .line 232
    .end local v0    # "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "An error occurred retrieving the metadata"

    const-string v4, "FileSystemProvider"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Landroid/system/Int64Ref;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    .line 160
    .local v2, "treeCount":Landroid/system/Int64Ref;
    new-instance v8, Landroid/system/Int64Ref;

    invoke-direct {v8, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    move-object v6, v8

    .line 162
    .local v6, "treeSize":Landroid/system/Int64Ref;
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 163
    .local v7, "path":Ljava/nio/file/Path;
    new-instance v8, Lcom/android/internal/content/FileSystemProvider$1;

    invoke-direct {v8, p0, v2, v6}, Lcom/android/internal/content/FileSystemProvider$1;-><init>(Lcom/android/internal/content/FileSystemProvider;Landroid/system/Int64Ref;Landroid/system/Int64Ref;)V

    invoke-static {v7, v8}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 191
    .end local v7    # "path":Ljava/nio/file/Path;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v3, "res":Landroid/os/Bundle;
    iget-wide v4, v2, Landroid/system/Int64Ref;->value:J

    const-string v7, "android:metadataTreeCount"

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    iget-wide v4, v6, Landroid/system/Int64Ref;->value:J

    const-string v7, "android:metadataTreeSize"

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    return-object v3

    .line 186
    .end local v3    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 187
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v4, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v5

    .line 197
    .end local v2    # "treeCount":Landroid/system/Int64Ref;
    .end local v6    # "treeSize":Landroid/system/Int64Ref;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    const-string v2, "Can\'t stream non-regular file. Returning empty metadata."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v5

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const-string v2, "Can\'t stream non-readable file. Returning empty metadata."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v5

    .line 205
    :cond_2
    invoke-static {v1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Returning empty metadata."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v5

    .line 210
    :cond_3
    const/4 v2, 0x0

    .line 212
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v6, "metadata":Landroid/os/Bundle;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 214
    invoke-static {v6, v2, v1, v5}, Landroid/provider/MetadataReader;->getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    nop

    .line 220
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 215
    return-object v6

    .line 220
    .end local v6    # "metadata":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 216
    :catch_1
    move-exception v6

    .line 217
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v4, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    nop

    .line 220
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 218
    return-object v5

    .line 220
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 221
    throw v3

    .line 154
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_4
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the file for documentId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected blacklist includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 11
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "docId"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "columns":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 601
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    if-nez p2, :cond_0

    .line 602
    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 607
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "document_id"

    invoke-virtual {v1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 609
    const-string/jumbo v3, "mime_type"

    invoke-virtual {v1, v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 611
    const-string v3, "flags"

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 612
    .local v3, "flagIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 613
    const/4 v5, 0x0

    .line 614
    .local v5, "flags":I
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 615
    const-string/jumbo v6, "vnd.android.document/directory"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 616
    or-int/lit8 v5, v5, 0x8

    .line 617
    or-int/lit8 v5, v5, 0x4

    .line 618
    or-int/lit8 v5, v5, 0x40

    .line 619
    or-int/lit16 v5, v5, 0x100

    .line 621
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->shouldBlockFromTree(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 622
    const v6, 0x8000

    or-int/2addr v5, v6

    goto :goto_1

    .line 626
    :cond_1
    or-int/lit8 v5, v5, 0x2

    .line 627
    or-int/lit8 v5, v5, 0x4

    .line 628
    or-int/lit8 v5, v5, 0x40

    .line 629
    or-int/lit16 v5, v5, 0x100

    .line 633
    :cond_2
    :goto_1
    const-string v6, "image/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 634
    or-int/lit8 v5, v5, 0x1

    .line 637
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->typeSupportsMetadata(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 638
    or-int/lit16 v5, v5, 0x4000

    .line 640
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 643
    .end local v5    # "flags":I
    :cond_5
    const-string v5, "_display_name"

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 644
    .local v5, "displayNameIndex":I
    if-eq v5, v4, :cond_6

    .line 645
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 648
    :cond_6
    const-string/jumbo v6, "last_modified"

    invoke-static {v0, v6}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 649
    .local v6, "lastModifiedIndex":I
    if-eq v6, v4, :cond_7

    .line 650
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 652
    .local v7, "lastModified":J
    const-wide v9, 0x757b12c00L

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    .line 653
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 656
    .end local v7    # "lastModified":J
    :cond_7
    const-string v7, "_size"

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 657
    .local v7, "sizeIndex":I
    if-eq v7, v4, :cond_8

    .line 658
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 662
    :cond_8
    return-object v1
.end method

.method public whitelist isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parentDocId"    # Ljava/lang/String;
    .param p2, "docId"    # Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 141
    .local v1, "doc":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 142
    .end local v0    # "parent":Ljava/io/File;
    .end local v1    # "doc":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic blacklist lambda$openDocument$1$com-android-internal-content-FileSystemProvider(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V
    .locals 0
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "visibleFile"    # Ljava/io/File;
    .param p3, "e"    # Ljava/io/IOException;

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->scanFile(Ljava/io/File;)V

    .line 524
    return-void
.end method

.method public whitelist moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 313
    .local v0, "before":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v1, "after":Ljava/io/File;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 316
    .local v3, "visibleFileBefore":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-virtual {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "docId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, v4}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 330
    return-object v4

    .line 320
    .end local v4    # "docId":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected blacklist onCreate([Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultProjection"    # [Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    .line 134
    return-void
.end method

.method public whitelist onCreate()Z
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass should override this and call onCreate(defaultDocumentProjection)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist onDocIdChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "docId"    # Ljava/lang/String;

    .line 114
    return-void
.end method

.method protected blacklist onDocIdDeleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "docId"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public whitelist openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 510
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 512
    .local v1, "visibleFile":Ljava/io/File;
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v2

    .line 513
    .local v2, "pfdMode":I
    if-nez v1, :cond_0

    .line 514
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3

    .line 515
    :cond_0
    const/high16 v3, 0x10000000

    if-ne v2, v3, :cond_1

    .line 516
    invoke-direct {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3

    .line 520
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v0, v2, v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 525
    :catch_0
    move-exception v3

    .line 526
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open for writing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 593
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/provider/DocumentsContract;->openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 408
    new-instance v0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/FileSystemProvider;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist queryChildDocumentsShowAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 370
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 371
    .local v0, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 372
    return-object v0
.end method

.method protected final blacklist querySearchDocuments(Ljava/io/File;[Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 7
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 456
    .local p3, "exclusion":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 457
    .local v0, "result":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 458
    .local v1, "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 459
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_3

    .line 460
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 461
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->shouldHide(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 465
    .local v6, "child":Ljava/io/File;
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v6    # "child":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 468
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2, p4}, Lcom/android/internal/content/FileSystemProvider;->matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 472
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 474
    :cond_3
    invoke-static {p4}, Landroid/provider/DocumentsContract;->getHandledQueryArguments(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "handledQueryArgs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_4

    .line 476
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "android.content.extra.HONORED_ARGS"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 480
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_4
    return-object v0
.end method

.method public whitelist renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 282
    invoke-static {p2}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, "before":Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 286
    .local v2, "beforeVisibleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 287
    .local v3, "after":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "afterDocId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v4}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 298
    .local v1, "afterVisibleFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 301
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    return-object v4

    .line 304
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 288
    .end local v1    # "afterVisibleFile":Ljava/io/File;
    .end local v4    # "afterDocId":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist shouldBlockFromTree(Ljava/lang/String;)Z
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist shouldHide(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 673
    sget-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_HIDDEN_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method protected blacklist typeSupportsMetadata(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 685
    invoke-static {p1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 685
    :goto_1
    return v0
.end method
