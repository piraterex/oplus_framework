.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$ImmediateLogWriter;,
        Landroid/util/Log$PreloadHolder;,
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$TerribleFailure;,
        Landroid/util/Log$Level;
    }
.end annotation


# static fields
.field public static final whitelist ASSERT:I = 0x7

.field public static final whitelist DEBUG:I = 0x3

.field public static final whitelist ERROR:I = 0x6

.field public static final whitelist INFO:I = 0x4

.field public static final greylist-max-o LOG_ID_CRASH:I = 0x4

.field public static final greylist-max-o LOG_ID_EVENTS:I = 0x2

.field public static final greylist-max-o LOG_ID_MAIN:I = 0x0

.field public static final greylist-max-o LOG_ID_RADIO:I = 0x1

.field public static final greylist-max-o LOG_ID_SYSTEM:I = 0x3

.field public static final whitelist VERBOSE:I = 0x2

.field public static final whitelist WARN:I = 0x5

.field private static greylist-max-o sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogger_entry_max_payload_native()I
    .locals 1

    invoke-static {}, Landroid/util/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 368
    const-string v0, ""

    if-nez p0, :cond_0

    .line 369
    return-object v0

    .line 374
    :cond_0
    move-object v1, p0

    .line 375
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_2

    .line 376
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 377
    return-object v0

    .line 379
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 382
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 383
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 384
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 385
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 386
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static native whitelist isLoggable(Ljava/lang/String;I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist logToRadioBuffer(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 428
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native greylist-max-o logger_entry_max_payload_native()I
.end method

.method public static whitelist p(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 398
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native greylist println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static greylist-max-o printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "bufID"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 445
    new-instance v0, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 450
    .local v0, "logWriter":Landroid/util/Log$ImmediateLogWriter;
    sget v1, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v1, v1, -0x2

    .line 452
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x20

    .line 455
    .local v1, "bufferSize":I
    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 457
    new-instance v2, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 459
    .local v2, "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    invoke-virtual {v2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 461
    if-eqz p4, :cond_4

    .line 464
    move-object v3, p4

    .line 465
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_3

    .line 466
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1

    .line 467
    goto :goto_2

    .line 469
    :cond_1
    instance-of v4, v3, Landroid/os/DeadSystemException;

    if-eqz v4, :cond_2

    .line 470
    const-string v4, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 472
    goto :goto_2

    .line 474
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1

    .line 476
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 477
    invoke-virtual {p4, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 481
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 483
    invoke-virtual {v0}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result v3

    return v3
.end method

.method public static greylist-max-o setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .locals 2
    .param p0, "handler"    # Landroid/util/Log$TerribleFailureHandler;

    .line 351
    if-eqz p0, :cond_0

    .line 354
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 355
    .local v0, "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 356
    return-object v0

    .line 352
    .end local v0    # "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, ""

    invoke-static {v0, v1, p0, v2, p1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static greylist wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .locals 3
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    .line 328
    new-instance v0, Landroid/util/Log$TerribleFailure;

    invoke-direct {v0, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    if-eqz p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    const/4 v2, 0x6

    invoke-static {p0, v2, p1, p2, v1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 333
    .local v1, "bytes":I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p1, v0, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 334
    return v1
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 322
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 311
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method static greylist-max-o wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    .line 338
    new-instance v0, Landroid/util/Log$TerribleFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    sget-object v1, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v1, p1, v0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 340
    return-void
.end method

.method public static greylist-max-o wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method
