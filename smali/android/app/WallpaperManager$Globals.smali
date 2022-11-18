.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private greylist-max-o mCachedWallpaper:Landroid/graphics/Bitmap;

.field private greylist-max-o mCachedWallpaperUserId:I

.field private greylist-max-o mColorCallbackRegistered:Z

.field private final greylist-max-o mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private blacklist mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private blacklist mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mMainLooperHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/app/IWallpaperManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 401
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 387
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 402
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 403
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 404
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 405
    return-void
.end method

.method private blacklist getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "hardware"    # Z
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 693
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v1

    .line 699
    :cond_0
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 700
    .local v8, "params":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 701
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 700
    move-object v6, p0

    move v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 704
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_2

    .line 705
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 707
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 709
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "data":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 710
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v4

    .line 713
    .local v4, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v6, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v6, p3, p4}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v4, v6}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 723
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 713
    return-object v6

    .line 705
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local v5    # "data":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "params":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userId":I
    .end local p3    # "hardware":Z
    .end local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 723
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "params":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "userId":I
    .restart local p3    # "hardware":Z
    .restart local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t decode file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 730
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v8    # "params":Landroid/os/Bundle;
    :cond_2
    nop

    .line 731
    return-object v1

    .line 728
    :catch_1
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 735
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    .line 736
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 738
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 739
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 739
    return-object v1

    .line 743
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t decode stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    nop

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 744
    goto :goto_1

    .line 743
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 744
    throw v1

    .line 746
    :cond_0
    :goto_1
    return-object v1
.end method

.method static synthetic blacklist lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 715
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 717
    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 720
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .locals 1
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 500
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .locals 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 444
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 445
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 446
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 447
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_0

    .line 448
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 449
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 455
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for local color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 430
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method greylist-max-o forgetLoadedWallpaper()V
    .locals 2

    .line 684
    monitor-enter p0

    .line 685
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 686
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 687
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 688
    monitor-exit p0

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 544
    sget-object v0, Landroid/app/WallpaperManager;->sWallpaperManagerExt:Landroid/app/IWallpaperManagerExt;

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManagerExt;->isNotAvailableWhichWithSinglePhysicalDisplayFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 552
    :catch_0
    move-exception v0

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request colors for exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$onWallpaperColorsChanged$1$android-app-WallpaperManager$Globals(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .locals 2
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 526
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 528
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    if-eqz v1, :cond_0

    .line 530
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 532
    :cond_0
    return-void

    .line 528
    .end local v1    # "stillExists":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o onWallpaperChanged()V
    .locals 0

    .line 413
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 414
    return-void
.end method

.method public greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 10
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 518
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 519
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 520
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    move-object v8, v2

    goto :goto_1

    .line 519
    :cond_0
    move-object v8, v2

    .line 522
    .end local v2    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :goto_1
    new-instance v9, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    .end local v8    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 534
    :cond_1
    monitor-exit p0

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 578
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 580
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 581
    return-object v1

    .line 585
    :cond_0
    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-enter p0

    .line 588
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v2, p4, :cond_2

    .line 589
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 592
    :cond_2
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 594
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 596
    :try_start_2
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 598
    .local v0, "currentWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 599
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 600
    :try_start_3
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 601
    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 602
    monitor-exit p0

    return-object v0

    .line 603
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 598
    .end local v0    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :cond_3
    goto :goto_1

    .line 607
    :catch_1
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_4

    .line 609
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 613
    :cond_4
    throw v0

    .line 605
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of memory loading the current wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    nop

    .line 616
    :goto_2
    if-eqz p2, :cond_7

    .line 617
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 618
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    :cond_5
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    monitor-enter p0

    .line 621
    :try_start_5
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 622
    monitor-exit p0

    .line 624
    :cond_6
    return-object v0

    .line 622
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 626
    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :cond_7
    return-object v1

    .line 594
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 563
    const-wide/16 v0, 0x8

    :try_start_0
    const-string v2, "WallpaperManager.Globals.peekWallpaperBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 565
    return-object v2

    .line 570
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 571
    throw v2
.end method

.method public blacklist peekWallpaperDimensions(Landroid/content/Context;ZI)Landroid/graphics/Rect;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "userId"    # I

    .line 630
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1

    .line 632
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 637
    :cond_0
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 641
    .local v0, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 642
    const/4 v1, 0x0

    .line 644
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 645
    .local v10, "params":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    .line 645
    move-object v8, p0

    move v11, p3

    invoke-interface/range {v5 .. v11}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v1, v5

    .line 648
    if-eqz v1, :cond_2

    .line 649
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 650
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 651
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v2, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 652
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 657
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "params":Landroid/os/Bundle;
    :cond_2
    if-eqz v1, :cond_3

    .line 659
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    :goto_1
    goto :goto_2

    .line 660
    :catch_1
    move-exception v5

    goto :goto_1

    .line 657
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 654
    :catch_2
    move-exception v5

    .line 655
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "peek wallpaper dimensions failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    nop

    .end local v5    # "ex":Landroid/os/RemoteException;
    if-eqz v1, :cond_3

    .line 659
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 664
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 666
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    .line 668
    invoke-static {p1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1

    .line 669
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_5

    .line 671
    :try_start_6
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 672
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 673
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 674
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v4, v4, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v2

    .line 676
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    goto :goto_3

    .line 676
    :catchall_1
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    throw v2

    .line 680
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_5
    :goto_3
    return-object v0

    .line 657
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_4
    if-eqz v1, :cond_6

    .line 659
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 661
    goto :goto_5

    .line 660
    :catch_3
    move-exception v3

    .line 663
    :cond_6
    :goto_5
    nop

    .end local v0    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "userId":I
    :try_start_8
    throw v2

    .line 664
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "userId":I
    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .locals 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 469
    .local v0, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 472
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 473
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 474
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_1
    goto :goto_0

    .line 477
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 479
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :cond_3
    goto :goto_1

    .line 483
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t unregister for local color updates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    .line 488
    return-void

    .line 470
    .restart local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 487
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 502
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
