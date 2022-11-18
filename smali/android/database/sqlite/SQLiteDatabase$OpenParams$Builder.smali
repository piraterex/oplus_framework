.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private greylist-max-o mIdleConnectionTimeout:J

.field private greylist-max-o mJournalMode:Ljava/lang/String;

.field private greylist-max-o mLookasideSlotCount:I

.field private greylist-max-o mLookasideSlotSize:I

.field private greylist-max-o mOpenFlags:I

.field private greylist-max-o mSyncMode:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 2849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2840
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 2841
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 2842
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 2850
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .locals 2
    .param p1, "params"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 2852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2840
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 2841
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 2842
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 2853
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 2854
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 2855
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 2856
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2857
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2858
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 2859
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 2860
    return-void
.end method


# virtual methods
.method public whitelist addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1
    .param p1, "openFlags"    # I

    .line 2923
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 2924
    return-object p0
.end method

.method public whitelist build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .locals 12

    .line 3041
    new-instance v11, Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iget v5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams-IA;)V

    return-object v11
.end method

.method public greylist-max-o isWriteAheadLoggingEnabled()Z
    .locals 2

    .line 2896
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 2
    .param p1, "openFlags"    # I

    .line 2935
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 2936
    return-object p0
.end method

.method public whitelist setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2961
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2962
    return-object p0
.end method

.method public whitelist setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 2971
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2972
    return-object p0
.end method

.method public whitelist setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 2
    .param p1, "idleConnectionTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3002
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle connection timeout cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3004
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3005
    return-object p0
.end method

.method public whitelist setJournalMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "journalMode"    # Ljava/lang/String;

    .line 3017
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3018
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 3019
    return-object p0
.end method

.method public whitelist setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 5
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 2878
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "lookasideSlotCount cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2880
    if-ltz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "lookasideSlotSize cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2882
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 2882
    const-string v0, "Invalid configuration: %d, %d"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2886
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 2887
    iput p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 2888
    return-object p0
.end method

.method public whitelist setOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "openFlags"    # I

    .line 2911
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 2912
    return-object p0
.end method

.method public whitelist setSynchronousMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "syncMode"    # Ljava/lang/String;

    .line 3030
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 3032
    return-object p0
.end method

.method public greylist-max-o setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2945
    const/high16 v0, 0x20000000

    if-eqz p1, :cond_0

    .line 2946
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_0

    .line 2948
    :cond_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 2950
    :goto_0
    return-void
.end method
