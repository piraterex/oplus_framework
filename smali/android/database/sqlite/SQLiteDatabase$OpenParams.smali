.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final greylist-max-o mIdleConnectionTimeout:J

.field private final greylist-max-o mJournalMode:Ljava/lang/String;

.field private final greylist-max-o mLookasideSlotCount:I

.field private final greylist-max-o mLookasideSlotSize:I

.field private final greylist-max-o mOpenFlags:I

.field private final greylist-max-o mSyncMode:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openFlags"    # I
    .param p2, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "lookasideSlotSize"    # I
    .param p5, "lookasideSlotCount"    # I
    .param p6, "idleConnectionTimeout"    # J
    .param p8, "journalMode"    # Ljava/lang/String;
    .param p9, "syncMode"    # Ljava/lang/String;

    .line 2733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2734
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    .line 2735
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2736
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2737
    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    .line 2738
    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    .line 2739
    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    .line 2740
    iput-object p8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    .line 2741
    iput-object p9, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    .line 2742
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .line 2783
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public whitelist getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .line 2793
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method public whitelist getIdleConnectionTimeout()J
    .locals 2

    .line 2804
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public whitelist getJournalMode()Ljava/lang/String;
    .locals 1

    .line 2813
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLookasideSlotCount()I
    .locals 1

    .line 2762
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method public whitelist getLookasideSlotSize()I
    .locals 1

    .line 2751
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method public whitelist getOpenFlags()I
    .locals 1

    .line 2772
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method public whitelist getSynchronousMode()Ljava/lang/String;
    .locals 1

    .line 2823
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1

    .line 2833
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
