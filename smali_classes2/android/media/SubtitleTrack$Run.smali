.class Landroid/media/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public greylist-max-o mEndTimeMs:J

.field public greylist-max-o mFirstCue:Landroid/media/SubtitleTrack$Cue;

.field public greylist-max-o mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public greylist-max-o mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public greylist-max-o mRunID:J

.field private greylist-max-o mStoredEndTimeMs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 625
    const-class v0, Landroid/media/SubtitleTrack;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 4

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 630
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    .line 631
    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/SubtitleTrack$Run-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Run;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o removeAtEndTimeMs()V
    .locals 4

    .line 661
    iget-object v0, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 663
    .local v0, "prev":Landroid/media/SubtitleTrack$Run;
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 664
    iget-object v3, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v3, v1, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 665
    iput-object v2, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 667
    :cond_0
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_1

    .line 668
    iput-object v0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 669
    iput-object v2, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 671
    :cond_1
    return-void
.end method

.method public greylist-max-o storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    .line 635
    .local p1, "runsByEndTime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/media/SubtitleTrack$Run;>;"
    iget-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 636
    .local v0, "ix":I
    if-ltz v0, :cond_2

    .line 637
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_1

    .line 638
    nop

    .line 639
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_0

    .line 640
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 645
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$Run;->removeAtEndTimeMs()V

    .line 649
    :cond_2
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    .line 650
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 651
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    iput-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 652
    if-eqz v1, :cond_3

    .line 653
    iput-object p0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 655
    :cond_3
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 656
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v1, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    .line 658
    :cond_4
    return-void
.end method
