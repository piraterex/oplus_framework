.class public abstract Landroid/view/contentcapture/ContentCaptureSession;
.super Ljava/lang/Object;
.source "ContentCaptureSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureSession$FlushReason;
    }
.end annotation


# static fields
.field public static final blacklist FLUSH_REASON_FULL:I = 0x1

.field public static final blacklist FLUSH_REASON_IDLE_TIMEOUT:I = 0x5

.field public static final blacklist FLUSH_REASON_SESSION_CONNECTED:I = 0x7

.field public static final blacklist FLUSH_REASON_SESSION_FINISHED:I = 0x4

.field public static final blacklist FLUSH_REASON_SESSION_STARTED:I = 0x3

.field public static final blacklist FLUSH_REASON_TEXT_CHANGE_TIMEOUT:I = 0x6

.field public static final blacklist FLUSH_REASON_VIEW_ROOT_ENTERED:I = 0x2

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field private static final blacklist INITIAL_CHILDREN_CAPACITY:I = 0x5

.field public static final blacklist STATE_ACTIVE:I = 0x2

.field public static final blacklist STATE_BY_APP:I = 0x40

.field public static final blacklist STATE_DISABLED:I = 0x4

.field public static final blacklist STATE_DUPLICATED_ID:I = 0x8

.field public static final blacklist STATE_FLAG_SECURE:I = 0x20

.field public static final blacklist STATE_INTERNAL_ERROR:I = 0x100

.field public static final blacklist STATE_NOT_WHITELISTED:I = 0x200

.field public static final blacklist STATE_NO_RESPONSE:I = 0x80

.field public static final blacklist STATE_NO_SERVICE:I = 0x10

.field public static final blacklist STATE_SERVICE_DIED:I = 0x400

.field public static final blacklist STATE_SERVICE_RESURRECTED:I = 0x1000

.field public static final blacklist STATE_SERVICE_UPDATING:I = 0x800

.field public static final blacklist STATE_WAITING_FOR_SERVER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNKNOWN_STATE:I


# instance fields
.field private blacklist mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private blacklist mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

.field private blacklist mDestroyed:Z

.field protected final blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    const-class v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    .line 222
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureSession;->getRandomSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(I)V

    .line 223
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    .line 228
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 229
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    .line 230
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1
    .param p1, "initialContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 234
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    .line 235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureContext;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 236
    return-void
.end method

.method public static blacklist getFlushReasonAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 602
    packed-switch p0, :pswitch_data_0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 616
    :pswitch_0
    const-string v0, "CONNECTED"

    return-object v0

    .line 614
    :pswitch_1
    const-string v0, "TEXT_CHANGE"

    return-object v0

    .line 612
    :pswitch_2
    const-string v0, "IDLE"

    return-object v0

    .line 610
    :pswitch_3
    const-string v0, "FINISHED"

    return-object v0

    .line 608
    :pswitch_4
    const-string v0, "STARTED"

    return-object v0

    .line 606
    :pswitch_5
    const-string v0, "VIEW_ROOT"

    return-object v0

    .line 604
    :pswitch_6
    const-string v0, "FULL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getRandomSessionId()I
    .locals 1

    .line 625
    :goto_0
    sget-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 626
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 627
    return v0

    .line 626
    :cond_0
    goto :goto_0
.end method

.method protected static blacklist getStateAsString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    .line 596
    :cond_0
    const-class v1, Landroid/view/contentcapture/ContentCaptureSession;

    int-to-long v2, p0

    const-string v4, "STATE_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 355
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    .line 356
    return-void
.end method

.method public final whitelist createContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 4
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 268
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentCaptureSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    .line 276
    :cond_1
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v1

    .line 278
    return-object v0

    .line 277
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final whitelist destroy()V
    .locals 8

    .line 320
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 322
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): already destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    monitor-exit v0

    return-void

    .line 325
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    .line 329
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_2

    .line 330
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 335
    .local v1, "numberChildren":I
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 337
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .local v3, "child":Landroid/view/contentcapture/ContentCaptureSession;
    :try_start_1
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    goto :goto_1

    .line 340
    :catch_0
    move-exception v4

    .line 341
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception destroying child session #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v3    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "numberChildren":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->onDestroy()V

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 570
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "destroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 575
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "prefix2":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 578
    .local v2, "numberChildren":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "number children: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 579
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 580
    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/contentcapture/ContentCaptureSession;

    .line 581
    .local v4, "child":Landroid/view/contentcapture/ContentCaptureSession;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 579
    .end local v4    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v2    # "numberChildren":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract blacklist flush(I)V
.end method

.method public final whitelist getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public final whitelist getContentCaptureSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .locals 2

    .line 247
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 256
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return v0
.end method

.method abstract blacklist getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
.end method

.method abstract blacklist internalNotifySessionPaused()V
.end method

.method abstract blacklist internalNotifySessionResumed()V
.end method

.method abstract blacklist internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
.end method

.method abstract blacklist internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
.end method

.method abstract blacklist internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
.end method

.method abstract blacklist internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
.end method

.method public abstract blacklist internalNotifyViewTreeEvent(Z)V
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 2

    .line 562
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;
    .locals 3
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J

    .line 540
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hostId cannot be virtual: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method abstract blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method public final whitelist newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 524
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final whitelist newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;
    .locals 2
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J

    .line 558
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method public final whitelist notifySessionPaused()V
    .locals 1

    .line 471
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    .line 474
    return-void
.end method

.method public final whitelist notifySessionResumed()V
    .locals 1

    .line 460
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    .line 463
    return-void
.end method

.method public final whitelist notifyViewAppeared(Landroid/view/ViewStructure;)V
    .locals 3
    .param p1, "node"    # Landroid/view/ViewStructure;

    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    instance-of v0, p1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v0, :cond_1

    .line 375
    move-object v0, p1

    check-cast v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 376
    return-void

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 389
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    .line 393
    return-void
.end method

.method public final whitelist notifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .locals 1
    .param p1, "viewInsets"    # Landroid/graphics/Insets;

    .line 444
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V

    .line 449
    return-void
.end method

.method public final whitelist notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 430
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public final whitelist notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualIds"    # [J

    .line 412
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "hostId cannot be virtual: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string/jumbo v1, "virtual ids cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    array-length v0, p2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-wide v1, p2, v3

    .line 419
    .local v1, "id":J
    new-instance v4, Landroid/view/autofill/AutofillId;

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v4, p1, v1, v2, v5}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-virtual {p0, v4}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    .line 418
    .end local v1    # "id":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method

.method abstract blacklist onDestroy()V
.end method

.method public final whitelist setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 294
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 297
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 298
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 589
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
.end method
