.class Landroid/graphics/HardwareRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    }
.end annotation


# static fields
.field private static final blacklist INTERNAL_DATASPACE_DISPLAY_P3:I = 0x88a0000

.field private static final blacklist INTERNAL_DATASPACE_SCRGB:I = 0x18810000

.field private static final blacklist INTERNAL_DATASPACE_SRGB:I = 0x8810000

.field static blacklist sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayInitialized:Z

.field private blacklist mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private blacklist mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private blacklist mInitialized:Z

.field private blacklist mIsolated:Z

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrotateBuffer(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1207
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1234
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1236
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    .line 1240
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1248
    return-void
.end method

.method private blacklist initDisplayInfo()V
    .locals 13

    .line 1307
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 1308
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1309
    iput-boolean v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1310
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1314
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const-string v2, "HardwareRenderer"

    if-nez v0, :cond_2

    .line 1315
    const-string v1, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1319
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 1320
    .local v3, "display":Landroid/view/Display;
    if-nez v3, :cond_3

    .line 1321
    const-string v1, "Failed to find default display for display-based configuration"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1325
    :cond_3
    nop

    .line 1326
    invoke-virtual {v3}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Landroid/graphics/HardwareRenderer$ProcessInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/graphics/HardwareRenderer$ProcessInitializer$$ExternalSyntheticLambda0;-><init>()V

    .line 1327
    invoke-virtual {v2, v4}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v4, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->SRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1329
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1335
    .local v2, "wideColorDataspace":Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    invoke-virtual {v3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v4

    .line 1336
    .local v4, "activeMode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    .line 1337
    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v7

    invoke-static {v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->-$$Nest$fgetmNativeDataspace(Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)I

    move-result v8

    .line 1338
    invoke-virtual {v3}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v9

    invoke-virtual {v3}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v11

    .line 1336
    invoke-static/range {v5 .. v12}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJ)V

    .line 1340
    iput-boolean v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1341
    return-void
.end method

.method private blacklist initGraphicsStats()V
    .locals 3

    .line 1283
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1286
    :cond_0
    :try_start_0
    const-string v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1287
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    return-void

    .line 1288
    :cond_1
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 1289
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 1290
    :catchall_0
    move-exception v0

    .line 1291
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private blacklist initSched(J)V
    .locals 3
    .param p1, "renderProxy"    # J

    .line 1275
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnGetRenderThreadTid(J)I

    move-result v0

    .line 1276
    .local v0, "tid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    .end local v0    # "tid":I
    goto :goto_0

    .line 1277
    :catchall_0
    move-exception v0

    .line 1278
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1280
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private blacklist requestBuffer()V
    .locals 3

    .line 1350
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1351
    invoke-interface {v0, v1, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1352
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetProcessStatsBuffer(I)V

    .line 1353
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1354
    :catchall_0
    move-exception v0

    .line 1355
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private blacklist rotateBuffer()V
    .locals 0

    .line 1344
    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnRotateProcessStatsBuffer()V

    .line 1345
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V

    .line 1346
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist init(J)V
    .locals 1
    .param p1, "renderProxy"    # J

    monitor-enter p0

    .line 1266
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1267
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1269
    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initSched(J)V

    .line 1270
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    monitor-exit p0

    return-void

    .line 1265
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "renderProxy":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist initUsingContext()V
    .locals 1

    monitor-enter p0

    .line 1296
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1298
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initDisplayInfo()V

    .line 1300
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsHighEndGfx(Z)V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    monitor-exit p0

    return-void

    .line 1295
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1261
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1262
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    monitor-exit p0

    return-void

    .line 1260
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setIsolated(Z)V
    .locals 1
    .param p1, "isolated"    # Z

    monitor-enter p0

    .line 1256
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1257
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    monitor-exit p0

    return-void

    .line 1255
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "isolated":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1251
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1252
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    monitor-exit p0

    return-void

    .line 1250
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
