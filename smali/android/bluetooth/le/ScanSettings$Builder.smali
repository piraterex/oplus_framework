.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallbackType:I

.field private blacklist mLegacy:Z

.field private blacklist mMatchMode:I

.field private blacklist mNumOfMatchesPerFilter:I

.field private blacklist mPhy:I

.field private blacklist mReportDelayMillis:J

.field private blacklist mScanMode:I

.field private blacklist mScanResultType:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 296
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 297
    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 298
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 299
    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 300
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 301
    iput-boolean v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    .line 302
    const/16 v0, 0xff

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    return-void
.end method

.method private blacklist isValidCallbackType(I)Z
    .locals 2
    .param p1, "callbackType"    # I

    .line 345
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/ScanSettings;
    .locals 12

    .line 459
    new-instance v11, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIZILandroid/bluetooth/le/ScanSettings-IA;)V

    return-object v11
.end method

.method public whitelist setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "callbackType"    # I

    .line 336
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 340
    return-object p0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0
    .param p1, "legacy"    # Z

    .line 434
    iput-boolean p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    .line 435
    return-object p0
.end method

.method public whitelist setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "matchMode"    # I

    .line 417
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 421
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 422
    return-object p0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "numOfMatches"    # I

    .line 401
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 405
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 406
    return-object p0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0
    .param p1, "phy"    # I

    .line 451
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    .line 452
    return-object p0
.end method

.method public whitelist setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 2
    .param p1, "reportDelayMillis"    # J

    .line 384
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 387
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 388
    return-object p0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_0
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 321
    nop

    .line 325
    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanResultType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 364
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 369
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 370
    return-object p0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
